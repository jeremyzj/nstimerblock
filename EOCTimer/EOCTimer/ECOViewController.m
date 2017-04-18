//
//  ECOViewController.m
//  EOCTimer
//
//  Created by 藏银 on 2017/4/18.
//  Copyright © 2017年 藏银. All rights reserved.
//

#import "ECOViewController.h"
#import "ECOClass.h"

@interface ECOViewController ()

//@property (nonatomic, strong) ECOClass *eco;

@end

@implementation ECOViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
//    self.eco = [[ECOClass alloc] init];
//    [self.eco startPolling];
    
    //保留环, 此时及时ECOViewController 消除ECOClass容易引起循环引用
    ECOClass *eco =  [[ECOClass alloc] init];
    [eco startPolling];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    NSLog(@"ECOViewController dealloc");
//    主动调用stopPolling就不会有保留环
//    [self.eco stopPolling];
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
