//
//  View.m
//  CleanTestSearch
//
//  Created by Wayne Irwin on 10/2/18.
//  Copyright © 2018 Wayne Irwin. All rights reserved.
//

#import "View.h"

@implementation View

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor redColor];
        [self createControls];
    }
    [self setNeedsUpdateConstraints];
    
    return self;
}



-(void)createControls{
    self.tableView = [[UITableView alloc] init];
    self.tableView.backgroundColor = [UIColor orangeColor];
    UIView *superView = self;
    [superView addSubview:self.tableView];
    
    
}


-(void)updateConstraints {

    UIView *superview = self;

    self.tableView.translatesAutoresizingMaskIntoConstraints = NO;
    self.tableView.backgroundColor = [UIColor greenColor];
    [superview addSubview:self.tableView];

    UIEdgeInsets padding = UIEdgeInsetsMake(10, 10, 10, 10);

    [superview addConstraints:@[

            //self.tableView constraints
            [NSLayoutConstraint constraintWithItem:self.tableView
                                         attribute:NSLayoutAttributeTop
                                         relatedBy:NSLayoutRelationEqual
                                            toItem:superview
                                         attribute:NSLayoutAttributeTop
                                        multiplier:1.0
                                          constant:padding.top],

            [NSLayoutConstraint constraintWithItem:self.tableView
                                         attribute:NSLayoutAttributeLeft
                                         relatedBy:NSLayoutRelationEqual
                                            toItem:superview
                                         attribute:NSLayoutAttributeLeft
                                        multiplier:1.0
                                          constant:padding.left],

            [NSLayoutConstraint constraintWithItem:self.tableView
                                         attribute:NSLayoutAttributeBottom
                                         relatedBy:NSLayoutRelationEqual
                                            toItem:superview
                                         attribute:NSLayoutAttributeBottom
                                        multiplier:1.0
                                          constant:-padding.bottom],

            [NSLayoutConstraint constraintWithItem:self.tableView
                                         attribute:NSLayoutAttributeRight
                                         relatedBy:NSLayoutRelationEqual
                                            toItem:superview
                                         attribute:NSLayoutAttributeRight
                                        multiplier:1
                                          constant:-padding.right],

    ]];



    [super updateConstraints];
}


@end
