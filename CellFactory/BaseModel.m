//
//  BaseModel.m
//  CellFactory
//
//  Created by TangChen on 2018/5/14.
//  Copyright © 2018年 tangchen. All rights reserved.
//

#import "BaseModel.h"
#import "OneModel.h"
#import "TwoModel.h"

@implementation BaseModel



+ (BaseModel *)jsonWithDic:(NSDictionary *)dic
{
//    self.type = [[dic valueForKey:@"type"] integerValue];
    BaseModel *model = [[self alloc] init];
    model.type = [[dic valueForKey:@"type"] integerValue];
    if (model.type == 1)
    {
        model.res_info = [OneModel jsonWithDic:dic];
    }
    else if (model.type == 2)
    {
        model.res_info = [TwoModel jsonWithDic:dic];
    }
    return model;
}


@end
