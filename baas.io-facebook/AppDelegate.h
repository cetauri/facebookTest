//
//  AppDelegate.h
//  baas.io-facebook
//
//  Created by cetauri on 13. 2. 15..
//  Copyright (c) 2013년 io.baas. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) ViewController *viewController;

- (void)openSession:(BOOL)allowLoginUI;
@end
