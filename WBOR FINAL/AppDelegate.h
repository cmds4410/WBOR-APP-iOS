//
//  AppDelegate.h
//  WBOR FINAL
//
//  Created by Connor Smith on 12/16/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#ifndef kCFCoreFoundationVersionNumber_iPhoneOS_4_0
#define kCFCoreFoundationVersionNumber_iPhoneOS_4_0 550.32
#endif
@interface AppDelegate : UIResponder <UIApplicationDelegate> {
    
    BOOL uiIsVisible;
    
}

@property (strong, nonatomic) UIWindow *window;

@end
