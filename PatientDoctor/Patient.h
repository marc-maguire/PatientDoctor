//
//  Patient.h
//  PatientDoctor
//
//  Created by Marc Maguire on 2017-05-04.
//  Copyright © 2017 Marc Maguire. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Doctor;
#import "Prescription.h"

@interface Patient : NSObject

//do we have the doctor patient relationship as weak?
@property (nonatomic, weak) Doctor *doctor;
@property (nonatomic, strong) NSString *name;
@property (nonatomic) NSInteger age;
@property (nonatomic) BOOL hasValidHealthCard;
@property (nonatomic) NSString *currentSymptoms;
@property (nonatomic) Prescription *prescription;
//@property (nonatomic) NSMutableArray<Prescription *> *pastPrescriptions; //of Prescription

- (instancetype)initWithName:(NSString *)name andAge:(NSInteger)age;
- (void)visitDoctor:(Doctor *)doctor;
- (void)requestMedicationFrom:(Doctor *)doctor;

@end
