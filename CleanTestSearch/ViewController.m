//
//  ViewController.m
//  CleanTestSearch
//
//  Created by Wayne Irwin on 9/2/18.
//  Copyright © 2018 Wayne Irwin. All rights reserved.
//

#import "ViewController.h"
#import "View.h"
#import "CustomTableTableViewController.h"


@interface ViewController (){
    CustomTableTableViewController* _tableViewController;
    CustomTableViewDataSource* _dataSource;
}

@end

@implementation ViewController

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    _dataSource = [[CustomTableViewDataSource alloc] init];
    _tableViewController = [[CustomTableTableViewController alloc] initWithDataSource:_dataSource tableView:self.view.tableView];
    
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)loadView{
    self.view = [[View alloc] initWithFrame:CGRectZero];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
