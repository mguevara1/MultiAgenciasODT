//
//  MultiAgenciasODTAppDelegate.m
//  MultiAgenciasODT
//
//  Created by Marco Guevara on 17/08/13.
//  Copyright (c) 2013 Wapps. All rights reserved.
//

#import "MultiAgenciasODTAppDelegate.h"

@implementation MultiAgenciasODTAppDelegate

@synthesize segueFoto;
@synthesize fechaEntrega;
@synthesize recibidoPor_nombre;
@synthesize recibidoPor_tel;
@synthesize foto1;
@synthesize foto2;
@synthesize foto3;
@synthesize foto4;
@synthesize foto5;
@synthesize foto6;
@synthesize facturarA;
@synthesize NIT;
@synthesize propietario;
@synthesize piloto;
@synthesize correo;
@synthesize telefono;
@synthesize celular;

@synthesize accesorios;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    foto1 = [[UIImage alloc] init];
    foto2 = [[UIImage alloc] init];
    foto3 = [[UIImage alloc] init];
    foto4 = [[UIImage alloc] init];
    accesorios = [[NSMutableArray alloc] init];
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
