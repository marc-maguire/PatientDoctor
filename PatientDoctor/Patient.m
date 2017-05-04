//
//  Patient.m
//  PatientDoctor
//
//  Created by Marc Maguire on 2017-05-04.
//  Copyright © 2017 Marc Maguire. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"

@implementation Patient

- (instancetype)initWithName:(NSString *)name andAge:(NSInteger)age {
    
    if (self = [super init]) {
        
        _name = name;
        _age = age;
        _hasValidHealthCard = YES;
        _doctor = nil;
        
    }
    
    
    return self;
}

-(void)visitDoctor:(Doctor *)doctor {
    
}

@end
