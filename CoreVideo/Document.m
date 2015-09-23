//
//  Document.m
//  CoreVideo
//
//  Created by admin on 15/9/11.
//  Copyright (c) 2015年 cn.lztech  合肥联正电子科技有限公司. All rights reserved.
//

#import "Document.h"
#import "AppDelegate.h"
#import "MyCache.h"
@interface Document ()



@end

@implementation Document

- (instancetype)init {
    self = [super init];
    if (self) {
        // Add your subclass-specific initialization here.
    }
    return self;
}



- (void)windowControllerDidLoadNib:(NSWindowController *)aController {
    //[super windowControllerDidLoadNib:aController];
    // Add any code here that needs to be executed once the windowController has loaded the document's window.
}

+ (BOOL)autosavesInPlace {
    return YES;
}

- (void)makeWindowControllers {
    // Override to return the Storyboard file name of the document.
    
//    AppDelegate *delegate=[[NSApplication sharedApplication] delegate];
//   [self addWindowController:delegate.windowVC];
    
}

- (NSData *)dataOfType:(NSString *)typeName error:(NSError **)outError {
    // Insert code here to write your document to data of the specified type. If outError != NULL, ensure that you create and set an appropriate error when returning nil.
    // You can also choose to override -fileWrapperOfType:error:, -writeToURL:ofType:error:, or -writeToURL:ofType:forSaveOperation:originalContentsURL:error: instead.
    [NSException raise:@"UnimplementedMethod" format:@"%@ is unimplemented", NSStringFromSelector(_cmd)];
    return nil;
}

- (BOOL)readFromURL:(NSURL *)url ofType:(NSString *)typeName error:(NSError **)outError{
    
     [self close];
    
     NSLog(@"url %@",url);
   

     [MyCache playPathCache:[url absoluteString] block:^{
         
         AppDelegate *delegate=[[NSApplication sharedApplication] delegate];
         
         [delegate.videoVC initAssetData:url];
         
         [delegate.playlistVC reloadPlayListData];
         
     }];
    
    
    
    return YES;
}
-(void)close{
     AppDelegate *delegate=[[NSApplication sharedApplication] delegate];
    
    [delegate.videoVC close];
    
    [super close];
}

- (BOOL)readFromData:(NSData *)data ofType:(NSString *)typeName error:(NSError **)outError {
    // Insert code here to read your document from the given data of the specified type. If outError != NULL, ensure that you create and set an appropriate error when returning NO.
    // You can also choose to override -readFromFileWrapper:ofType:error: or -readFromURL:ofType:error: instead.
    // If you override either of these, you should also override -isEntireFileLoaded to return NO if the contents are lazily loaded.
 
    

    NSLog(@"data %@",data);
    
    
    return YES;
}

@end
