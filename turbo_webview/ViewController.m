//
//  ViewController.m
//  turbo_webview
//

#import "ViewController.h"
#import "MyWebViewController.h"

@interface ViewController ()

@property(nonatomic, retain) MyWebViewController *webVC;

@end

@implementation ViewController

//MyWebViewController *webView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)onTouchShowNext:(id)sender {
    if (self.webVC == nil) {
        self.webVC = [[MyWebViewController alloc] init];
    }
    [self presentViewController:self.webVC animated:YES completion:nil];
}
@end
