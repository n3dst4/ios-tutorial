//
//  ViewController.m
//  Yellow
//
//  Created by Neil de Carteret on 21/07/2016.
//  Copyright © 2016 Neil de Carteret. All rights reserved.
//

#import "ViewController.h"
#import "ColorTableViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //CGRect viewRect = [[UIScreen mainScreen] bounds];

    //UIView *colorView = [[UIView alloc] initWithFrame:viewRect];
    //self.view = colorView;
    //colorView.backgroundColor = [UIColor whiteColor];
    
    UIButton *myButt = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    myButt.frame = CGRectMake(100, 100, 100, 50);
    [myButt setTitle:@"Helloes" forState:UIControlStateNormal];
    
    UIViewController *tableViewController = [[ColorTableViewController alloc] init];
    
    //[self.view addSubview:tableViewController];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
