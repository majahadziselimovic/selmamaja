//
//  day4AcademyViewController.h
//  Academy387Day4
//
//  Created by Faik Catibusic on 8/21/14.
//  Copyright (c) 2014 Faik Catibusic. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Novine.h"




@interface day4AcademyViewController : UIViewController

-(void)addNovineToArray:(Novine*) novine;

@property NSArray *snovine;



@property (weak, nonatomic) IBOutlet UILabel *snovineNumberTextbox;

@property (weak, nonatomic) IBOutlet UITextView *snovineList;

@end
