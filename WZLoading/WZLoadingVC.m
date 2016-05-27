//
//  WZLoadingVC.m
//  WZLoading
//
//  Created by 黄燕 on 16/5/27.
//  Copyright © 2016年 Mr.Wang. All rights reserved.
//

#import "WZLoadingVC.h"

@interface WZLoadingVC () {
  BOOL _isStop;
}
@property(weak, nonatomic) IBOutlet UIImageView *imageRotating;
@end

@implementation WZLoadingVC
- (id)init {
  self = [super init];
  if (self) {
    self.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    self.modalPresentationStyle = UIModalPresentationCustom;
  }
  return self;
}
- (void)viewDidDisappear:(BOOL)animated {
  [super viewDidDisappear:animated];
  _isStop = true;
}
- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view from its nib.
  self.viewPanle.layer.masksToBounds = YES;
  self.viewPanle.layer.cornerRadius = 4;
  [self transform];
}
- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
  [super touchesEnded:touches withEvent:event];
  [self dismissViewControllerAnimated:YES completion:NULL];
}
- (void)transform {
  if (_isStop) {
    return;
  }
  [UIView animateWithDuration:1
      delay:0
      options:UIViewAnimationOptionBeginFromCurrentState |
              UIViewAnimationOptionCurveLinear
      animations:^{

        _imageRotating.transform =
            CGAffineTransformRotate(_imageRotating.transform, M_PI);
      }
      completion:^(BOOL finished) {
        [self transform];
      }];
}
- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little
preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
