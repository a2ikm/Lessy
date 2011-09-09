//
//  MyWindow.h
//  Lessy
//
//  Created by Masato IKEDA on 11/09/09.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Quartz/Quartz.h>


@interface MyWindow : NSWindow {
    PDFView *pdfView;
}
@property (nonatomic, retain) IBOutlet PDFView *pdfView;

@end
