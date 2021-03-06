//
//  DictionaryManager.m
//  xiMaLaYa
//
//  Created by shenKaiqiang on 16/7/18.
//  Copyright © 2016年 shenKaiqiang. All rights reserved.
//

#import "DictionaryManager.h"

@implementation DictionaryManager

+(DictionaryManager *)shareInstance{
    static DictionaryManager *manager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[DictionaryManager alloc]init];
    });
    return manager;
}

-(void)setShareDic:(NSMutableDictionary *)shareDic{
    _shareDic = shareDic;
}

@end
