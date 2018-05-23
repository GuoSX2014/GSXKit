//
//  GlobalDataManager.h
//  GSXCustomClass
//
//  Created by guoshixu on 16/7/4.
//  Copyright © 2016年 guoshixu. All rights reserved.
//


/**
 *  用于管理全局变量，单例模式
 */
#import <Foundation/Foundation.h>

@interface GlobalDataManager : NSObject

@property (nonatomic, strong) NSString *account; //用于测试

+ (GlobalDataManager *)defaultManager;

/**
 *  设置全局变量的值
 *
 *  @param result 参数，字典格式
 */
- (void)setGlobalDataWithResult:(NSDictionary *)result;

/**
 *  删除全局变量的值，多在退出操作时调用
 */
- (void)removeGlobalData;



@end
