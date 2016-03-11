//
//  ViewController.m
//  Calendar
//
//  Created by 李世飞 on 15/12/28.
//  Copyright © 2015年 李世飞. All rights reserved.
//

#import "ViewController.h"

#import "CalendarHomeViewController.h"

@interface ViewController ()
{
    
    CalendarHomeViewController *chvc;
    
    
    
}
@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor=[UIColor whiteColor];
    
    self.title=@"日历（竖版）";
    

    chvc = [[CalendarHomeViewController alloc]init];
    chvc.view.frame=CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    [self.view addSubview:chvc.view];
    
    
    [chvc setAirPlaneToDay:90 ToDateforString:nil];//飞机初始化方法
        
    chvc.calendarblock = ^(CalendarDayModel *model){
        
        
        NSLog(@"选中日期=======%@",[model toString]);
        
    };

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
