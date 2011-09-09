//
//  MyDocument.m
//  Lessy
//
//  Created by Masato IKEDA on 11/09/09.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MyDocument.h"

@implementation MyDocument

@synthesize pdfView, document;

- (id)init
{
    self = [super init];
    if (self) {
        // Add your subclass-specific initialization here.
        // If an error occurs here, send a [self release] message and return nil.
        document = nil;
    }
    return self;
}

- (void)dealloc {
    [document release];
    [super dealloc];
}

- (NSString *)windowNibName
{
    // Override returning the nib file name of the document
    // If you need to use a subclass of NSWindowController or if your document supports multiple NSWindowControllers, you should remove this method and override -makeWindowControllers instead.
    return @"MyDocument";
}

- (void)windowControllerDidLoadNib:(NSWindowController *)aController
{
    [super windowControllerDidLoadNib:aController];
    [pdfView setDocument:document];
}

- (NSData *)dataOfType:(NSString *)typeName error:(NSError **)outError {
    return [[self document] dataRepresentation];
}

- (BOOL)readFromData:(NSData *)data ofType:(NSString *)typeName error:(NSError **)outError {
    document = [[PDFDocument alloc] initWithData:data];
    return YES;
}

@end
