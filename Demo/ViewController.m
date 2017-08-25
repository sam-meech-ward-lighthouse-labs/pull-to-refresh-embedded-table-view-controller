//
//  ViewController.m
//  Demo
//
//  Created by Sam Meech-Ward on 2017-08-25.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

#import "ViewController.h"
#import "RefreshTableViewController.h"

@interface ViewController () <RefreshTableViewControllerDelegate>

@property (nonatomic, strong) RefreshTableViewController *tableViewController;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self loadData];
}

- (void)loadData {
    // Get data
    NSArray *complaints = @[@"1", @"2", @"3"];
    
    self.tableViewController.complaints = complaints;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:@"table-view"]) {
        self.tableViewController = segue.destinationViewController;
        self.tableViewController.delegate = self;
    }
}

- (void)refreshTableViewControllerDidRefresh:(RefreshTableViewController *)tableViewController {
    [self loadData];
}

- (void)refreshTableViewController:(RefreshTableViewController *)tableViewController didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}


@end
