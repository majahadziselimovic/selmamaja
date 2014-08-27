//
//  NaslovniceNovinaViewController.m
//  Academy387Day4
//
//  Created by user23983 on 27/08/14.
//  Copyright (c) 2014 Faik Catibusic. All rights reserved.
//

#import "NaslovniceNovinaViewController.h"

@interface NaslovniceNovinaViewController ()

@end

@implementation NaslovniceNovinaViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.slikaNaslovnice.image = [UIImage imageNamed:self.naslovnica.imageFile];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
