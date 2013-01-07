//
//  NSString+Extensions.m
//  Cocoa+Extensions
//
//  Created by iLucas.
//  http://github.com/ilucas/Cocoa-Extensions
//
//  Copyright (c) 2012-2013. All rights reserved.
//  Licensed under the New BSD License
//

#import "NSString+Extensions.h"

@implementation NSString (Extensions)

- (BOOL)contains:(NSString *)aString{
    if ([self rangeOfString:aString].location == NSNotFound)
        return NO;
    else
        return YES;
}

//FROM: Michael Waterfall MWFeedParser
- (NSString *)stringByRemovingNewLinesAndWhitespace {
	// Scanner
	NSScanner *scanner = [[NSScanner alloc] initWithString:self];
	[scanner setCharactersToBeSkipped:nil];
	NSMutableString *result = [[NSMutableString alloc] init];
	NSString *temp;
	NSCharacterSet *characterSet = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    
    // Scan
	while (![scanner isAtEnd]) {
		// Get non new line or whitespace characters
		temp = nil;
		[scanner scanUpToCharactersFromSet:characterSet intoString:&temp];
		if (temp) [result appendString:temp];
        
		// Replace with a space
		if ([scanner scanCharactersFromSet:characterSet intoString:NULL]) {
			if (result.length > 0 && ![scanner isAtEnd]) // Dont append space to beginning or end of result
				[result appendString:@" "];
		}
        
	}
    
	// Return
	NSString *retString = [NSString stringWithString:result];
    
	// Return
	return retString;
}

- (NSArray *)componentsSeparatedByWords{
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"\\w+" options:NSRegularExpressionCaseInsensitive error:nil];
    __block NSMutableArray *array = [NSMutableArray array];
    
    [regex enumerateMatchesInString:self options:NSMatchingReportProgress range:self.range usingBlock:^(NSTextCheckingResult *result, NSMatchingFlags flags, BOOL *stop){
        if (result)
            [array addObject:[self substringWithRange:result.range]];
    }];
    
    /* TODO: test wich one is the fastest way
    [self enumerateSubstringsInRange:[self range]
                             options:NSStringEnumerationByWords
                          usingBlock:^(NSString *word, NSRange wordRange, NSRange enclosingRange, BOOL *stop){
         [array addObject:word];
     }];
    */
     
    return array;
}

- (NSRange)range{
    return NSMakeRange(0, self.length);
}

@end