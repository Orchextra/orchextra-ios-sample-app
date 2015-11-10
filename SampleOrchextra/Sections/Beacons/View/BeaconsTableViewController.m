//
//  BeaconsTableViewController.m
//  OrchextraApp
//
//  Created by Judith Medina on 13/7/15.
//  Copyright (c) 2015 Gigigo. All rights reserved.
//

#import "BeaconsTableViewController.h"
#import "BeaconsPresenter.h"

@interface BeaconsTableViewController()
<BeaconViewInterface, UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) BeaconsPresenter *presenter;
@property (strong, nonatomic) NSArray *datasource;

@end

@implementation BeaconsTableViewController

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    
    if (self)
    {
        _presenter = [[BeaconsPresenter alloc] initWithViewController:self];
    }
    
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self setAppearanceView];
    [self.presenter viewIsReady];
}

#pragma mark - EVENTS

-(IBAction)segmentedControlChangedValue:(id)sender
{
    UISegmentedControl *segmentedControl = (UISegmentedControl *)sender;
    
    switch (segmentedControl.selectedSegmentIndex)
    {
        case 0:
            [self.presenter userDidSelectAllBeacons];
            break;
        case 1:
            [self.presenter userDidSelectEntryBeacons];
            break;
        case 2:
            [self.presenter userDidSelectExitBeacons];
            break;
        default:
            break;
    }
}

#pragma mark - PRIVATE

- (void)setAppearanceView
{
    self.title = @"Beacons";
}

#pragma mark - DELEGATE (Interface)

- (void)showBeacons:(NSArray *)beacons
{
    self.datasource = beacons;
    [self.tableView reloadData];
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
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"beaconCell" forIndexPath:indexPath];

    CLBeaconRegion *beacon = self.datasource[indexPath.row];
    
    cell.textLabel.text = [NSString stringWithFormat:@"%@", beacon.identifier];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self.presenter userDidSelectBeacon:self.datasource[indexPath.row]];
}

@end
