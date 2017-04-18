//
//  ViewController.m
//  EOCTimer
//
//  Created by 藏银 on 2017/4/17.
//  Copyright © 2017年 藏银. All rights reserved.
//

#import "ViewController.h"
#import "ECOViewController.h"
#import "ECOTimerViewController.h"

@interface ViewController ()<UITableViewDataSource, UITableViewDelegate>


@property (nonatomic, weak) IBOutlet UITableView *tableView;
@property (nonatomic, strong) NSArray *tableArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

    
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    
    NSArray *tableData = [NSArray arrayWithObjects:@"NSTimer 保留环",@"NSTimer 保留环解决", nil];
    self.tableArray = tableData;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 2;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"nstimeruitableviewcell"];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"nstimeruitableviewcell"];
    }
    
    NSString *title = [self.tableArray objectAtIndex:[indexPath row]];
    cell.textLabel.text = title;
    
    return cell;
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        ECOViewController * vc = [[ECOViewController alloc] init];
        [self.navigationController pushViewController:vc animated:YES];
    } else {
        ECOTimerViewController *vc = [[ECOTimerViewController alloc] init];
        [self.navigationController pushViewController:vc  animated:YES];
    }
}


@end
