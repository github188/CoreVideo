//
//  CVWebViewController.h
//  CoreVideo
//
//  Created by admin on 15/9/15.
//  Copyright (c) 2015年 cn.lztech  合肥联正电子科技有限公司. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <WebKit/WebKit.h>
#import "CVModuleProtocol.h"
#import "CVWindowController.h"

@interface CVWebViewController : NSViewController<CVModuleProtocol>

@property(nonatomic,strong) WebView *webview;
@property(nonatomic,weak) id<CVModuleProtocol> distanceDelegate;
@property(nonatomic,weak) id<CVModuleProtocol> zoomInOutDelegate;

-(void)reloadHtmlData;
@end
