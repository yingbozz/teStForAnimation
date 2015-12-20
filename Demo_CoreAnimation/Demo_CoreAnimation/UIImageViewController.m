//
//  UIImageViewController.m
//  Demo_CoreAnimation
//
//  Created by 薛迎波 on 15/12/21.
//  Copyright © 2015年 XueYingbo. All rights reserved.
//

#import "UIImageViewController.h"

@interface UIImageViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation UIImageViewController

#define FPS 30

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImage *image = [UIImage animatedImageNamed:@"ship-anim" duration:1/FPS];
    self.imageView.image = image;
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
