//
//  ViewController.m
//  Demo_CoreAnimation
//
//  Created by 薛迎波 on 15/12/20.
//  Copyright © 2015年 XueYingbo. All rights reserved.
//

#import "ViewController.h"


/*
 这个Demo主要是针对CoreAnimation这个UI实现框架的，
 这是一个图形渲染和动画的底层框架，用于iOS和Mac OS X，
 通过对一个特殊的类型，CALayer 进行编程来实现的
 
 */

//本控制器简单的介绍自动布局对Animation的应用

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIView *viewPan;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *topContraint;

@property (nonatomic) CGFloat constantOrigin;

@end





@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _constantOrigin = self.topContraint.constant;
    UIPanGestureRecognizer *panGR = [[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(panView:)];
    [self.view addGestureRecognizer:panGR];
    
    
}
-(void)panView:(UIPanGestureRecognizer *)gr{
    CGPoint translation = [gr translationInView:self.view];
//    CGPoint center = self.viewPan.center;
//    center.x += translation.x;
//    center.y += translation.y;
//    self.viewPan.center = center;
    //[gr setTranslation:CGPointZero inView:self.view];
    
    
    self.topContraint.constant = self.constantOrigin+translation.y;
    
    if (gr.state == UIGestureRecognizerStateEnded) {
        self.topContraint.constant = _constantOrigin;
        [UIView animateWithDuration:2 delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
            
            [self.view layoutIfNeeded];
        } completion:nil];
    }
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
