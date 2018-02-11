//
//  CustomTableViewDataSource.m
//  CleanTestSearch
//
//  Created by Wayne Irwin on 9/2/18.
//  Copyright © 2018 Wayne Irwin. All rights reserved.
//

#import "CustomTableViewDataSource.h"

@implementation CustomTableViewDataSource

-(instancetype)init{
    self = [super self];
    self.searchControlActive = NO;
    return self;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[UITableViewCell alloc] init];
    cell.detailTextLabel.text = @"Test Cell";
    return cell;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 0;
}


- (void)updateSearchResultsForSearchController:(UISearchController *)searchController {


}


@end
