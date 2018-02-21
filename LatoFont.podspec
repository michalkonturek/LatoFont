
Pod::Spec.new do |s|
  s.name             = 'LatoFont'
  s.version          = '3.0.1'
  s.summary          = 'Brings Lato font to iOS.'
  s.homepage         = 'https://github.com/michalkonturek/LatoFont'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Michal Konturek' => 'michal.konturek@gmail.com' }
  s.source           = { :git => 'https://github.com/michalkonturek/LatoFont.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/michalkonturek'
  s.ios.deployment_target = '8.0'
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.0' }
  s.source_files = 'LatoFont/Classes/**/*'
  s.resource_bundles = {
    'LatoFont' => ['LatoFont/Assets/*.ttf']
  }
  s.frameworks = 'UIKit', 'CoreText'
end
