//
//  MyWindow.m
//  Lessy
//
//  Created by Masato IKEDA on 11/09/09.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MyWindow.h"

@implementation MyWindow

@synthesize pdfView;

- (void)keyDown:(NSEvent *)theEvent {
    if ([[theEvent characters] isEqualToString:@"n"]) {
        [pdfView goToNextPage:self];
    } else if ([[theEvent characters] isEqualToString:@"b"]) {
        [pdfView goToPreviousPage:self];
    } else {
        [super keyDown:theEvent];
    }
}

@end
