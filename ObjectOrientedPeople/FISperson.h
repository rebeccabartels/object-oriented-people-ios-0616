//
//  FISperson.h
//  ObjectOrientedPeople
//
//  Created by Rebecca Bartels on 6/15/16.
//  Copyright © 2016 al-tyus.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISPerson: NSObject

@property (strong,nonatomic,readonly) NSString *name;
@property (nonatomic,readonly) NSUInteger ageInYears;
@property (nonatomic,readonly) NSUInteger heightInInches;
@property (strong,nonatomic,readonly) NSMutableArray *skills;
@property (nonatomic, readonly) BOOL isQualified;

- (instancetype)init;
- (instancetype)initWithName:(NSString *)name
                  ageInYears:(NSUInteger)ageInYears;


- (instancetype)initWithName:(NSString *)name
                ageInYears:(NSUInteger)ageInYears
              heightInInches:(NSUInteger)heightInInches;
                                                                        //designated initializer -- must define the                                       instance type so that the methods aren't confused with the properties.

- (NSString *)celebrateBirthday;
- (void)learnSkillBash;
- (void)learnSkillXcode;
- (void)learnSkillObjectiveC;
- (void)learnSkillObjectOrientedProgramming;
- (void)learnSkillInterfaceBuilder;
- (BOOL)isQualifiedTutor;




@end
