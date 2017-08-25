//
//  RefreshTableViewController.m
//  Demo
//
//  Created by Sam Meech-Ward on 2017-08-25.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

#import "RefreshTableViewController.h"

@interface RefreshTableViewController ()

@end

@implementation RefreshTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setComplaints:(NSArray *)complaints {
    _complaints = complaints;
    [self.tableView reloadData];
    
    if (self.refreshControl.refreshing) {
        [self.refreshControl endRefreshing];
    }
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.complaints.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    NSString *complaint = self.complaints[indexPath.row];
    
    cell.textLabel.text = complaint;
    
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [self.delegate refreshTableViewController:self didSelectRowAtIndexPath:indexPath];
}

- (IBAction)refreshTableView:(id)sender {
    
    [self.delegate refreshTableViewControllerDidRefresh:self];
}

@end
