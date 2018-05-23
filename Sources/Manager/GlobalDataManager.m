//
//  GlobalDataManager.m
//  GSXCustomClass
//
//  Created by guoshixu on 16/7/4.
//  Copyright © 2016年 guoshixu. All rights reserved.
//

#import "GlobalDataManager.h"

@implementation GlobalDataManager

+ (GlobalDataManager *)defaultManager
{
    static GlobalDataManager *object = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        object = [[GlobalDataManager alloc] init];
    });
    return object;
}

- (void)setGlobalDataWithResult:(NSDictionary *)result
{
}

- (void)removeGlobalData
{
    self.account = nil;
    
    //清除不必要的序列化数据，多用于清除密码或账号
    [UserDefaults removeObjectForKey:account];
}

@end
