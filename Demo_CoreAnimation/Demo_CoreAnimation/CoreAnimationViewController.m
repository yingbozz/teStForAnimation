//
//  CoreAnimationViewController.m
//  Demo_CoreAnimation
//
//  Created by 薛迎波 on 15/12/20.
//  Copyright © 2015年 XueYingbo. All rights reserved.
//

#import "CoreAnimationViewController.h"

@interface CoreAnimationViewController ()

@end

@implementation CoreAnimationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //利用CoreAnimation修改控件的外形
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(20, 20, 100, 100)];
    CALayer *layer = imageView.layer;
    layer.cornerRadius = 10;
    layer.borderColor = [UIColor purpleColor].CGColor;
    layer.borderWidth = 5.f;
    layer.masksToBounds = YES;
    imageView.image = [UIImage imageNamed:@"cm2_daily_banner2.jpg"];
    [self.view addSubview:imageView];
    
    //为layer添加子层
    CALayer *subLayer = [CALayer layer];
    subLayer.frame = CGRectMake(130, 20, 100, 100);
    subLayer.cornerRadius = 20;
    //subLayer.borderWidth = 5.f;
//    subLayer.borderColor = [UIColor redColor].CGColor;
//    subLayer.masksToBounds = YES;
    
    //该方法适用于UIKIt
    [subLayer setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"cm2_daily_banner2.jpg"]].CGColor];
    subLayer.shadowColor = [UIColor yellowColor].CGColor;
    subLayer.shadowOffset = CGSizeMake(2, 2);
    //设置层的阴影的透明度
    subLayer.shadowOpacity = 0.8;
    [self.view.layer addSublayer:subLayer];
    
    //添加有图片的底层
    CALayer *layerImage = [CALayer layer];
    layerImage.frame = CGRectMake(20, 130, 100, 100);
    layerImage.contents = (__bridge id _Nullable)([UIImage imageNamed:@"cm2_daily_banner2.jpg"].CGImage);
    layerImage.cornerRadius = 10;
    layerImage.masksToBounds = YES;
    layerImage.borderWidth = 2;
    layerImage.borderColor = [[UIColor blueColor] CGColor];
    [self.view.layer addSublayer:layerImage];
    
    //添加文字底层
    CATextLayer *layerText = [CATextLayer layer];
    layerText.string = @"haha";
    layerText.foregroundColor = [UIColor blackColor].CGColor;
    layerText.frame = CGRectMake(130, 130, 100, 100);
    layerText.borderColor = [UIColor redColor].CGColor;
    layerText.borderWidth = 5.f;
    [self.view.layer addSublayer:layerText];
    
    //添加自定义图形底层
    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path addArcWithCenter:CGPointMake(200, 400) radius:50 startAngle:M_PI_2 * 3 endAngle:M_PI_2 * 3 + M_PI * 2 clockwise:YES];
    shapeLayer.path = path.CGPath;
    shapeLayer.lineWidth = 3;
    shapeLayer.strokeColor = [[UIColor redColor]CGColor];
    shapeLayer.fillColor = [[UIColor clearColor]CGColor];
    [self.view.layer addSublayer:shapeLayer];
    
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
