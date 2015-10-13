//
//  MySingleton.m
//  level5assignment1(shoppingApp)
//
//  Created by Mindstix Software on 06/10/15.
//  Copyright (c) 2015 Mindstix Software. All rights reserved.
//

#import "MySingleton.h"

@implementation MySingleton

@synthesize wishlistArray;

#pragma mark Singleton Methods

+ (id)sharedSingletonObject {
    static MySingleton *sharedObject = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedObject = [[self alloc] init];
    });
    return sharedObject;
}

- (id)init {
    if (self = [super init]) {
        wishlistArray = [[NSMutableArray alloc] init];
    }
    return self;
}

@end
