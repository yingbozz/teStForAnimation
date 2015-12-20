//
//  CAAnimationViewController.m
//  Demo_CoreAnimation
//
//  Created by 薛迎波 on 15/12/20.
//  Copyright © 2015年 XueYingbo. All rights reserved.
//

#import "CAAnimationViewController.h"

@interface CAAnimationViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation CAAnimationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
- (IBAction)animation:(UIButton *)sender {
    CAKeyframeAnimation *keyAnimation = [CAKeyframeAnimation animationWithKeyPath:@"position"];
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path addArcWithCenter:CGPointMake(200, 400) radius:50 startAngle:M_PI_2 * 3 endAngle:M_PI_2 * 3 + M_PI * 2 clockwise:YES];
    keyAnimation.path = path.CGPath;
    keyAnimation.duration  = 2.f;
    keyAnimation.fillMode = kCAFillModeForwards;
    keyAnimation.removedOnCompletion = NO;
    [self.imageView.layer addAnimation:keyAnimation forKey:nil];
    
    
    CABasicAnimation *basicAnimation = [CABasicAnimation animationWithKeyPath:@"transform"];
    basicAnimation.duration = 2.f;
    basicAnimation.fromValue = [NSValue valueWithCATransform3D:CATransform3DIdentity];
    basicAnimation.toValue = [NSValue valueWithCATransform3D:CATransform3DMakeScale(0.1, .1, .1)];
    basicAnimation.fillMode = kCAFillModeForwards;
    basicAnimation.removedOnCompletion = NO;
    [self.imageView.layer addAnimation:basicAnimation forKey:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
