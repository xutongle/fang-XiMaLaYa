//
//  AllHotModel.m
//  xiMaLaYa
//
//  Created by shenKaiqiang on 16/7/15.
//  Copyright © 2016年 shenKaiqiang. All rights reserved.
//

#import "AllHotModel.h"

@implementation AllHotModel

-(void)setValue:(id)value forUndefinedKey:(NSString *)key{

}

+ (NSMutableArray *)modelConfigureWithDic:(NSDictionary *)jsonDic{
    NSMutableArray *Arr = [NSMutableArray array];
    NSArray *list = jsonDic[@"list"];
    for (NSDictionary *dic in list) {
        AllHotModel *model = [[AllHotModel alloc]init];
        [model setValuesForKeysWithDictionary:dic];
        [Arr addObject:model];
    }
    return Arr;
}

@end
