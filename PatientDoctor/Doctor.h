//
//  Doctor.h
//  PatientDoctor
//
//  Created by Marc Maguire on 2017-05-04.
//  Copyright © 2017 Marc Maguire. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Patient;

@interface Doctor : NSObject


@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *specialization;
@property (nonatomic) NSMutableSet<Patient *> *acceptedPatients;//of Patients

-(instancetype)initWithName:(NSString *)name andSpecialization:(NSString *)specialization;
-(BOOL)acceptPatient:(Patient *)patient;
-(BOOL)approveMedicationRequestOf:(Patient *)patient;

@end
