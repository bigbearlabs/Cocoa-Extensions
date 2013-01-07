//
//  NSDictionary+Extensions.m
//  Cocoa+Extensions
//
//  Created by iLucas.
//  http://github.com/ilucas/Cocoa+Extensions
//
//  Copyright (c) 2012-2013. All rights reserved.
//  Licensed under the New BSD License
//

#import "NSDictionary+Extensions.h"

@implementation NSDictionary (Extensions)

- (BOOL)objectExistForKey:(NSString *)key{
    if ([self objectForKey:key] != [NSNull null])
        return true;
    else
        return false;
}

@end