//
//  editorRecommendAlbumsTableViewCell.m
//  xiMaLaYa
//
//  Created by shenKaiqiang on 16/7/11.
//  Copyright © 2016年 shenKaiqiang. All rights reserved.
//

#import "editorRecommendAlbumsTableViewCell.h"

#define kSwidth (kScreenWidth - 20) / 3
@implementation editorRecommendAlbumsTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.more1Btn = [UIButton buttonWithType:(UIButtonTypeSystem)];
        self.more1Btn.frame = CGRectMake(5, 0, (kScreenWidth - 10) / 2, 40);
        self.more2Btn = [UIButton buttonWithType:(UIButtonTypeSystem)];
        self.more2Btn.frame = CGRectMake((kScreenWidth - 10) / 2 + 5, 0, (kScreenWidth - 10) / 2, 40);
        self.more2Btn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
        [self.more2Btn setTitle:@"更多 >" forState:(UIControlStateNormal)];
        self.more2Btn.titleLabel.font = [UIFont systemFontOfSize:15];
        self.more1Btn.tintColor = [UIColor blackColor];
        self.more2Btn.tintColor = [UIColor grayColor];
        self.more1Btn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        [self.contentView addSubview:self.more1Btn];
        [self.contentView addSubview:self.more2Btn];
    }
    return self;
}

-(void)creatCell:(NSMutableArray *)arr{
    self.disc = [[DiscoverCollectView alloc]initWithFrame:CGRectMake(0, 40, kScreenWidth,(kScreenWidth - 40) / 3 + 90) imageURLs:arr];
    
    [self.contentView addSubview:self.disc];
}


@end
