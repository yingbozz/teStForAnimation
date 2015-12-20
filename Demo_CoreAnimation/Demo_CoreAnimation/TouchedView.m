//
//  TouchedView.m
//  Demo_CoreAnimation
//
//  Created by 薛迎波 on 15/12/21.
//  Copyright © 2015年 XueYingbo. All rights reserved.
//

#import "TouchedView.h"
@interface TouchedView()
@property (nonatomic,strong) UIBezierPath *bezierPath;
@property(nonatomic,strong)UIBezierPath *path;
@end

@implementation TouchedView

-(UIBezierPath *)bezierPath{
    if (!_bezierPath) {
        _bezierPath = [UIBezierPath bezierPath];
    }
    return _bezierPath;
}
//- (UIBezierPath *)path{
//    if (!_path) {
//        _path = [UIBezierPath bezierPath];
//    }
//    return _path;
//}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:self];
    
    self.bezierPath.lineWidth = 1.f;
    [self.bezierPath moveToPoint:point];
    
    
    
}
-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:self];
    [self.bezierPath addLineToPoint:point];
    [self setNeedsDisplay];
}

-(void)drawRect:(CGRect)rect{
    //_bezierPath.lineWidth = 1;
    [[UIColor redColor] setStroke];
    [self.bezierPath stroke];
}
//// 只要在视图的实例上检测到有触点落下
//// 则该方法会被自动调用
//- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
//    //获取集合中的任意一个对象
//    //只有一个触点的话，则anyObejct就代表唯一的那个触点对象
//    UITouch *touch = [touches anyObject];
//    CGPoint point = [touch locationInView:self];
//    // 创建路径
//    //self.path = [UIBezierPath bezierPath];
//    self.path.lineWidth = 2;
//    [self.path moveToPoint:point];
//}
//
//- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
//    UITouch *touch = [touches anyObject];
//    CGPoint point= [touch locationInView:self];
//    [self.path addLineToPoint:point];
//    //每当路径随着移动动作被改变以后
//    //需要重绘被改变了的path
//    [self setNeedsDisplay];
//}
//
////绘图代码一定要写在drawRect中
////但是，点的坐标在上面的三个方法中
//- (void)drawRect:(CGRect)rect{
//    [[UIColor redColor] setStroke];
//    [self.path stroke];
//}



@end
