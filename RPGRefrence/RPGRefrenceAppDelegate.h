//
//  RPGRefrenceAppDelegate.h
//  RPGRefrence
//
//  Created by Carter Charbonneau on 4/18/11.
//  Copyright 2011 none. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RPGRefrenceAppDelegate : NSObject <UIApplicationDelegate, UITabBarControllerDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet UITabBarController *tabBarController;

@end
