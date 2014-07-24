
Pod::Spec.new do |s|
  s.name         = "LatoFont"
  s.version      = "1.0.0"
  s.summary      = "Brings Lato font to iOS."
  s.homepage     = "https://github.com/michalkonturek/LatoFont"
  s.license      = 'MIT'

  s.author       = { 
    "Michal Konturek" => "michal.konturek@gmail.com" 
  }

  s.ios.deployment_target = '7.0'

  s.social_media_url = 'https://twitter.com/michalkonturek'
  s.source       = { 
    :git => "https://github.com/michalkonturek/LatoFont.git", 
    :tag => s.version.to_s
  }

  s.source_files = 'Source/*.{h,m}'
  s.resource_bundle = { 'LatoFont' => 'Source/Fonts/*.ttf' }

  s.requires_arc = true

  s.frameworks = 'CoreText', 'UIKit' 
end
