//
//  TransformViewController.m
//  Demo_CoreAnimation
//
//  Created by 薛迎波 on 15/12/20.
//  Copyright © 2015年 XueYingbo. All rights reserved.
//

#import "TransformViewController.h"

@interface TransformViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation TransformViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
}
- (IBAction)translation:(UIButton *)sender {
    //有make相对于当前的transform变化，没有make相对于原始的transform
    self.imageView.transform = CGAffineTransformTranslate(self.imageView.transform, 10, 10);
    self.imageView.transform = CGAffineTransformMakeTranslation(10, 10);
    
}
- (IBAction)rotation:(UIButton *)sender {
    //self.imageView.transform = CGAffineTransformRotate(self.imageView.transform, M_PI_2);
    self.imageView.transform = CGAffineTransformMakeRotation(M_PI_2);
}
- (IBAction)scale:(UIButton *)sender {
    //self.imageView.transform = CGAffineTransformScale(self.imageView.transform, 0.9, 0.9);
    self.imageView.transform = CGAffineTransformMakeScale(0.5, 0.5);
}

- (IBAction)original:(UIButton *)sender {
    self.imageView.transform = CGAffineTransformIdentity;
}


@end
