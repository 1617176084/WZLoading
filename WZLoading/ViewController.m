//
//  ViewController.m
//  WZLoading
//
//  Created by 黄燕 on 16/5/27.
//  Copyright © 2016年 Mr.Wang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

- (IBAction)showClick:(id)sender {
  WZLoadingVC *vc = [[WZLoadingVC alloc] init];

  [self presentViewController:vc animated:YES completion:NULL];
}
@end
