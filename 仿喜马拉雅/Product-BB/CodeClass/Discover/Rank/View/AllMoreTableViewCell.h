//
//  AllMoreTableViewCell.h
//  xiMaLaYa
//
//  Created by shenKaiqiang on 16/7/15.
//  Copyright © 2016年 shenKaiqiang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AllHotModel.h"

@interface AllMoreTableViewCell : UITableViewCell
@property (nonatomic, strong)UILabel *rankL;
@property (nonatomic, strong)UIImageView *imageV;
@property (nonatomic, strong)UILabel *titleL;
@property (nonatomic, strong)UILabel *intoL;
@property (nonatomic, strong)UIButton *nextB;
@property (nonatomic, strong)UIImageView *dianboV;
@property (nonatomic, strong)UILabel *tracksL;

-(void)cellConfigureWithModel:(AllHotModel *)model;
@end
