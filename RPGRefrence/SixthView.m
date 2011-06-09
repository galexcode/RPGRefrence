//
//  SixthView.m
//  RPGRefrence
//
//  Created by Carter Charbonneau on 5/28/11.
//  Copyright 2011 none. All rights reserved.
//

#import "SixthView.h"

@implementation SixthView
-(IBAction)gentreasure:(id)sender{
	sender2 = sender;
	switch (sender2) {
		case 001:{
			temp = (arc4random() % 100);
			if (temp < 13) {
				gold = 0;
			}
			else if (temp <= 14 & temp >= 28)
			{
				gold = ((arc4random() % 6) + 1) * 10;
			}
			else if (temp <= 29 & temp >= 51)
			{
				gold = ((arc4random() % 6) + 1) * 10;
			}
			else if (temp <= 52 & temp >= 94)
			{
				gold = (((arc4random() % 8) + 1) + ((arc4random() % 8) + 1)) * 10;
			}
			else if (temp <= 95 & temp >= 99)
			{
				gold = ((arc4random() % 4) + 1) * 100;
			}
			else printf("BUG");
				 
			temp = ((arc4random() % 100) + 1);
			if (temp <= 0 & temp >= 90)
			{
				
			}
			else if (temp <= 91 & temp >= 95)
			{
				[gentgems count: 1];
			}
			else if (temp <= 96 & temp >= 100)
		    {
				[gentart count: 1];
			}
		default:
			
	}
}
-(void)gentgems:(int)count{
	for ( ; count > 0; count--) {
		switch ((arc4random(100) + 1) {
			else if (temp <= 1-25:
				
			else if (temp <= 26-50:
				
			else if (temp <= 51-70:
				
			else if (temp <= 71-90
				
			else if (temp <= 91-99:
				
			else if (temp <= 100:
				
			default:
				
		}
	}
}
-(void)gentart:(int)count{
	artgold = 0;
	for ( ; count > 0; count--) {
		switch (arc4random(100)) {
			else if (temp <= 0-9:
				artgold = artgold + (((arc4random() % 10) + 1) * 10);
				
			else if (temp <= 10-24:
				artgold = artgold + ((((arc4random() % 6) + 1) + ((arc4random() % 6) + 1) + ((arc4random() % 6) + 1)) * 10);
				
			else if (temp <= 25-39:
				artgold = artgold + (((arc4random() % 6) + 1) * 100);
				
			else if (temp <= 40-49:
				artgold = artgold + (((arc4random() % 6) + 1) * 100);
				
			else if (temp <= 50-59:
				artgold = artgold + ((((arc4random() % 6) + 1) + ((arc4random() % 6) + 1)) * 100);
				
			else if (temp <= 60-69:
				artgold = artgold + ((((arc4random() % 6) + 1) + ((arc4random() % 6) + 1) + ((arc4random() % 6) + 1)) * 100);
				
			else if (temp <= 70-79:
				artgold = artgold + ((((arc4random() % 6) + 1) + ((arc4random() % 6) + 1) + ((arc4random() % 6) + 1) + ((arc4random() % 6) + 1)) * 100);
				
			else if (temp <= 80-84:
				artgold = artgold + ((((arc4random() % 6) + 1) + ((arc4random() % 6) + 1) + ((arc4random() % 6) + 1) + ((arc4random() % 6) + 1) + ((arc4random() % 6) + 1)) * 100);
			else if (temp <= 85-89:
				artgold = artgold + (((arc4random(4) + 1) * 1000);
				
			else if (temp <= 90-94:
				artgold = artgold + (((arc4random() % 6) + 1) * 1000);
				
			else if (temp <= 95-98:
				artgold = artgold + ((((arc4random(4) + 1) + ((arc4random(4) + 1)) * 1000);
				
			else if (temp <= 99:
				artgold = artgold + ((((arc4random() % 6) + 1) + ((arc4random() % 6) + 1)) * 1000);
				
			default:
				
		}
	}
}
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (void)didReceiveMemoryWarning{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}
#pragma mark - View lifecycle
- (void)viewDidLoad{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
- (void)viewDidUnload{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
@end
