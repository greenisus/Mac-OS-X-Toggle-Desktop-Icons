//
//  ToggleDesktopIconsAppDelegate.m
//  ToggleDesktopIcons
//
//  Created by Michael Mayo on 12/29/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "ToggleDesktopIconsAppDelegate.h"

@implementation ToggleDesktopIconsAppDelegate

@synthesize window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    NSMutableDictionary *dict = [[defaults persistentDomainForName:@"com.apple.finder"] mutableCopy];
    BOOL iconsVisible = [[dict valueForKey:@"CreateDesktop"] boolValue];
    [dict setValue:[NSNumber numberWithBool:!iconsVisible] forKey:@"CreateDesktop"];
    [defaults setPersistentDomain:dict forName:@"com.apple.finder"];

    NSTask *task;
    task = [[NSTask alloc] init];
    [task setLaunchPath: @"/usr/bin/killall"];
    
    NSArray *arguments;
    arguments = [NSArray arrayWithObjects: @"Finder", nil];
    [task setArguments: arguments];
    
    [task launch];
    
    [[NSApplication sharedApplication] terminate:nil];
  
//defaults read com.apple.finder CreateDesktop
//defaults write com.apple.finder CreateDesktop -bool false
//defaults write com.apple.finder CreateDesktop -bool true    
}

@end
