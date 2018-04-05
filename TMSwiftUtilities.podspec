Pod::Spec.new do |s|
  s.name             = 'TMSwiftUtilities'
  s.version          = '0.1.0-alpha'
  s.summary          = 'Frequently used functions in Swift.'
  s.homepage         = 'https://github.com/417-72KI/SwiftUtilities'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '417.72KI' => '417.72ki@gmail.com' }
  s.source           = { :git => 'https://github.com/417-72KI/SwiftUtilities.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/417_72ki'

  s.ios.deployment_target = '9.0'
  s.source_files = 'Sources/TMSwiftUtilities/**/*'
  
  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
