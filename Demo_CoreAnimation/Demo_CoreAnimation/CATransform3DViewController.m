//
//  CATransform3DViewController.m
//  Demo_CoreAnimation
//
//  Created by 薛迎波 on 15/12/21.
//  Copyright © 2015年 XueYingbo. All rights reserved.
//

#import "CATransform3DViewController.h"

@interface CATransform3DViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation CATransform3DViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
}
- (IBAction)rotationX:(UIButton *)sender {
    CABasicAnimation *basic = [CABasicAnimation animationWithKeyPath:@"transform"];
    basic.fromValue = [NSValue valueWithCATransform3D:self.imageView.layer.transform];
    basic.toValue = [NSValue valueWithCATransform3D:CATransform3DRotate(self.imageView.layer.transform, M_PI_2, 1, 0, 0)];
    basic.duration = 1.0;
    basic.fillMode = kCAFillModeBoth;
    basic.removedOnCompletion = NO;
    [self.imageView.layer addAnimation:basic forKey:nil];
    
    
}
- (IBAction)rroutationY:(UIButton *)sender {
    CABasicAnimation *basic = [CABasicAnimation animationWithKeyPath:@"transform"];
    basic.fromValue = [NSValue valueWithCATransform3D:self.imageView.layer.transform];
    basic.toValue = [NSValue valueWithCATransform3D:CATransform3DRotate(self.imageView.layer.transform, M_PI_2, 0, 1, 0)];
    basic.duration = 1.0;
    basic.fillMode = kCAFillModeBoth;
    basic.removedOnCompletion = NO;
    [self.imageView.layer addAnimation:basic forKey:nil];
}
- (IBAction)rotationZ:(id)sender {
    CABasicAnimation *basic = [CABasicAnimation animationWithKeyPath:@"transform"];
    basic.fromValue = [NSValue valueWithCATransform3D:self.imageView.layer.transform];
    basic.toValue = [NSValue valueWithCATransform3D:CATransform3DRotate(self.imageView.layer.transform, M_PI_2, 0, 0, 1)];
    basic.duration = 1.0;
    basic.fillMode = kCAFillModeBoth;
    basic.removedOnCompletion = NO;
    [self.imageView.layer addAnimation:basic forKey:nil];
}
- (IBAction)noChange:(id)sender {
    CABasicAnimation *basic = [CABasicAnimation animationWithKeyPath:@"transform"];
    basic.fromValue = [NSValue valueWithCATransform3D:self.imageView.layer.transform];
    basic.toValue = [NSValue valueWithCATransform3D:CATransform3DRotate(self.imageView.layer.transform, M_PI_2, 1, 1, 1)];
    basic.duration = 1.0;
    basic.fillMode = kCAFillModeBoth;
    basic.removedOnCompletion = NO;
    [self.imageView.layer addAnimation:basic forKey:nil];
}


@end
