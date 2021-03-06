//
//  day4AcademyStudentsTableViewController.m
//  Academy387Day4
//
//  Created by Faik Catibusic on 8/22/14.
//  Copyright (c) 2014 Faik Catibusic. All rights reserved.
//

#import "day4AcademyStudentsTableViewController.h"
#import "NaslovniceNovinaViewController.h"

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
    self.snovine = [NSArray arrayWithObjects: @"Dnevni avaz", @"National geo.", @"Vogue", @"Azra", @"Mojabeba", @"Astro", nil];
    
    
    Naslovnice *naslovnica1 = [Naslovnice new];
    naslovnica1.imageFile = @"da0403.jpg";
    Naslovnice *naslovnica2 = [Naslovnice new];
    naslovnica2.imageFile = @"National_Geographic_-_King_Tut_face.jpg";
    Naslovnice *naslovnica3 = [Naslovnice new];
    naslovnica3.imageFile = @"Vogue_UK.jpg";
    Naslovnice *naslovnica4 = [Naslovnice new];
    naslovnica4.imageFile = @"azra07mart.jpg";
    Naslovnice *naslovnica5 = [Naslovnice new];
    naslovnica5.imageFile = @"mojabeba.jpg";
    Naslovnice *naslovnica6 = [Naslovnice new];
    naslovnica6.imageFile = @"asrto.jpg";
    
    self.listaNaslovnica = [NSArray arrayWithObjects:naslovnica1, naslovnica2, naslovnica3, naslovnica4, naslovnica5, naslovnica6, nil];}

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

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"showDetails"]) {
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    NaslovniceNovinaViewController *destViewController = segue.destinationViewController;
    destViewController.naslovnica= [self.listaNaslovnica objectAtIndex:indexPath.row];
    }

}
@end
