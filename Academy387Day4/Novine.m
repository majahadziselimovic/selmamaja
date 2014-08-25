//
//  Novine.m
//  Academy387Day4
//
//  Created by user23983 on 25/08/14.
//  Copyright (c) 2014 Faik Catibusic. All rights reserved.
//

#import "Novine.h"

@implementation Novine

- (id)initWithFirstName:(NSString *)naslovNovina tipNovina:(NSString *)tipNovina {
    self = [super init];
    
    self.naslovNovina = naslovNovina;
    self.tipNovina = tipNovina;
    
    return self;
}

-(NSString*)getFullName {
    NSString *fullName = [[NSString alloc] initWithFormat:@"%@, %@", self.naslovNovina, self.tipNovina];
    return fullName;
}

+ (NSString*)whoAmI {
    return @"Novine class";
}

- (void)changeFirstName:(NSString*)naslovNovina {
    self.naslovNovina = naslovNovina;
}

- (void)changeLastName:(NSString*)tipNovina{
    self.tipNovina = tipNovina;
}

-(void)changeFirstAndLastName:(NSString*)naslovNovina tipNovina:(NSString*)tipNovina {
    self.naslovNovina = naslovNovina;
    self.tipNovina = tipNovina;
}

@end
