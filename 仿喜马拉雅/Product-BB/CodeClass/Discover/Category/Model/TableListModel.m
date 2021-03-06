//
//  TableListModel.m
//  xiMaLaYa
//
//  Created by shenKaiqiang on 16/7/13.
//  Copyright © 2016年 shenKaiqiang. All rights reserved.
//

#import "TableListModel.h"

@implementation TableListModel

-(void)setValue:(id)value forUndefinedKey:(NSString *)key{

}

+ (NSMutableArray *)modelConfigureWithDic:(NSDictionary *)jsonDic{
    NSMutableArray *Arr = [NSMutableArray array];
    NSArray *arr = jsonDic[@"list"];
    for (NSDictionary *dic in arr) {
        TableListModel *model = [[TableListModel alloc]init];
        [model setValuesForKeysWithDictionary:dic];
        [Arr addObject:model];
    }
    return Arr;
}

@end
