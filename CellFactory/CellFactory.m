//
//  CellFactory.m
//  CellFactory
//
//  Created by TangChen on 2018/5/14.
//  Copyright © 2018年 tangchen. All rights reserved.
//

#import "CellFactory.h"
#import "BaseModel.h"
#import "OneModel.h"
#import "TwoModel.h"


#import "OneTableViewCell.h"
#import "TwoTableViewCell.h"


@implementation CellFactory


+ (Class)cellWithModel:(BaseModel *)model
{
    Class className = Nil;
    
    if ([model.res_info isKindOfClass:[OneModel class]])
    {
        className = [OneTableViewCell class];
    }
    else if ([model.res_info isKindOfClass:[TwoModel class]])
    {
        className = [TwoTableViewCell class];
    }
    
    
    return className;
}


@end
