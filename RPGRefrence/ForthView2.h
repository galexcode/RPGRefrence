//
//  ForthView2.h
//  RPGRefrence
//
//  Created by Carter Charbonneau on 4/24/11.
//  Copyright 2011 none. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ForthView2 : UIViewController {
    UIButton *resdis;
}
- (IBAction)roll;
@property(nonatomic, copy) IBOutlet UIButton *resdis;

@end
