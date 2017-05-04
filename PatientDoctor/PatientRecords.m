//
//  PatientRecords.m
//  PatientDoctor
//
//  Created by Marc Maguire on 2017-05-04.
//  Copyright © 2017 Marc Maguire. All rights reserved.
//

#import "PatientRecords.h"


@implementation PatientRecords

-(instancetype)init {
    if (self = [super init]) {
        
        _patientRecords = [[NSMutableDictionary alloc]init];
 
    }
    
    return self;
}

//singleton

+ (PatientRecords*)sharedInstance
{
    static PatientRecords *patientRecords = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        patientRecords = [[PatientRecords alloc] init];

    });
   
    return patientRecords;
}

-(void)updatePatientRecordsFor:(Patient *)patient {
    
    if (![self.patientRecords doesContain:patient.name]) {
        self.patientRecords[patient.name] = [[NSMutableArray alloc]initWithObjects:patient.prescription, nil];
    } else {
        [self.patientRecords[patient.name] addObject:patient.prescription];
    }
    
   
    
    
    
}

@end
