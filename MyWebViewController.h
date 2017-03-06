//
//  MyWebViewController.h
//  turbo_webview
//

#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>

@interface MyWebViewController : UIViewController <WKNavigationDelegate>
@property(strong, nonatomic) WKWebView *webView;
- (IBAction)onTouchDismiss:(id)sender;

@end
