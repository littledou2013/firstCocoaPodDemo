//
//  AppDelegate.m
//  testAppLife
//
//  Created by cxs on 2018/4/10.
//  Copyright © 2018年 cxs. All rights reserved.
//

#import "AppDelegate.h"
#import <objc/runtime.h>

@interface AppDelegate ()
{
    UIBackgroundTaskIdentifier _backgroundTaskIdentifier;
}
@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application willFinishLaunchingWithOptions:(nullable NSDictionary *)launchOptions {
      NSLog(@"%s, %@, %@", __FUNCTION__, application, @(application.applicationState));
    [self testUIAPplication];
    return YES;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
     NSLog(@"%s, %@, %@", __FUNCTION__, application, @(application.applicationState));
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
      NSLog(@"%s, %@, %@", __FUNCTION__, application, @(application.applicationState));
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
      NSLog(@"%s, %@, %@", __FUNCTION__, application, @(application.applicationState));
    NSNumber *number = [[NSUserDefaults standardUserDefaults] objectForKey:@"bcd"];
    if ([number isKindOfClass:[NSNumber class]]) {
        number = @(number.integerValue + 1);
    } else {
        number = @(0);
    }
    [[NSUserDefaults standardUserDefaults] setObject:number forKey:@"bcd"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    _backgroundTaskIdentifier = [application beginBackgroundTaskWithName:@"MyTask" expirationHandler:^{
        // Clean up any unfinished task business by marking where you
        // stopped or ending the task outright.
        [application endBackgroundTask:_backgroundTaskIdentifier];
        NSLog(@"backgourd %@",  @([UIApplication sharedApplication].backgroundTimeRemaining));
        _backgroundTaskIdentifier = UIBackgroundTaskInvalid;
    }];
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        for (int i = 0; i < 100000000; ++i) {
            NSLog(@"background %@, backgourd %@", @(i), @([UIApplication sharedApplication].backgroundTimeRemaining));
        }
    });
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
     NSLog(@"%s, %@, %@", __FUNCTION__, application, @(application.applicationState));
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     NSLog(@"%s, %@, %@", __FUNCTION__, application, @(application.applicationState));
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
     NSLog(@"%s, %@, %@", __FUNCTION__, application, @(application.applicationState));
    NSNumber *number = [[NSUserDefaults standardUserDefaults] objectForKey:@"abc"];
    if ([number isKindOfClass:[NSNumber class]]) {
        number = @(number.integerValue + 1);
    } else {
        number = @(0);
    }
    [[NSUserDefaults standardUserDefaults] setObject:number forKey:@"abc"];
    [[NSUserDefaults standardUserDefaults] synchronize];
//    for (int i = 0; i < 100000000; ++i) {
//        NSLog(@"termiate %@", @(i));
//    }
}


- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
    NSLog(@"object %@", object);
    NSLog(@"change %@", change);
//    if ([keyPath isEqualToString:@"applicationState"]) {
//
//    }
}

- (void)testUIAPplication {
//    UIApplication *application = [UIApplication sharedApplication];
//    [application setValue:@"ab" forKey:@"abc"];
//    unsigned int count = 0;
//    unsigned int icount = 0;
//    objc_property_t *properties = class_copyPropertyList([application class], &count);
//    Ivar *ivars  = class_copyIvarList([application class], &icount);
//    NSLog(@"count = %d, icount = %d", count, icount);
//    for (int i = 0; i < count; ++i) {
//        objc_property_t property = properties[i];
//        
//        //获取属性名称
//        NSString *propertyName = [[NSString alloc] initWithCString:property_getName(property) encoding:NSUTF8StringEncoding];
//        NSLog(@"propertyName: %@", propertyName);
//    }
//    
//    for (int i = 0; i < icount; ++i) {
//        NSString *memberName = [NSString stringWithCString:ivar_getName(ivars[i]) encoding:NSUTF8StringEncoding];
//        NSString *type = [NSString stringWithCString:ivar_getTypeEncoding(ivars[i]) encoding:NSUTF8StringEncoding];
//        NSLog(@"===ivalName: %@, type: %@", memberName, type);
//    }
}

@end
