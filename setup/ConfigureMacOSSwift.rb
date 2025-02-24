module Pod

  class ConfigureMacOSSwift
    attr_reader :configurator

    def self.perform(options)
      new(options).perform
    end

    def initialize(options)
      @configurator = options.fetch(:configurator)
    end

    def perform
      keep_demo = :yes
      framework = :none
      configurator.set_test_framework "xctest", "swift", "macos-swift"

      Pod::ProjectManipulator.new({
        :configurator => @configurator,
        :xcodeproj_path => "templates/macos-swift/Example/PROJECT.xcodeproj",
        :platform => :osx,
        :remove_demo_project => (keep_demo == :no),
        :prefix => ""
      }).run

      `mv ./templates/macos-swift/* ./`

      # There has to be a single file in the Classes dir
      # or a framework won't be created
      `touch Sources/Classes/ReplaceMe.swift`

      `mv ./NAME-osx.podspec ./NAME.podspec`
    end
  end

end
