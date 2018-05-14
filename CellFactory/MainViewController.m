//
//  MainViewController.m
//  CellFactory
//
//  Created by TangChen on 2018/5/14.
//  Copyright © 2018年 tangchen. All rights reserved.
//

#import "MainViewController.h"
#import "BaseTableViewCell.h"
#import "OneTableViewCell.h"
#import "TwoTableViewCell.h"
#import "CellFactory.h"

@interface MainViewController ()<UITableViewDelegate, UITableViewDataSource>


@property (nonatomic, strong) NSMutableArray *mutableArray;

@property (nonatomic, strong) UITableView *mainTableView;


@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    NSArray *array = @[@{
                           @"type":@"1",
                           @"name":@"qqq"
                           },@{
                           @"type":@"2",
                           @"address":@"wwww"
                           }];
    
    self.mutableArray = [NSMutableArray new];
    
    for (NSDictionary *dic in array)
    {
        BaseModel *model = [BaseModel jsonWithDic:dic];
        [self.mutableArray addObject:model];
    }
    
    self.mainTableView = [[UITableView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:self.mainTableView];

    
    [self.mainTableView registerClass:[OneTableViewCell class] forCellReuseIdentifier:NSStringFromClass([OneTableViewCell class])];
    [self.mainTableView registerClass:[TwoTableViewCell class] forCellReuseIdentifier:NSStringFromClass([TwoTableViewCell class])];
    [self.mainTableView registerClass:[BaseTableViewCell class] forCellReuseIdentifier:NSStringFromClass([BaseTableViewCell class])];
    
    [self.mainTableView setDelegate:self];
    [self.mainTableView setDataSource:self];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.mutableArray.count;
}




- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    BaseModel *model = self.mutableArray[indexPath.row];
    Class className = [CellFactory cellWithModel:model];
    BaseTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass(className)];
    return cell;
}








/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
