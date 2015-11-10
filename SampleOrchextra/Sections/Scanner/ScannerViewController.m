//
//  ScannerViewController.m
//  OrchextraApp
//
//  Created by Judith Medina on 9/7/15.
//  Copyright (c) 2015 Gigigo. All rights reserved.
//

#import "ScannerViewController.h"
#import <Orchextra/Orchextra.h>

@interface ScannerViewController ()


@end

@implementation ScannerViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"Scanner";
    self.openScanButton.layer.cornerRadius = 2.0;
    self.vuforiaButton.hidden = ![[Orchextra sharedInstance] isImageRecognitionAvailable];
}

- (IBAction)openScannerTapped:(id)sender
{
    [[Orchextra sharedInstance] startScanner];
}

- (IBAction)openVuforiaTapped:(id)sender
{
    [[Orchextra sharedInstance] startImageRecognition];
}

@end
