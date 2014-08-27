//
//  day4AcademyViewController.m
//  Academy387Day4
//
//  Created by Faik Catibusic on 8/21/14.
//  Copyright (c) 2014 Faik Catibusic. All rights reserved.
//

#import "day4AcademyViewController.h"


@interface day4AcademyViewController ()

@end

@implementation day4AcademyViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Update data on form
    [self updateNumberOfNovineInformation];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)addNovineToArray:(Novine*) novine {
    self.snovine = [[NSArray alloc] initWithObjects:novine, nil];
    [self updateNumberOfNovineInformation];
}

-(void)updateNumberOfNovineInformation {
    if(self.snovine != Nil) {
        self.snovineNumberTextbox.text = [[NSString alloc] initWithFormat:@"%d", (int)self.snovine.count];
    } else {
        self.snovineNumberTextbox.text = @"0";
    }
    [self updateListOfSnovine];
}

-(void)updateListOfSnovine {
    for (Novine *novine in self.snovine) {
        self.snovineList.text = [self.snovineList.text stringByAppendingString:[novine getFullName]];
        self.snovineList.text = [self.snovineList.text stringByAppendingString:@"\n"];
    }
}

@end
