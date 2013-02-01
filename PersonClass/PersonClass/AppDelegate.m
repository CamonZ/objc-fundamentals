//
//  AppDelegate.m
//  PersonClass
//
//  Created by CamonZ on 2/1/13.
//  Copyright (c) 2013 CamonZ. All rights reserved.
//

#import "AppDelegate.h"
#import "Person.h"
#import "Teacher.h"
#import "Student.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
  
  Person *person = [[Person alloc]
                    initWithName:@"Collin"
                    age:[NSNumber numberWithInt:23]
                    gender:Male];
  
  Student *student = [[Student alloc]
                      initWithName:@"Collin"
                      age:[NSNumber numberWithInt:23]
                      gender:Male
                      classes:[NSArray arrayWithObjects:@"English",
                               @"Spanish",
                               @"Math", nil]
                      numberOfCredits:[NSNumber numberWithInt:12]
                      major:@"CS"];
  
  Teacher *teacher = [[Teacher alloc]
                      initWithName:@"Winslow"
                      age:[NSNumber numberWithInt:30]
                      gender:Male
                      classes:[NSArray arrayWithObjects:@"ARM",
                               @"Imerssive Gaming",
                               @"Physical Computing", nil]
                      salary:[NSNumber numberWithInt:60000]
                      expertise:@"HCI"];
  NSLog(@"My person description is:\n%@", person);
  NSLog(@"My student description is:\n%@", student);
  NSLog(@"My teacher description is:\n%@", teacher);
  
  return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
  // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
  // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
  // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
  // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
  // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
  // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
  // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
