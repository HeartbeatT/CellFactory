//
//  OneModel.m
//  CellFactory
//
//  Created by TangChen on 2018/5/14.
//  Copyright © 2018年 tangchen. All rights reserved.
//

#import "OneModel.h"

@implementation OneModel

+ (OneModel *)jsonWithDic:(NSDictionary *)dic
{
    OneModel *model = [[self alloc] init];
    model.name = [dic valueForKey:@"name"];
    return model;
}

@end
