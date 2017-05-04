//
//  PatientRecords.h
//  PatientDoctor
//
//  Created by Marc Maguire on 2017-05-04.
//  Copyright © 2017 Marc Maguire. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"

@interface PatientRecords : NSObject

@property (nonatomic, strong) NSMutableDictionary<NSString*,NSMutableArray*> *patientRecords; //NSArray of Prescriptions

+ (PatientRecords*)sharedInstance;
- (void)updatePatientRecordsFor:(Patient *)patient;

@end
