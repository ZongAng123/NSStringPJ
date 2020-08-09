//
//  ViewController.m
//  NSStringPinJie
//
//  Created by 纵昂 on 2020/8/9.
//  Copyright © 2020 https://github.com/ZongAng123. All rights reserved.
//  字符串拼接练习  简书地址:https://www.jianshu.com/p/b7a3714115c4
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
#pragma mark - 1、简单的拼接
    NSString  *str1=@"我爱";
    NSString *str2=@"南京";
    NSString *all= [NSString stringWithFormat:@"%@%@",str1,str2];
    NSLog ( @"简易拼接%@",all);
    
    
#pragma mark - 2、字符串有多个值怎么拼接    不可变数组的方法
/**
 如果后台返回的字符串是这样的，去下标第一个，
 fileip = "bb1bba16adcd4970a63b7863a8c9b315,c170590905ad420e88fbccf1b75c2d29";
 **/
//  取一个元素
    NSArray *arr = @[@"bb1bba16adcd4970a63b7863a8c9b315",@"c170590905ad420e88fbccf1b75c2d29"];
//  简单方法取一个元素
    NSString *strArr = arr[0];
    NSLog(@"取下标第一个id为-%@",strArr);
//  取最后一个元素
    NSString *last = [arr lastObject];
    NSLog(@"取下标最后一个id为-%@",last);
    
    
#pragma mark - 3.字符传切割
//    切割
    NSString *strQie = @"江苏省南#京市浦口区天润城*天华南路";
    NSArray *array = [strQie componentsSeparatedByString:@"#*"];
    NSLog(@"切割测试1%@",array);
    
//    一字符集合中的字符切割
    NSString *str1Qie =@"江苏省南#京市浦口区天润城*天华南路哈哈哈哈哈,走吧额*我和那";
    NSCharacterSet *set = [NSCharacterSet characterSetWithCharactersInString:@"!*,."];
    NSArray *arrQ = [str1Qie componentsSeparatedByCharactersInSet:set];
    NSLog(@"切割测试2%@",arrQ);
//    组合
//    将数组中的字符传元素按照某种规则组合成一个新的字符串
    NSArray *arr3Q = @[@"爱",@"我",@"中",@"华"];
    NSString *str4Q = [arr3Q componentsJoinedByString:@"!"];
    NSLog(@"切割测试3%@",str4Q);
    

#pragma mark - 4,给一段连续的字符串加逗号      项目中需要将字符串转化为数组
//    数据字符串是这样的
    NSString *drawNumberStr = @"0123456789";
//    我要将他转化为数组，然后分段加载
    NSMutableArray *muArray = [NSMutableArray array];
     for (int w = 1; w < drawNumberStr.length + 1; w ++) {
          NSString *mStr = [drawNumberStr substringToIndex:w];
          drawNumberStr = [drawNumberStr substringFromIndex:w];
          w = w - 1;
          [muArray addObject:mStr];
      }
    NSLog(@"字符串加逗号测试1-%@",muArray);
//   将数组赋值给需要用的那个数组完成，当我将他转化成数组之后，我就可以想怎么改，就怎么改了
       NSArray *arrOne = [[NSArray alloc]init];
       arrOne = [NSArray arrayWithArray:muArray];
    
#pragma mark - 5,字符串截取
    NSString  *stringJ =@"0123456d890";
    NSString  *str1J = [stringJ substringToIndex:5];
    NSLog(@"截取的值为：%@",str1J);
    
    
    
    
}


@end
