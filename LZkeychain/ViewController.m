//
//  ViewController.m
//  LZkeychain
//
//  Created by apple on 16/4/8.
//  Copyright © 2016年 MDJ. All rights reserved.
//

#import "ViewController.h"

#import "KeychainItemWrapper.h"


#import "WQUserDataManager.h"
@interface ViewController ()

@property (nonatomic,strong)KeychainItemWrapper *key;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.passwordLable.text = [WQUserDataManager readPassWord];
    
    
//    self.key = [[KeychainItemWrapper alloc]initWithIdentifier:@"Number" accessGroup:@"com.wuqian.app.allinss"];
//    
//    NSLog(@"name = %@,password = %@",[self.key objectForKey:(id)kSecAttrAccount],[self.key objectForKey:(id)kSecValueData]);
    
}

- (IBAction)ClickPasswordBtn:(id)sender {
    
    [WQUserDataManager savePassWord:self.textFiled.text];
    self.passwordLable.text = [WQUserDataManager readPassWord];
    
    
    [self useKeychain];
}


-(void)useKeychain{
    
    /** 初始化一个保存用户帐号的KeychainItemWrapper */
    
//    //保存账号
//    [self.key setObject:@"lz1212121" forKey:(id)kSecAttrAccount];
//    //保存密码
//    [self.key setObject:@"1234567" forKey:(id)kSecValueData];
    //清空设置
//    [key resetKeychainItem];
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
