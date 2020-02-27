//
//  ViewController.m
//  RangeSliderDemo
//
//  Created by Tom Thorpe on 31/03/2015.
//  Copyright (c) 2015 tomthorpe. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic) TTRangeSlider *rangeSliderCurrency;
@end

@implementation ViewController

- (void)logControlEvent:(TTRangeSlider *)sender {
    NSLog(@"Standard slider updated. Min Value: %.0f Max Value: %.0f", sender.selectedMinimum, sender.selectedMaximum);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    //currency range slider
    self.rangeSliderCurrency = [TTRangeSlider new];
    self.rangeSliderCurrency.backgroundColor = [UIColor redColor];
    self.rangeSliderCurrency.delegate = self;
    self.rangeSliderCurrency.frame = CGRectMake(40, 80, 40, 300);
    self.rangeSliderCurrency.isVertical = YES;
    self.rangeSliderCurrency.tintColorBetweenHandles = [UIColor blackColor];
    self.rangeSliderCurrency.tintColor = [UIColor blueColor];
    self.rangeSliderCurrency.minValue = 0;
    self.rangeSliderCurrency.maxValue = 150;
    self.rangeSliderCurrency.lineHeight = 4;
    self.rangeSliderCurrency.selectedMinimum = 50;
    self.rangeSliderCurrency.selectedMaximum = 100;
    self.rangeSliderCurrency.handleColor = [UIColor greenColor];
    self.rangeSliderCurrency.minDistance = 5;
    self.rangeSliderCurrency.hideLabels = true;
    self.rangeSliderCurrency.handleDiameter = 30;
    self.rangeSliderCurrency.selectedHandleDiameterMultiplier = 1.3;
    NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
    formatter.numberStyle = NSNumberFormatterCurrencyStyle;
    self.rangeSliderCurrency.numberFormatterOverride = formatter;
    [self.view addSubview: self.rangeSliderCurrency];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark TTRangeSliderViewDelegate
-(void)rangeSlider:(TTRangeSlider *)sender didChangeSelectedMinimumValue:(float)selectedMinimum andMaximumValue:(float)selectedMaximum{
    if (sender == self.rangeSliderCurrency) {
        NSLog(@"Currency slider updated. Min Value: %.0f Max Value: %.0f", selectedMinimum, selectedMaximum);
    }
}

@end
