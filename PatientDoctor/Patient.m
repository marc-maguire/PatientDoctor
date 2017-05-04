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
        
        _doctor = nil;
        _name = name;
        _age = age;
        _hasValidHealthCard = YES;
        _currentSymptoms = nil;
        _prescription = nil;
//        _pastPrescriptions = [[NSMutableArray alloc]init];
    }
    
    
    return self;
}

-(void)visitDoctor:(Doctor *)doctor {
    
    if ([doctor acceptPatient:self]){
        self.doctor = doctor;
    } else {
        NSLog(@"Doctor did not accept you");
    }
}

- (void)requestMedicationFrom:(Doctor *)doctor{
    
    if ([self.doctor.acceptedPatients containsObject:self]) {
        [doctor approveMedicationRequestOf:self];
    }
    
}



@end
