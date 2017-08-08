//
//  ViewController.m
//  ShareandPayDemo
//
//  Created by 王俊钢 on 2017/8/8.
//  Copyright © 2017年 wangjungang. All rights reserved.
//

#import "ViewController.h"
#import "ZTVendorManager.h"
@interface ViewController ()
@property (nonatomic, strong) ZTVendorPayManager *payManager;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.payManager = [[ZTVendorPayManager alloc]init];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - 第三方登录

- (IBAction)qqloginclick:(id)sender {
    [ZTVendorManager loginWith:ZTVendorPlatformTypeQQ completionHandler:^(ZTVendorAccountModel *model, NSError *error) {
        NSLog(@"nickname:%@",model.nickname);
    }];
}

- (IBAction)weixinloginclick:(id)sender {
    [ZTVendorManager loginWith:ZTVendorPlatformTypeWechat completionHandler:^(ZTVendorAccountModel *model, NSError *error) {
        NSLog(@"nickname:%@",model.nickname);
    }];
}

- (IBAction)weibologinclick:(id)sender {
    [ZTVendorManager loginWith:ZTVendorPlatformTypeSina completionHandler:^(ZTVendorAccountModel *model, NSError *error) {
        NSLog(@"nickname:%@",model.nickname);
    }];
}

- (IBAction)QQshareclick:(id)sender {
    ZTVendorShareModel *model = [[ZTVendorShareModel alloc]init];
    [ZTVendorManager shareWith:ZTVendorPlatformTypeQQ shareModel:model completionHandler:^(BOOL success, NSError * error) {
        
    }];
}

- (IBAction)weichatshareclick:(id)sender {
    ZTVendorShareModel *model = [[ZTVendorShareModel alloc]init];
    [ZTVendorManager shareWith:ZTVendorPlatformTypeWechat shareModel:model completionHandler:^(BOOL success, NSError * error) {
        
    }];
}

- (IBAction)weichatfriendshareclick:(id)sender {
    ZTVendorShareModel *model = [[ZTVendorShareModel alloc]init];
    [ZTVendorManager shareWith:ZTVendorPlatformTypeWechatFriends shareModel:model completionHandler:^(BOOL success, NSError * error) {
        
    }];
}

- (IBAction)weiboshareclick:(id)sender {
    ZTVendorShareModel *model = [[ZTVendorShareModel alloc]init];
    [ZTVendorManager shareWith:ZTVendorPlatformTypeSina shareModel:model completionHandler:^(BOOL success, NSError * error) {
        
    }];
}

@end
