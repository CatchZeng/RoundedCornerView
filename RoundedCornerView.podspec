Pod::Spec.new do |s|
  s.name             = 'RoundedCornerView'
  s.version          = '0.2.0'
  s.summary          = 'Simple rounded corner view.'
  s.description      = 'Support all radius(topLeft,topRight,bottomLeft,bottomRight) and IBDesignable.'
  s.homepage         = 'https://github.com/CatchZeng/RoundedCornerView'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'CatchZeng' => '891793848@qq.com' }
  s.source           = { :git => 'https://github.com/CatchZeng/RoundedCornerView.git', :tag => s.version.to_s }
  s.social_media_url = 'https://catchzeng.com'
  s.ios.deployment_target = '8.0'
  s.source_files = 'RoundedCornerView/Classes/**/*'
end
