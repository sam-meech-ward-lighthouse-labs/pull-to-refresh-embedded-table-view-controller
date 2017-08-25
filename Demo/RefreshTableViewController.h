//
//  RefreshTableViewController.h
//  Demo
//
//  Created by Sam Meech-Ward on 2017-08-25.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol RefreshTableViewControllerDelegate;

@interface RefreshTableViewController : UITableViewController

@property (nonatomic, strong) NSArray *complaints;

@property (nonatomic, weak) id<RefreshTableViewControllerDelegate>delegate;

@end


@protocol RefreshTableViewControllerDelegate <NSObject>

- (void)refreshTableViewControllerDidRefresh:(RefreshTableViewController *)tableViewController;
- (void)refreshTableViewController:(RefreshTableViewController *)tableViewController didSelectRowAtIndexPath:(NSIndexPath *)indexPath;

@end
