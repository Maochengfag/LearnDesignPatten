//
//  ViewController.m
//  LearnDesignPatten
//
//  Created by Mac on 19/6/2.
//  Copyright © 2019年 Mac. All rights reserved.
//

#import "ViewController.h"
#import "BridgeDemo.h"
#import "CoolTarget.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSMutableArray *arrayM = [NSMutableArray array];
    void(^blk)(void) = ^{
        [arrayM addObject:@"object"];
    };
    
    blk();
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)bridgeDemo:(id)sender {
    BridgeDemo *demo = [[BridgeDemo alloc] init];
    [demo fetch];
}

- (IBAction)adapterDemo:(id)sender {
    CoolTarget *cool = [[CoolTarget alloc] init];
    Target *target = [[Target alloc] init];
    cool.target = target;
    [cool reqeuest];
}

@end
