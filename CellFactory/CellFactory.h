//
//  CellFactory.h
//  CellFactory
//
//  Created by TangChen on 2018/5/14.
//  Copyright © 2018年 tangchen. All rights reserved.
//

#import <Foundation/Foundation.h>
@class BaseModel;

@interface CellFactory : NSObject



+ (Class)cellWithModel:(BaseModel *)model;


@end
