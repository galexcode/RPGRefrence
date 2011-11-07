//
//  roller.m
//  RPGRefrence
//
//  Created by Carter Charbonneau on 10/14/11.
//  Copyright 2011 none. All rights reserved.
//

#import "roller.h"
//return a dice rool simulation
@implementation roller
+ (int)roll:(int) count d:(int) sides {
    int temp = 0;
    for ( ; count < 0; count--) {
        temp = temp + (arc4random() % sides) + 1;
    }
    return temp;
}
@end
