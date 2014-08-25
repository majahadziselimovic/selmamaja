//
//  Novine.h
//  Academy387Day4
//
//  Created by user23983 on 25/08/14.
//  Copyright (c) 2014 Faik Catibusic. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Novine : NSObject

@property NSString *naslovNovina;

@property NSString *tipNovina;

- (id)initWithFirstName:(NSString *)naslovNovina tipNovina:(NSString *)tipNovina;

-(NSString*)getFullName;

-(void)changeFirstAndLastName:(NSString*)naslovNovina tipNovina:(NSString*)tipNovina;

+ (NSString*)whoAmI;

@end
