//
//  CustomTableViewDataSource.h
//  CleanTestSearch
//
//  Created by Wayne Irwin on 9/2/18.
//  Copyright © 2018 Wayne Irwin. All rights reserved.
//


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>



@interface CustomTableViewDataSource : NSObject<UITableViewDataSource,  UISearchResultsUpdating>

@property (assign, nonatomic) BOOL searchControlActive;
@end
