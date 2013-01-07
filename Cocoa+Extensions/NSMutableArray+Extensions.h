//
//  NSMutableArray+Extensions.h
//  Cocoa+Extensions
//
//  Created by iLucas.
//  http://github.com/ilucas/Cocoa+Extensions
//
//  Copyright (c) 2012-2013. All rights reserved.
//  Licensed under the New BSD License
//

#import <Foundation/Foundation.h>

@interface NSMutableArray (Extensions)

- (id)firstObject;
- (void)removeFirstObject;
- (NSMutableArray *)removeAllObjectsIdenticalTo:(id)object;
- (void)removeDuplicateObjectsWithOrderPreservation:(BOOL)flag;
- (void)insertObjects:(NSArray *)objects atIndex:(NSUInteger)index;

//Order
- (void)reverse;

//Random
- (id)randomObject;
- (NSUInteger)randomObjectIndex;
- (NSUInteger)removeRandomObject;
- (void)scramble;

//TODO:add Stack + Queue
@end