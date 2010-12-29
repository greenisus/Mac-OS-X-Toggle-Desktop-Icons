//
//  ToggleDesktopIconsAppDelegate.h
//  ToggleDesktopIcons
//
//  Created by Michael Mayo on 12/29/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ToggleDesktopIconsAppDelegate : NSObject <NSApplicationDelegate> {
    NSWindow *window;
}

@property (assign) IBOutlet NSWindow *window;

@end
