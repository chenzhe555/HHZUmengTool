//
//  HHZUmengTool.h
//  HHZUmengTool
//
//  Created by 陈哲是个好孩子 on 2017/7/25.
//  Copyright © 2017年 陈哲是个好孩子. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UMSocialCore/UMSocialCore.h>
#import <UShareUI/UShareUI.h>

typedef void(^RHUMengShareToolSelectionBlock)(UMSocialPlatformType platformType,NSDictionary * userInfo,UMSocialMessageObject * messageObject);

NS_ASSUME_NONNULL_BEGIN

@interface HHZUmengTool : NSObject

+(void)shareText:(NSString *)text callBack:(RHUMengShareToolSelectionBlock)block;

+(void)shareImage:(id)image thumbImage:(id)thumbImage callBack:(RHUMengShareToolSelectionBlock)block;

+(void)shareImageAndText:(NSString *)text image:(id)image thumbImage:(id)thumbImage callBack:(RHUMengShareToolSelectionBlock)block;

+(void)shareWebPageTitle:(NSString *)title description:(NSString *)descr thumbImage:(id)thumbImage webPageUrl:(NSString *)webPageUrl callBack:(RHUMengShareToolSelectionBlock)block;

+(void)shareMusicTitle:(NSString *)title description:(NSString *)descr thumbImage:(id)thumbImage musicUrl:(NSString *)musicUrl callBack:(RHUMengShareToolSelectionBlock)block;

+(void)shareVideoTitle:(NSString *)title description:(NSString *)descr thumbImage:(id)thumbImage videoUrl:(NSString *)videoUrl callBack:(RHUMengShareToolSelectionBlock)block;

+(void)shareMiniProgramTitle:(NSString *)title description:(NSString *)descr thumbImage:(id)thumbImage webUrl:(NSString *)webUrl userName:(NSString *)userName path:(NSString *)path callBack:(RHUMengShareToolSelectionBlock)block;

@end

NS_ASSUME_NONNULL_END
