//
//  HomeTableViewCell.m
//  ScreenAdaptation
//
//  Created by hjbsj on 2018/8/22.
//  Copyright © 2018年 hjb. All rights reserved.
//

#import "HomeTableViewCell.h"

@interface HomeTableViewCell()
@property (nonatomic, strong) UIImageView *headImg;
@property (nonatomic, strong) UILabel *titleLab;
@property (nonatomic, strong) UILabel *loanableLab;
@property (nonatomic, strong) UILabel *loanableMoneyLab;
@property (nonatomic, strong) UILabel *loanTimeLimitLab;
@property (nonatomic, strong) UILabel *rateLab;
@property (nonatomic, strong) UILabel *monthRateLab;
@property (nonatomic, strong) UIButton *applyImmediatelyButton;
@property (nonatomic, strong) UIView *lineView;
@property (nonatomic, strong) UIImageView *advantageImg;
@property (nonatomic, strong) UILabel *advantageLab;
@end

@implementation HomeTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.headImg = [[UIImageView alloc] init];
        self.headImg.image = [UIImage imageNamed:@"xw"];
        [self.contentView addSubview:self.headImg];
        
        self.titleLab = [[UILabel alloc] init];
        self.titleLab.text = @"贷款";
//        self.titleLab.font = FONTS(@"PingFangSC-Regular", 14);
        self.titleLab.font = Font(14);
        self.titleLab.textColor = [UIColor blackColor];
        [self.contentView addSubview:self.titleLab];
        
        self.loanableLab = [[UILabel alloc] init];
        self.loanableLab.text = @"可贷";
//        self.loanableLab.font = FONTS(@"PingFangSC-Regular", 12);
        self.loanableLab.font = Font(12);
        self.loanableLab.textColor = [UIColor lightGrayColor];
        [self.contentView addSubview:self.loanableLab];
        
        self.loanableMoneyLab = [[UILabel alloc] init];
        self.loanableMoneyLab.text = @"0.1-40万";
//        self.loanableMoneyLab.font = FONTS(@"PingFangSC-Medium", 16);
        self.loanableMoneyLab.font = Font(16);
        self.loanableMoneyLab.textColor = [UIColor redColor];
        [self.contentView addSubview:self.loanableMoneyLab];
        
        self.loanTimeLimitLab = [[UILabel alloc] init];
        self.loanTimeLimitLab.text = @"贷款期限6/12月";
//        self.loanTimeLimitLab.font = FONTS(@"PingFangSC-Regular", 12);
        self.loanTimeLimitLab.font = Font(12);
        self.loanTimeLimitLab.textColor = [UIColor lightGrayColor];
        [self.contentView addSubview:self.loanTimeLimitLab];
        
        self.rateLab = [[UILabel alloc] init];
        self.rateLab.text = @"月费率";
//        self.rateLab.font = FONTS(@"PingFangSC-Regular", 12);
        self.rateLab.font = Font(12);
        self.rateLab.textColor = [UIColor lightGrayColor];
        [self.contentView addSubview:self.rateLab];
        
        self.monthRateLab = [[UILabel alloc] init];
        self.monthRateLab.text = @"3.00%";
//        self.monthRateLab.font = FONTS(@"PingFangSC-Medium", 16);
        self.monthRateLab.font = Font(16);
        self.monthRateLab.textColor = [UIColor redColor];
        [self.contentView addSubview:self.monthRateLab];
        
        self.applyImmediatelyButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [self.applyImmediatelyButton setBackgroundImage:[UIImage imageNamed:@"btn_n"] forState:UIControlStateNormal];
        [self.contentView addSubview:self.applyImmediatelyButton];
        
        self.lineView = [[UIView alloc] init];
        self.lineView.backgroundColor = [UIColor lightGrayColor];
        [self.contentView addSubview:self.lineView];
        
        self.advantageImg = [[UIImageView alloc] init];
        self.advantageImg.image = [UIImage imageNamed:@"reminder"];
        [self.contentView addSubview:self.advantageImg];
        
        self.advantageLab = [[UILabel alloc] init];
        self.advantageLab.text = @"按时还款，复贷降低利率";
