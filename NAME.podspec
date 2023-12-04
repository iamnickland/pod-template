Pod::Spec.new do |s|
  s.name             = '${POD_NAME}'
  s.version          = '0.1.0'
  s.summary          = 'A short description of ${POD_NAME}.'
  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/${USER_NAME}/${POD_NAME}'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '${USER_NAME}' => '${USER_EMAIL}' }
  s.source           = { :git => 'https://github.com/${USER_NAME}/${POD_NAME}.git', :tag => s.version.to_s }
  s.ios.deployment_target = '13.0'

  s.source_files = 'Sources/Classes/**/*'
  
  # s.resource_bundles = {
  #   '${POD_NAME}' => ['Sources/Assets/*.png']
  # }
  # s.public_header_files = 'Sources/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
