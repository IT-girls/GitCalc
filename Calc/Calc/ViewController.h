//
//  ViewController.h
//  Calc
//
//  Created by aya:) on 2013/08/06.
//  Copyright (c) 2013年 aya:). All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    IBOutlet UILabel *label;
    BOOL startInput;
    int currentValue;
    int operation;
}
@property (weak, nonatomic) IBOutlet UILabel *percentLabel;
- (IBAction)changeSliderValue:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *nebikigo;

- (IBAction)numberButtonPressed:(id)sender;
- (IBAction)clearButtonPressed:(id)sender;
- (IBAction)equalButtonPressed:(id)sender;
- (IBAction)pmButtonPressed:(id)sender;
@end



    