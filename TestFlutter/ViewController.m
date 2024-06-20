//
//  ViewController.m
//  TestFlutter
//
//  Created by zhangdongfeng on 2024/6/19.
//

#import "ViewController.h"
#import <Flutter/Flutter.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"Test Flutter";
}


- (IBAction)tapToFlutter:(id)sender {
    
    FlutterEngine *engine = [[FlutterEngine alloc] initWithName:@"engine" project:nil];
    [engine runWithEntrypoint:@"main"];
    
    FlutterViewController *flutterVc = [[FlutterViewController alloc] initWithEngine:engine nibName:nil bundle:nil];
    [self.navigationController pushViewController:flutterVc animated:YES];
}
@end
