#import <UIKit/UIKit.h>

#import "CustomTableViewDataSource.h"


@interface CustomTableTableViewController : UITableViewController<UISearchBarDelegate, UISearchControllerDelegate>{
    UISearchController *_searchController;
    CustomTableViewDataSource * _dataSource;
}

-(instancetype)initWithDataSource:(CustomTableViewDataSource *)dataSource tableView:(UITableView *)tableView;


@end
