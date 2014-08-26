//
//  day4AcademyAddStudentViewController.h
//  Academy387Day4
//
//  Created by Faik Catibusic on 8/21/14.
//  Copyright (c) 2014 Faik Catibusic. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Novine.h"

@interface day4AcademyAddStudentViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *naslovTextBox;

@property (weak, nonatomic) IBOutlet UITextField *tipTextBox;

@property (weak, nonatomic) IBOutlet UITextField *izdavanjeTextBox;

@property Novine *localNovine;

@end
