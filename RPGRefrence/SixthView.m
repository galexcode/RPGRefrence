//  SixthView1.m
//  RPGRefrence
//
//  Created by Carter Charbonneau on 6/10/11.
//  Copyright 2011 none. All rights reserved.

#import "SixthView.h"

@implementation SixthView
@synthesize artGen, gemsGen, tempDict;

- (NSString *)pathForPlist {
	return [[NSBundle mainBundle] pathForResource:@"ddTreasure" ofType:@"plist"];
}

- (NSMutableDictionary *)dictionaryFromPropertyList {
	NSData *data = [NSData dataWithContentsOfFile:[self pathForPlist]];
	NSString *errorString  = nil;
	NSPropertyListFormat format;
	NSMutableDictionary *d = [NSPropertyListSerialization propertyListFromData:data mutabilityOption:NSPropertyListMutableContainersAndLeaves format:&format errorDescription:&errorString];
	return d;
}

- (void)getArrays {
	NSMutableDictionary *d = [self dictionaryFromPropertyList];
	self.artGen = [d valueForKey:@"artObjects"];
	self.gemsGen = [d valueForKey:@"gems"];
} 
-(void)gentart:(int)count{
	//	artgold = 0;
	//	for ( ; count > 0; count--) {
	//		temp = (arc4random() % 100); {
	//			if (temp <= 0 & temp >= 9)
	//			{
	//				artgold = artgold + (((arc4random() % 10) + 1) * 10);
	//				[art arrayByAddingObject:@"Average value: 10 gp"];
	//			}
	//			else if (temp <= 10 & temp >= 24)
	//			{
	//				artgold = artgold + ((((arc4random() % 6) + 1) + ((arc4random() % 6) + 1) + ((arc4random() % 6) + 1)) * 10);
	//				[art arrayByAddingObject:@"Average value: 10 gp"];
	//			}
	//			else if (temp <= 25 & temp >= 39)
	//			{
	//				artgold = artgold + (((arc4random() % 6) + 1) * 100);
	//				[art arrayByAddingObject:@"Average value: 10 gp"];
	//			}
	//			else if (temp <= 40 & temp >= 49)
	//			{
	//				artgold = artgold + (((arc4random() % 6) + 1) * 100);
	//				[art arrayByAddingObject:@"Average value: 10 gp"];
	//			}	
	//			else if (temp <= 50 & temp >= 59)
	//			{
	//				artgold = artgold + ((((arc4random() % 6) + 1) + ((arc4random() % 6) + 1)) * 100);
	//				[art arrayByAddingObject:@"Average value: 10 gp"];
	//			}	
	//			else if (temp <= 60 & temp >= 69)
	//			{
	//				artgold = artgold + ((((arc4random() % 6) + 1) + ((arc4random() % 6) + 1) + ((arc4random() % 6) + 1)) * 100);
	//				[art arrayByAddingObject:@"Average value: 10 gp"];
	//			}	
	//			else if (temp <= 70 & temp >= 79)
	//			{
	//				artgold = artgold + ((((arc4random() % 6) + 1) + ((arc4random() % 6) + 1) + ((arc4random() % 6) + 1) + ((arc4random() % 6) + 1)) * 100);
	//				[art arrayByAddingObject:@"Average value: 10 gp"];
	//			}
	//			else if (temp <= 80 & temp >= 84)
	//			{
	//				artgold = artgold + ((((arc4random() % 6) + 1) + ((arc4random() % 6) + 1) + ((arc4random() % 6) + 1) + ((arc4random() % 6) + 1) + ((arc4random() % 6) + 1)) * 100);
	//				[art arrayByAddingObject:@"Average value: 10 gp"];
	//			}
	//			else if (temp <= 85 & temp >= 89)
	//			{
	//				artgold = artgold + (((arc4random() % 4)+ 1) * 1000);
	//				[art arrayByAddingObject:@"Average value: 10 gp"];
	//			}	
	//			else if (temp <= 90 & temp >= 94)
	//			{
	//				artgold = artgold + (((arc4random() % 6) + 1) * 1000);
	//				[art arrayByAddingObject:@"Average value: 10 gp"];
	//			}	
	//			else if (temp <= 95 & temp >= 98)
	//			{
	//				artgold = artgold + ((((arc4random() % 4) + 1) + ((arc4random() % 4) + 1)) * 1000);
	//				[art arrayByAddingObject:@"Average value: 10 gp"];
	//			}	
	//			else if (temp <= 99)
	//			{
	//				artgold = artgold + ((((arc4random() % 6) + 1) + ((arc4random() % 6) + 1)) * 1000);
	//				
	//			}	
	//			
	//		}
	//	}
}
-(int)roll:(int)count sides:(int)sides{
	int temp = 0;
	for ( ; count < 0; count = count - 1) {
		temp = temp + (arc4random() % sides) + 1;
	}
	return temp;
}
-(IBAction)gentreasure:(id)sender{
//	switch (sender) {
//		case 001:{
//			temp = (arc4random() % 100);
//			if (temp < 13) {
//				gold = 0;
//			}
//			else if (temp <= 14 & temp >= 28)
//			{
//				gold = ((arc4random() % 6) + 1) * 10;
//			}
//			else if (temp <= 29 & temp >= 51)
//			{
//				gold = ((arc4random() % 6) + 1) * 10;
//			}
//			else if (temp <= 52 & temp >= 94)
//			{
//				gold = (((arc4random() % 8) + 1) + ((arc4random() % 8) + 1)) * 10;
//			}
//			else if (temp <= 95 & temp >= 99)
//			{
//				gold = ((arc4random() % 4) + 1) * 100;
//			}
//			else printf("BUG");
//			
//			temp = ((arc4random() % 100) + 1);
//			if (temp <= 0 & temp >= 90)
//			{
//				
//			}
//			else if (temp <= 91 & temp >= 95)
//			{
//				[self gentgems:1];
//			}
//			else if (temp <= 96 & temp >= 100)
//		    {
//				[self gentart:1];
//			}
//			break;
//		default:
//			break;
//		}
//	}
}
-(void)gentgems:(int)count{
//	BOOL result = NO;
//	for (NSMutableDictionary *d in self.gemsGen) {
//		NSLog([d description]);
//	}
	int test = 0, tempOld = 1;
	int temp = (arc4random() % 100);
	
	for (bool result = NO ;result == YES || test > gemsGen.count; test++) {
		self.tempDict = [gemsGen objectAtIndex:test];
		if (temp >= tempOld & temp <= [tempDict objectForKey:@"endingRoll"]) {
			gemgold = [self roll:[tempDict objectForKey:@"dice"] sides:[tempDict objectForKey:@"sides"]];
					   result = YES;
	}
	
	
	
	
	
	
}
}





- (id)initWithStyle:(UITableViewStyle)style
{	
	int tempOld;
    self = [super initWithStyle:style];
    if (self) {
        tempOld = 1;
		[self getArrays];
		[self gentgems:0];
		
		
		
		
    }
    return self;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
	self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
	[self getArrays];
	[self gentgems:0];
	return self;
}

- (id)init {
	self = [self initWithNibName:@"SixthView.xib" bundle:nil]; 
	return self;
}
- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    //[super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
	//self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
//    return 3;
	return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
//    return [treasure count];
	return artGen.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *MyIdentifier = @"MyIdentifier";
	
	// Try to retrieve from the table view a now-unused cell with the given identifier.
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:MyIdentifier];
	
	// If no cell is available, create a new one using the given identifier.
	if (cell == nil) {
		// Use the default cell style.
		cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:MyIdentifier] autorelease];
	}
	
	// Set up the cell.
//	NSString *treasureObject = [treasure objectAtIndex:indexPath.row];
//	cell.textLabel.text = treasureObject;
	cell.textLabel.text = [[artGen objectAtIndex:indexPath.row] objectAtIndex:0];
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     [detailViewController release];
     */
}

@end
