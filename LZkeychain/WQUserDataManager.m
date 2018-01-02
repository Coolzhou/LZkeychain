//
//  WQUserDataManager.m
//  LZkeychain
//
//  Created by apple on 16/4/8.
//  Copyright © 2016年 MDJ. All rights reserved.

#import "WQUserDataManager.h"
#import "WQKeyChain.h"
@implementation WQUserDataManager



static NSString * const KEY_IN_KEYCHAIN = @"com.wuqian.app.allinfo";
static NSString * const KEY_PASSWORD = @"com.wuqian.app.password";

+(void)savePassWord:(NSString *)password
{
    NSMutableDictionary *usernamepasswordKVPairs = [NSMutableDictionary dictionary];
    [usernamepasswordKVPairs setObject:password forKey:KEY_PASSWORD];
    [WQKeyChain save:KEY_IN_KEYCHAIN data:usernamepasswordKVPairs];
}

+(id)readPassWord
{
    NSMutableDictionary *usernamepasswordKVPair = (NSMutableDictionary *)[WQKeyChain load:KEY_IN_KEYCHAIN];
    return [usernamepasswordKVPair objectForKey:KEY_PASSWORD];
}

+(void)deletePassWord
{
    [WQKeyChain delete:KEY_IN_KEYCHAIN];
}
@end
