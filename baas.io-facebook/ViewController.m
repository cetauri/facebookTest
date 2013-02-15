//
//  ViewController.m
//  baas.io-facebook
//
//  Created by cetauri on 13. 2. 15..
//  Copyright (c) 2013년 io.baas. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"

@interface ViewController ()

@end

@implementation ViewController
- (void)loadView{
    [super loadView];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake((self.view.frame.size.width - 200)/2, 200, 200, 44);
    [self.view addSubview:button];

    // See if we have a valid token for the current state.
    if (FBSession.activeSession.state == FBSessionStateCreatedTokenLoaded) {
        // To-do, show logged in view
        [button setTitle:@"Logout" forState:UIControlStateNormal];
        [button addTarget:self action:@selector(logout) forControlEvents:UIControlEventTouchDown];
    } else {
        // No, display the login page.
        [button setTitle:@"Login" forState:UIControlStateNormal];
        [button addTarget:self action:@selector(login) forControlEvents:UIControlEventTouchDown];
    }
}

- (void)logout
{
    [[FBSession activeSession] closeAndClearTokenInformation];
    [self loadView];
}

- (void)login
{
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    [appDelegate openSession:YES];
    
    [self loadView];
}
@end
