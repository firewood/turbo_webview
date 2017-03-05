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
    NSLog(@"WEBVIEW DID_LOAD");
    
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
    if (path) {
        NSURL *url = [NSURL URLWithString:path];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        [self.webView loadRequest:request];
    }
}
@end
