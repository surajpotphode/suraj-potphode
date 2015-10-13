//
//  MySingleton.h
//  level5assignment1(shoppingApp)
//
//  Created by Mindstix Software on 06/10/15.
//  Copyright (c) 2015 Mindstix Software. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MySingleton : NSObject {
    NSMutableArray *wishlistArray;
}

@property (nonatomic, retain) NSMutableArray *wishlistArray;

+ (id) sharedSingletonObject;

@end
