//
//  BaseModel.h
//  CellFactory
//
//  Created by TangChen on 2018/5/14.
//  Copyright © 2018年 tangchen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseModel : NSObject


@property (nonatomic, assign) NSInteger type;
@property (nonatomic, strong) id    res_info;


+ (BaseModel *)jsonWithDic:(NSDictionary *)dic;


@end
