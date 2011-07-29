//
//  SixthView1.h
//  RPGRefrence
//
//  Created by Carter Charbonneau on 6/10/11.
//  Copyright 2011 none. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SixthView : UITableViewController{
	int lvl;
	float gold;
	int artgold;
	NSNumber *gemgold;
	NSMutableArray *treasure;
	NSMutableArray *gems;
	NSMutableArray *art;
	NSArray *artGen;
	NSArray *gemsGen;
	NSMutableDictionary *tempDict;
	NSArray *treasureGen;
}


-(IBAction)gentreasure:(id)sender;
-(void)gentgems:(int)count;
-(void)gentart:(int)count;
-(int)roll:(int)count sides:(int)sides;
@property (nonatomic, retain) NSArray *artGen;
@property (nonatomic, retain) NSArray *gemsGen;
@property (nonatomic, retain) NSMutableDictionary *tempDict;
@end
