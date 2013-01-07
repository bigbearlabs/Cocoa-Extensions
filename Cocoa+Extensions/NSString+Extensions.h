//
//  NSString+Extensions.h
//  Cocoa+Extensions
//
//  Created by iLucas.
//  http://github.com/ilucas/Cocoa-Extensions
//
//  Copyright (c) 2012-2013. All rights reserved.
//  Licensed under the New BSD License
//

#import <Foundation/Foundation.h>

@interface NSString (Extensions)

- (BOOL)contains:(NSString *)aString;

- (NSString *)stringByRemovingNewLinesAndWhitespace;
- (NSArray *)componentsSeparatedByWords;

- (NSRange)range;

@end