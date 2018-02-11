//
//  OraSegmentedTableViewController.m
//  ora
//
//  Created by Wayne Irwin on 21/9/17.
//  Copyright © 2017 Wayne Irwin. All rights reserved.
//

#import "CustomTableTableViewController.h"
#import "CustomTableViewDataSource.h"

@interface CustomTableTableViewController ()

@end

@implementation CustomTableTableViewController



-(instancetype)initWithDataSource:(CustomTableViewDataSource *)dataSource tableView:(UITableView *)tableView{
    self = [super init];
    if(self){
        _dataSource = dataSource;
        self.tableView = tableView;
        [self setupTable];
        [self setupTableViewHeader];
    }
    return self;
    
}


-(void)setupTable{
    self.tableView.dataSource = _dataSource;
    self.tableView.delegate = self;
}


-(void)setupTableViewHeader{
    
    UIView *searchBarPlaceHolder = [[UIView alloc] init];
    _searchController = [[UISearchController alloc] initWithSearchResultsController:nil];
    _searchController.searchResultsUpdater = _dataSource;
    _searchController.searchBar.delegate = self;
    _searchController.hidesNavigationBarDuringPresentation = FALSE;
    _searchController.dimsBackgroundDuringPresentation = NO;
    _searchController.searchBar.searchBarStyle = UISearchBarStyleMinimal;
    _searchController.searchBar.placeholder = @"Search here ...";
    _searchController.searchBar.frame = searchBarPlaceHolder.bounds;
    [_searchController.searchBar sizeToFit];
    self.tableView.tableHeaderView = _searchController.searchBar;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



#pragma mark SearchBar del


- (BOOL)searchBarShouldBeginEditing:(UISearchBar *)searchBar {
    return YES;
}

- (void)searchBarTextDidBeginEditing:(UISearchBar *)searchBar {
    
}

- (BOOL)searchBarShouldEndEditing:(UISearchBar *)searchBar {
    return YES;
}

- (void)searchBarTextDidEndEditing:(UISearchBar *)searchBar {
    
}

- (void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText {
    
}

- (BOOL)searchBar:(UISearchBar *)searchBar shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    return YES;
}

- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar {
    
}

- (void)searchBarBookmarkButtonClicked:(UISearchBar *)searchBar {
    
}

- (void)searchBarCancelButtonClicked:(UISearchBar *)searchBar {
    
}

- (void)searchBarResultsListButtonClicked:(UISearchBar *)searchBar {
    
}

- (void)searchBar:(UISearchBar *)searchBar selectedScopeButtonIndexDidChange:(NSInteger)selectedScope {
    
}


#pragma mark Debug Helpers


- (BOOL)respondsToSelector:(SEL)sel {
    NSLog(@"Queried about Base %@", NSStringFromSelector(sel));
    return [super respondsToSelector:sel];
}
@end

