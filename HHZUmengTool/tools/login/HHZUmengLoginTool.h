//
//  HHZUmengLoginTool.h
//  HHZUmengTool
//
//  Created by 陈哲是个好孩子 on 2017/7/25.
//  Copyright © 2017年 陈哲是个好孩子. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UMSocialCore/UMSocialCore.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^HHZUmengLoginToolCompleteBlock)(UMSocialUserInfoResponse * resp, NSError *error);

@interface HHZUmengLoginTool : NSObject
+(void)loginAuthQQWithCurrentViewController:(id)currentViewController callBack:(HHZUmengLoginToolCompleteBlock)block;

+(void)loginAuthWeiXinWithCurrentViewController:(id)currentViewController callBack:(HHZUmengLoginToolCompleteBlock)block;

+(void)loginAuthXinLangWeiBoWithCurrentViewController:(id)currentViewController callBack:(HHZUmengLoginToolCompleteBlock)block;
@end

NS_ASSUME_NONNULL_END
