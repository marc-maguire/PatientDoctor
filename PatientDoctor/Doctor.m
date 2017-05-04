//
//  Doctor.m
//  PatientDoctor
//
//  Created by Marc Maguire on 2017-05-04.
//  Copyright © 2017 Marc Maguire. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"
#import "Prescription.h"
#import "PatientRecords.h"



@implementation Doctor

-(instancetype)initWithName:(NSString *)name andSpecialization:(NSString *)specialization {
    if (self = [super init]) {
        
        _name = name;
        _specialization = specialization;
        _acceptedPatients = [[NSMutableSet alloc]init];
        
        
    
    }
    return self;
}

-(BOOL)acceptPatient:(Patient *)patient {
    
    if (patient.hasValidHealthCard) {
        [self.acceptedPatients addObject:patient];
        return YES;
    } else {
        return NO;
    }
    
}

-(void)fillPrescriptionFor {
    
}

-(BOOL)approveMedicationRequestOf:(Patient *)patient{

    if (patient.currentSymptoms) {
        Prescription *prescription = [[Prescription alloc]init];
        prescription.symptoms = patient.currentSymptoms;
        PatientRecords *patientRecords = [PatientRecords sharedInstance];
        [patientRecords updatePatientRecordsFor:patient];
        
        
        
       
        return YES;
        
    } else {
        NSLog(@"You have no symptoms");
        return NO;
    }
    
}
//        if (patient.prescription) {
//            [patient.pastPrescriptions addObject:patient.prescription];
//            patient.prescription = prescription;
//        } else {
//            patient.prescription = prescription;
//        }

@end