//        self.advantageLab.font = FONTS(@"PingFangSC-Regular", 9);
        self.advantageLab.font = Font(9);
        self.advantageLab.textColor = [UIColor lightGrayColor];
        [self.contentView addSubview:self.advantageLab];
        
    }
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    [self.headImg makeConstraints:^(MASConstraintMaker *make) {
//        make.left.top.equalTo(self.contentView).offset(FQWidth(15));
//        make.width.height.equalTo(FQWidth(55));
        make.left.equalTo(self.contentView).offset(LineX(15));
        make.top.equalTo(self.contentView).offset(LineY(15));
        make.width.height.equalTo(LineX(55));
    }];
    
    [self.titleLab makeConstraints:^(MASConstraintMaker *make) {
//        make.top.equalTo(self.headImg).offset(FQWidth(8));
//        make.left.equalTo(self.headImg.right).offset(FQWidth(6));
        make.top.equalTo(self.headImg).offset(LineY(8));
        make.left.equalTo(self.headImg.right).offset(LineX(6));
    }];
    
    [self.loanableLab makeConstraints:^(MASConstraintMaker *make) {
//        make.bottom.equalTo(self.headImg.bottom).offset(FQWidth(-4));
//        make.left.equalTo(self.titleLab);
        make.bottom.equalTo(self.headImg.bottom).offset(LineY(-4));
        make.left.equalTo(self.titleLab);
    }];
    
    [self.loanableMoneyLab makeConstraints:^(MASConstraintMaker *make) {
//        make.centerY.equalTo(self.loanableLab);
//        make.left.equalTo(self.loanableLab.right).offset(FQWidth(5));
        make.centerY.equalTo(self.loanableLab);
        make.left.equalTo(self.loanableLab.right).offset(LineX(5));
    }];
    
    [self.loanTimeLimitLab makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.contentView).multipliedBy(11.0/9.0);
        make.centerY.equalTo(self.titleLab);
    }];
    
    [self.rateLab makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.loanTimeLimitLab);
        make.centerY.equalTo(self.loanableLab);
    }];
    
    [self.monthRateLab makeConstraints:^(MASConstraintMaker *make) {
//        make.centerY.equalTo(self.rateLab);
//        make.left.equalTo(self.rateLab.right).offset(FQWidth(5));
        make.centerY.equalTo(self.rateLab);
        make.left.equalTo(self.rateLab.right).offset(LineX(5));
    }];
    
    [self.applyImmediatelyButton makeConstraints:^(MASConstraintMaker *make) {
//        make.right.equalTo(self.contentView).offset(FQWidth(-18));
//        make.width.equalTo(FQWidth(65));
//        make.height.equalTo(self.applyImmediatelyButton.width).multipliedBy(21.0/65.0);
//        make.centerY.equalTo(self.contentView);
        make.right.equalTo(self.contentView).offset(LineX(-18));
        make.width.equalTo(LineX(65));
        make.height.equalTo(self.applyImmediatelyButton.width).multipliedBy(21.0/65.0);
        make.centerY.equalTo(self.contentView);
    }];
    
    [self.advantageImg makeConstraints:^(MASConstraintMaker *make) {
//        make.left.equalTo(self.headImg);
//        make.width.equalTo(FQWidth(11));
//        make.height.equalTo(self.advantageImg.width);
//        make.bottom.equalTo(self.contentView).offset(FQWidth(-13));
        make.left.equalTo(self.headImg);
        make.width.equalTo(LineX(11));
        make.height.equalTo(self.advantageImg.width);
        make.bottom.equalTo(self.contentView).offset(LineY(-13));
    }];
    
    [self.advantageLab makeConstraints:^(MASConstraintMaker *make) {
//        make.centerY.equalTo(self.advantageImg);
//        make.left.equalTo(self.advantageImg.right).offset(FQWidth(7));
        make.centerY.equalTo(self.advantageImg);
        make.left.equalTo(self.advantageImg.right).offset(LineX(7));
    }];
    
    [self.lineView makeConstraints:^(MASConstraintMaker *make) {
//        make.left.equalTo(self.headImg);
//        make.right.equalTo(self.contentView);
//        make.height.equalTo(FQWidth(1));
//        make.bottom.equalTo(self.advantageImg.top).offset(FQWidth(-9));
        make.left.equalTo(self.headImg);
        make.right.equalTo(self.contentView);
        make.height.equalTo(LineY(1));
        make.bottom.equalTo(self.advantageImg.top).offset(LineY(-9));
    }];
}

- (void)setFrame:(CGRect)frame
{
//    frame.size.height -= FQWidth(5);
    frame.size.height -= LineY(5);
    [super setFrame:frame];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
