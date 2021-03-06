//
//  SubtractionQuestion.m
//  MathGame
//
//  Created by Suvan Ramani on 2016-11-02.
//  Copyright © 2016 suvanr. All rights reserved.
//

#import "SubtractionQuestion.h"

@implementation SubtractionQuestion

-(instancetype)init {
    
    if (self = [super init]) {
        [self generateQuestion];
    }
    
    return self;
    
}


// no decleration in SubtractionQuestion.h because this is a method of the superclass Question
- (void)generateQuestion {
    
    if (super.rightValue > super.leftValue) {
        
        super.realAnswer = super.rightValue - super.leftValue;
        
        super.aQuestion = [NSString stringWithFormat:@"What is %ld - %ld?", (long)super.rightValue, (long)super.leftValue];
        
    } else {
        
        super.realAnswer = super.leftValue - super.rightValue;
        
        super.aQuestion = [NSString stringWithFormat:@"What is %ld - %ld?", (long)super.leftValue, (long)super.rightValue];
    }
    
    super.correctAnswerString = [NSString stringWithFormat:@"%ld", (long)super.realAnswer];
    
    NSLog(@"%@", super.aQuestion);
    
}

@end
