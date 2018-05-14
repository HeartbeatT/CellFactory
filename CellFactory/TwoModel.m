//
//  TwoModel.m
//  CellFactory
//
//  Created by TangChen on 2018/5/14.
//  Copyright © 2018年 tangchen. All rights reserved.
//

#import "TwoModel.h"

@implementation TwoModel

+ (TwoModel *)jsonWithDic:(NSDictionary *)dic
{
    TwoModel *model = [[self alloc] init];
    model.address = [dic valueForKey:@"address"];
    return model;
}


@end
