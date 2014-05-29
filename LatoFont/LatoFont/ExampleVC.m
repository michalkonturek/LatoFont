//
//  ExampleVC.m
//  LatoFont
//
//  Created by Michal Konturek on 29/05/2014.
//  Copyright (c) 2014 Michal Konturek. All rights reserved.
//

#import "ExampleVC.h"

#import "UIFont+Lato.h"

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

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
