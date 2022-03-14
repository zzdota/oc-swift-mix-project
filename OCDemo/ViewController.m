//
//  ViewController.m
//  OCDemo
//
//  Created by zz on 2022/3/8.
//

#import "ViewController.h"
#import "Student.h"
#import "SVProgressHUD.h"

#import "OCDemo-Swift.h"
#import "OCDemo-Bridging-Header.h"
@interface ViewController ()<ChartViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:UIColor.redColor];
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(50, 50, 200, 200)];
    [btn setTitle:@"tap" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(tap) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    self.title = @"OC ViewController";
    
    Student *s = [[Student alloc] init];
    [s setName:@"jack"];
    NSLog(@"s name is %@",s.name);

    [SVProgressHUD showWithStatus:@"Loading..."];
    
    
    Person *p = [Person new];
    p.name = @"zz";
    NSLog(@"p name is %@",p.name);
    
    BarChartView *barChartView = [[BarChartView alloc] init];
    barChartView.delegate = self;
        
    // Do any additional setup after loading the view.
}


-(void)tap{
    NSLog(@"OC ViewController button--tap");
    TwoViewController *two = [TwoViewController new];
    
    [self.navigationController pushViewController:two animated:YES];
    
}

@end
