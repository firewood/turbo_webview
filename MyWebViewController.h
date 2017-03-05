//
//  MyWebViewController.h
//  turbo_webview
//

#import <UIKit/UIKit.h>

@interface MyWebViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIWebView *webView;
- (IBAction)onTouchDismiss:(id)sender;

@end
