
Pod::Spec.new do |s|
  s.name             = 'LatoFont'
  s.version          = '2.0.0'
  s.summary          = 'Brings Lato font to iOS.'

  s.description      = <<-DESC
  Lato Font is a full suite of , created and maintained by Lukasz Dziedzic. 
  It programmatically loads all styles of that font into your iOS app.
                       DESC

  s.homepage         = 'https://github.com/michalkonturek/LatoFont'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Michal Konturek' => 'michal.konturek@gmail.com' }
  s.source           = { :git => 'https://github.com/michalkonturek/LatoFont.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/michalkonturek'

  s.ios.deployment_target = '8.0'

  s.source_files = 'LatoFont/Classes/**/*'
  
  s.resource_bundles = {
    'LatoFont' => ['LatoFont/Assets/*.ttf']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit', 'CoreText'
end
