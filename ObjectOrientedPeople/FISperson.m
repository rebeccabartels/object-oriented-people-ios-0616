//
//  FISperson.m
//  ObjectOrientedPeople
//
//  Created by Rebecca Bartels on 6/15/16.
//  Copyright © 2016 al-tyus.com. All rights reserved.
//

#import "FISperson.h"

@interface FISPerson ()



@property (strong, nonatomic, readwrite) NSString *name;            //maybe order?
@property (nonatomic,readwrite) NSUInteger ageInYears;
@property (nonatomic,readwrite) NSUInteger heightInInches;
@property (strong, nonatomic,readwrite) NSMutableArray *skills;
@property (nonatomic, readwrite) BOOL isQualified;


@end

@implementation FISPerson


//Move to the .m implementation file. Utilizing autocomplete to quickly fill in the method name, initially define the methods to:
//For the initializers, init, initWithName:ageInYears:, and initWithName:ageInYears:heightInInches:

-(NSString *)celebrateBirthday {

    
    self.ageInYears = self.ageInYears +1; //adds one to ageInYears
    NSString *birthdayMessage = [NSString stringWithFormat:@"HAPPY %lu%@ BIRTHDAY, %@!!!", self.ageInYears, [[self ordinalForInteger:self.ageInYears] uppercaseString], [self.name uppercaseString]];
    NSLog(@"%@", birthdayMessage);
    return birthdayMessage;

}

// helper method-- WHAT IS THIS DOING?
- (NSString *)ordinalForInteger:(NSUInteger)integer {
    NSString *ordinal = @"th";
    if (integer % 10 == 1 && integer % 100 != 11) {
        ordinal = @"st";
    } else if (integer % 10 == 2 && integer % 100 != 12) {
        ordinal = @"nd";
    } else if (integer % 10 == 3 && integer % 100 != 13) {
        ordinal = @"rd";
    }
    return ordinal;
}


-(BOOL)isQualifiedTutor {
   // if (![self.skills containsObject:@"bash", && @"Xcode", && @"Objective-C", && @"Object-Oriented Programming", && @"Interface Builder"]) {


    
        if ([self.skills count] >= 4) {
            return YES;
        }
//        else {
//            self.isQualified = NO;
//        }
    return NO;
}




//Below is supposed to be my DESIGNATED initializer
-(instancetype)initWithName:(NSString *)name ageInYears:(NSUInteger)ageInYears heightInInches:(NSUInteger)heightInInches {
    self = [super init];
    if (self) {
        _name = name;
        _ageInYears=ageInYears;
        _heightInInches=heightInInches;
        _skills = [[NSMutableArray alloc]init];
    }
        return self;
    
}


//OVERIDING THE DEFAULT INITIALIZER BELOW.
// AM I MISSING SOMETHING WITH THIS TIP? Top-tip: The NSMutableArray ivar should be initialized to an empty NSMutableArray using [[NSMutableArray alloc] init];


-(instancetype) init {
    self = [self initWithName:@"Charlemagne" ageInYears:(23) heightInInches:(145)];
            return self;
}

//BELOW IS MY CONVENIENCE INITIALIZER

-(instancetype)initWithName:(NSString *)name ageInYears:(NSUInteger)ageInYears{
    self=[self initWithName:name ageInYears:ageInYears heightInInches:71];
    return self;
}

//Q. how can you manipulate objects with in a method? What are the limits?
//A. made a new array with the string object "bash". Then, I set the property skills to equal to the new array. Then I logged the new array so that the variable is used and it rendered the string "bash" within the array.
- (void)learnSkillBash {
    
//    NSMutableArray *newArray = [[NSMutableArray alloc]initWithObjects:@"bash", nil];
    
    
    if ([self.skills containsObject:@"bash"]) {
        return;
    } else {
    [self.skills addObject:@"bash"];
    }
    
    NSLog(@"%@", self.skills);
}

- (void)learnSkillXcode {

//    NSMutableArray *newArray =[[NSMutableArray alloc]initWithObjects:@"Xcode", nil];
//    self.skills=newArray;
//    NSLog(@"%@", newArray);
    if ([self.skills containsObject:@"Xcode"]) {   ///DO THIS FOR ALL THE METHODS BELOW
        return;
    } else {
        [self.skills addObject:@"Xcode"];
    }
    
    
    
}

- (void)learnSkillObjectiveC{
//    NSMutableArray *newArray =[[NSMutableArray alloc]initWithObjects:@"Objective-C", nil];
//    self.skills=newArray;
//    NSLog(@"%@", newArray);
    if ([self.skills containsObject:@"Objective-C"]) {
        return;
    } else {
        [self.skills addObject:@"Objective-C"];
    }
    
}

- (void)learnSkillObjectOrientedProgramming{
//    NSMutableArray *newArray =[[NSMutableArray alloc]initWithObjects:@"Object-Oriented Programming", nil];
//    self.skills=newArray;
//    NSLog(@"%@", newArray);
    if ([self.skills containsObject:@"Object-Oriented Programming"]) {
        return;
    } else {
        [self.skills addObject:@"Object-Oriented Programming"];
    }
    

}

- (void)learnSkillInterfaceBuilder{
//    NSMutableArray *newArray =[[NSMutableArray alloc]initWithObjects:@"Interface Builder", nil];
//    self.skills=newArray;
//    NSLog(@"%@", newArray);
    if ([self.skills containsObject:@"Interface Builder"]) {
        return;
    } else {
        [self.skills addObject:@"Interface Builder"];
    }
    

}




















@end
