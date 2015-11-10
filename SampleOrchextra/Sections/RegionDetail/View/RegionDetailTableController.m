//
//  GeofencesDetailTableViewController.m
//  OrchextraApp
//
//  Created by Judith Medina on 10/7/15.
//  Copyright (c) 2015 Gigigo. All rights reserved.
//

#import "RegionDetailTableController.h"
#import "DetailCell.h"
#import "NotifyCell.h"
#import "DetailModel.h"

@interface RegionDetailTableController()
<UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) NSArray *datasource;

@end

@implementation RegionDetailTableController


- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    
    if (self)
    {
        _presenter = [[RegionDetailPresenter alloc] initWithViewController:self];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.presenter viewIsReady];
    
    UIView *tableViewFooter = [[UIView alloc] init];
    [self.tableView setTableFooterView:tableViewFooter];
}

#pragma mark - DELEGATE (Interface)

- (void)showCellWithDataSource:(NSArray *)datasource
{
    self.datasource = datasource;
    [self.tableView reloadData];
    [self.tableView reloadInputViews];
}

#pragma mark - DELEGATE (Table View)

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.datasource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    DetailModel *detail = self.datasource[indexPath.row];
    
    UITableViewCell *cell = nil;
    
    if ([detail.title isEqualToString:@"NotifyOnEntry"] || [detail.title isEqualToString:@"NotifyOnExit"])
    {
        NotifyCell *cellNotify = [tableView dequeueReusableCellWithIdentifier:@"notifyCell" forIndexPath:indexPath];
        [cellNotify bindDataWithDetail:detail];
        cell = cellNotify;
    }
    else
    {
        DetailCell *cellDetail = [tableView dequeueReusableCellWithIdentifier:@"detailCell" forIndexPath:indexPath];
        [cellDetail bindDataWithDetail:detail];
        cell = cellDetail;
    }
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    if (indexPath.row > 3)
    {
        return 30;
    }
    return 70;
}

@end
