//
//  HHZUmengLoginTool.m
//  HHZUmengTool
//
//  Created by 陈哲是个好孩子 on 2017/7/25.
//  Copyright © 2017年 陈哲是个好孩子. All rights reserved.
//

#import "HHZUmengLoginTool.h"

@implementation HHZUmengLoginTool
+(void)loginAuthQQWithCurrentViewController:(id)currentViewController callBack:(HHZUmengLoginToolCompleteBlock)block
{
    [[UMSocialManager defaultManager] getUserInfoWithPlatform:UMSocialPlatformType_QQ currentViewController:currentViewController completion:^(id result, NSError *error) {
        block(((UMSocialUserInfoResponse *)result),error);
    }];
}

+(void)loginAuthWeiXinWithCurrentViewController:(id)currentViewController callBack:(HHZUmengLoginToolCompleteBlock)block
{
    [[UMSocialManager defaultManager] getUserInfoWithPlatform:UMSocialPlatformType_WechatSession currentViewController:currentViewController completion:^(id result, NSError *error) {
        block(((UMSocialUserInfoResponse *)result),error);
    }];
}

+(void)loginAuthXinLangWeiBoWithCurrentViewController:(id)currentViewController callBack:(HHZUmengLoginToolCompleteBlock)block
{
    [[UMSocialManager defaultManager] getUserInfoWithPlatform:UMSocialPlatformType_Sina currentViewController:currentViewController completion:^(id result, NSError *error) {
        block(((UMSocialUserInfoResponse *)result),error);
    }];
}
@end
