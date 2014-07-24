# LatoFont

[![Twitter](https://img.shields.io/badge/contact-@MichalKonturek-blue.svg?style=flat)](http://twitter.com/michalkonturek)
[![License](https://img.shields.io/badge/license-MIT-blue.svg?style=flat)](https://github.com/michalkonturek/LatoFont/blob/master/LICENSE)
[![CocoaPods](https://img.shields.io/cocoapods/v/LatoFont.svg?style=flat)](https://github.com/michalkonturek/LatoFont)

Brings [Lato][LATO] font to iOS.


## License

Source code of this project is available under the standard MIT license. Please see [the license file][LICENSE].

[LICENSE]:https://github.com/michalkonturek/GraphKit/blob/master/LICENSE]

[Lukasz Dziedzic][LD] holds copyright to the [Lato][LATO] font which is licensed under the [SIL Open Font License][OFL].


[LD]:https://plus.google.com/106163021290874968147/about
[OFL]:http://scripts.sil.org/OFL
[LATO]:https://www.google.com/fonts/specimen/Lato

## Usage

```objc
#import <LatoFont/UIFont+Lato.h>

@implementation ExampleVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGFloat size = 17.0;
    
    self.hairlineLabel.font = [UIFont latoHairlineFontOfSize:size];
    self.hairlineItalicLabel.font = [UIFont latoHairlineItalicFontOfSize:size];
    
    self.lightLabel.font = [UIFont latoLightFontOfSize:size];
    self.lightItalicLabel.font = [UIFont latoLightItalicFontOfSize:size];
    
    self.regularLabel.font = [UIFont latoFontOfSize:size];
    self.italicLabel.font = [UIFont latoItalicFontOfSize:size];
    
    self.boldLabel.font = [UIFont latoBoldFontOfSize:size];
    self.boldItalicLabel.font = [UIFont latoBoldItalicFontOfSize:size];
    
    self.blackLabel.font = [UIFont latoBlackFontOfSize:size];
    self.blackItalicLabel.font = [UIFont latoBlackItalicFontOfSize:size];
}

@end
```
