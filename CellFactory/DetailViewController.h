//
//  DetailViewController.h
//  CellFactory
//
//  Created by tangchen on 2018/5/13.
//  Copyright © 2018年 tangchen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) NSDate *detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

