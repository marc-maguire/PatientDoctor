//
//  Doctor.m
//  PatientDoctor
//
//  Created by Marc Maguire on 2017-05-04.
//  Copyright © 2017 Marc Maguire. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"

@implementation Doctor

-(instancetype)initWithName:(NSString *)name andSpecialization:(NSString *)specialization {
    if (self = [super init]) {
        
        _name = name;
        _specialization = specialization;
        _acceptedPatients = [[NSMutableArray alloc]init];
    
    }
    return self;
}

-(void)acceptPatient:(Patient *)patient {
    
    if (patient.hasValidHealthCard) {
        [self.acceptedPatients addObject:patient];
    }
    
}


@end
