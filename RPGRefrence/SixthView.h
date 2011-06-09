//
//  SixthView.h
//  RPGRefrence
//
//  Created by Carter Charbonneau on 5/28/11.
//  Copyright 2011 none. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SixthView : UIViewController{
	int lvl;
	float gold;
	int artgold;
	int gemgold;
	int	sender2; //temp value for storin value from selection in UI
	int temp; //temp value for nested randomness
}
-(IBAction)gentreasure:(id)sender;
-(void)gentgems:(int)count;
-(void)gentart:(int)count;

@end
