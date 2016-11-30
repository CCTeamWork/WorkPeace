//
//  ViewController.m
//  Clone
//
//  Created by Zhuge_Su on 16/8/23.
//  Copyright © 2016年 Mn_Su. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor redColor];
    
    UIButton *loginBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [loginBtn setTitle:@"登录" forState:UIControlStateNormal];
    [loginBtn setTitleColor:WHITECOLOR forState:UIControlStateNormal];
    loginBtn.backgroundColor = REDCOLOR;
    loginBtn.titleLabel.font = [UIFont systemFontOfSize:20];
    loginBtn.layer.cornerRadius = 10;
    [self.view addSubview:loginBtn];
    [loginBtn makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(pwdTF.bottom).offset(30);
        make.left.equalTo(self.view.left).offset(WIDTH/2-100);
        make.width.equalTo(200);
        make.height.equalTo(40);
    }];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        self.view.hidden = YES;
    });
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
