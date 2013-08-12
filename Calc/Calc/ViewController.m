//
//  ViewController.m
//  Calc
//
//  Created by aya:) on 2013/08/06.
//  Copyright (c) 2013年 aya:). All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//Slider部分
//- (IBAction)changeSlider:(id)sender
//{
//
//    myslider.minimumValue = 0.0;
//    myslider.maximumValue = 100.0;
//
//    //スライダーの現在値を取得
//    //float v = 0;
//    //v = myslider.value;
//
//    //ラベルに値を表示
//    myoff.text = [NSString stringWithFormat:@"%.0f" ,myslider.value];
//}



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    startInput = YES;
    currentValue = 0;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//slider
- (IBAction)changeSliderValue:(id)sender {
    
    UISlider *slider = sender;
    NSInteger sliderValue = floor(slider.value);
     
    self.nebikigo.text =[NSString stringWithFormat:@"%d", ([label.text intValue] * (100- sliderValue)) / 100];
    
    [self.percentLabel setText:[NSString stringWithFormat:@"%.0f",slider.value] 
     ];


    }





- (IBAction)numberButtonPressed:(id)sender {
    UIButton *b = (UIButton *)sender;
    
    if (startInput) {
        //最初の１行目が０なら非表示
        if (b.tag == 0)return;
        //新しく表示する文字列作成
        label.text = [NSString stringWithFormat:@"%d", b.tag];
        startInput = NO;
    } else {
        //文字列に連結する
        label.text = [NSString stringWithFormat:@"%@%d", label.text, b.tag];
    }
}
//clearボタンが押されたら、０にする。
-(IBAction)clearButtonPressed:(id)sender
{
    label.text = @"0";
    _nebikigo.text=@"0";
    _percentLabel.text=@"0";
    startInput = YES;
}

//=を押された時の処理
-(IBAction)equalButtonPressed:(id)sender{
    // 直前に+を押されたら
    if (operation == 10){
        currentValue += [label.text intValue];
    } else if (operation == 11){ //-を押されたら
        currentValue -= [label.text intValue];
    }
    
    //表示の更新をする
    label.text =[NSString stringWithFormat:@"%d",currentValue];
    startInput = YES;
}


-(IBAction)pmButtonPressed:(id)sender
{
    UIButton *b = (UIButton *)sender;
    
    // 現在値の保存
    currentValue = [label.text intValue];
    
    // 演算の保存
    operation = b.tag;
    startInput = YES;
}






@end
