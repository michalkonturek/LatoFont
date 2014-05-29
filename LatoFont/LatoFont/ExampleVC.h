//
//  ExampleVC.h
//  LatoFont
//
//  Created by Michal Konturek on 29/05/2014.
//  Copyright (c) 2014 Michal Konturek. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ExampleVC : UIViewController

@property (nonatomic, weak) IBOutlet UILabel *hairlineLabel;
@property (nonatomic, weak) IBOutlet UILabel *hairlineItalicLabel;

@property (nonatomic, weak) IBOutlet UILabel *lightLabel;
@property (nonatomic, weak) IBOutlet UILabel *lightItalicLabel;

@property (nonatomic, weak) IBOutlet UILabel *regularLabel;
@property (nonatomic, weak) IBOutlet UILabel *italicLabel;

@property (nonatomic, weak) IBOutlet UILabel *boldLabel;
@property (nonatomic, weak) IBOutlet UILabel *boldItalicLabel;

@property (nonatomic, weak) IBOutlet UILabel *blackLabel;
@property (nonatomic, weak) IBOutlet UILabel *blackItalicLabel;

@end
