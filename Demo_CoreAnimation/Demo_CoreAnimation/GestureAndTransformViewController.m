//
//  GestureAndTransformViewController.m
//  Demo_CoreAnimation
//
//  Created by 薛迎波 on 15/12/20.
//  Copyright © 2015年 XueYingbo. All rights reserved.
//

#import "GestureAndTransformViewController.h"

@interface GestureAndTransformViewController ()<UIGestureRecognizerDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation GestureAndTransformViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIPanGestureRecognizer *tapGR = [[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(pan:)];
    tapGR.delegate = self;
    [self.view addGestureRecognizer:tapGR];
    
    UIPinchGestureRecognizer *pinchGR = [[UIPinchGestureRecognizer alloc]initWithTarget:self action:@selector(pinch:)];
    pinchGR.delegate = self;
    [self.view addGestureRecognizer:pinchGR];
    
    UIRotationGestureRecognizer *rotateGR = [[UIRotationGestureRecognizer alloc]initWithTarget:self action:@selector(rotate:)];
    rotateGR.delegate = self;
    [self.view addGestureRecognizer:rotateGR];
    
    
}

- (void)pan:(UIPanGestureRecognizer *)gr{
    CGPoint translation = [gr translationInView:self.view];
    
    self.imageView.transform = CGAffineTransformTranslate(self.imageView.transform, translation.x, translation.y);
    [gr setTranslation:CGPointZero inView:self.view];
}

- (void)pinch:(UIPinchGestureRecognizer *)gr{
    self.imageView.transform = CGAffineTransformScale(self.imageView.transform, gr.scale , gr.scale);
    [gr setScale:1];
}

- (void)rotate:(UIRotationGestureRecognizer *)gr{
    self.imageView.transform = CGAffineTransformRotate(self.imageView.transform, gr.rotation);
    //[gr setRotation:0];
    gr.rotation = 0;
}

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer{
    return YES;
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
