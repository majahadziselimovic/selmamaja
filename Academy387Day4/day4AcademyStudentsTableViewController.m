//
//  day4AcademyStudentsTableViewController.m
//  Academy387Day4
//
//  Created by Faik Catibusic on 8/22/14.
//  Copyright (c) 2014 Faik Catibusic. All rights reserved.
//

#import "day4AcademyStudentsTableViewController.h"

@interface day4AcademyStudentsTableViewController ()

@end

@implementation day4AcademyStudentsTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.snovine = [NSArray arrayWithObjects: @"Dnevni avaz", @"National geo.", @"Vogue", @"Azra", @"Mame&bebe", @"Astro", nil];
}

- (void)closeTableView
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [self.snovine count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell;
    if(indexPath.row % 2 == 0 )
        cell = [tableView dequeueReusableCellWithIdentifier:@"NovineCell"];
    else
        cell = [tableView dequeueReusableCellWithIdentifier:@"NovineCell1"];
    NSString *novine = [self.snovine objectAtIndex:indexPath.row];
    cell.textLabel.text = novine;
    return cell;
}

@end
