//
//  MyWebViewController.m
//  turbo_webview
//

#import "MyWebViewController.h"

@interface MyWebViewController ()

@end

@implementation MyWebViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    CGRect rect = self.view.bounds;
    rect.origin.y += 40;
    rect.size.height -= 40;
    self.webView = [[WKWebView alloc] initWithFrame:rect];
    [self.view addSubview:self.webView];
    [self loadPage:[[NSBundle mainBundle] pathForResource:@"index" ofType:@"html"]];
}

- (void)dealloc {
    NSLog(@"WEBVIEW DEALLOCED");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated {
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)onTouchDismiss:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)loadPage:(NSString *)path {
    if (!path) {
        return;
    }
    NSURL *url = [NSURL URLWithString:[@"file:///" stringByAppendingString:path]];
    if ([self.webView respondsToSelector:@selector(loadFileURL:allowingReadAccessToURL:)]) {
        [self.webView loadFileURL:url allowingReadAccessToURL:url];
    } else {
        [self.webView loadRequest:[NSURLRequest requestWithURL:url]];
    }
}
@end
