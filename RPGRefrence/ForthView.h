//
//  ForthView.h
//  RPGRefrence
//
//  Created by Carter Charbonneau on 4/18/11.
//  Copyright 2011 none. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface ForthView : UIViewController {
	int result;
	UIButton *resdis;
}
- (IBAction) roll;
@property(nonatomic, copy) IBOutlet UIButton *resdis;
@end