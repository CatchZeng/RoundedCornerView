#
# Be sure to run `pod lib lint RoundedCornerView.podspec' to ensure this is a
# valid spec before submitting.
#

Pod::Spec.new do |s|
  s.name             = 'RoundedCornerView'
  s.version          = '0.1.0'
  s.summary          = 'Simple rounded corner view.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
    Simple rounded corner view.
                       DESC

  s.homepage         = 'https://github.com/CatchZeng/RoundedCornerView'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'CatchZeng' => '891793848@qq.com' }
  s.source           = { :git => 'https://github.com/CatchZeng/RoundedCornerView.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'RoundedCornerView/Classes/**/*'
  
  # s.resource_bundles = {
  #   'RoundedCornerView' => ['RoundedCornerView/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
