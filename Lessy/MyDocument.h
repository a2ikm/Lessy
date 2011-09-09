//
//  MyDocument.h
//  Lessy
//
//  Created by Masato IKEDA on 11/09/09.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <Quartz/Quartz.h>

@interface MyDocument : NSDocument {
    PDFView *pdfView;
    PDFDocument *document;
}

@property (nonatomic, retain) IBOutlet PDFView *pdfView;
@property (nonatomic, retain) PDFDocument *document;

@end
