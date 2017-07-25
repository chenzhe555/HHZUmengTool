//
//  HHZUmengShareTool.m
//  HHZUmengTool
//
//  Created by 陈哲是个好孩子 on 2017/7/25.
//  Copyright © 2017年 陈哲是个好孩子. All rights reserved.
//

#import "HHZUmengShareTool.h"

@implementation HHZUmengShareTool

+(void)shareText:(NSString *)text callBack:(RHUMengShareToolSelectionBlock)block
{
    [UMSocialUIManager showShareMenuViewInWindowWithPlatformSelectionBlock:^(UMSocialPlatformType platformType, NSDictionary *userInfo) {
        [self configDefaultPreDefinePlatforms];
        UMSocialMessageObject * obj = [self generateShareText:text];
        block(platformType,userInfo,obj);
    }];
}

+(void)shareImage:(id)image thumbImage:(id)thumbImage callBack:(RHUMengShareToolSelectionBlock)block
{
    [UMSocialUIManager showShareMenuViewInWindowWithPlatformSelectionBlock:^(UMSocialPlatformType platformType, NSDictionary *userInfo) {
        [self configDefaultPreDefinePlatforms];
        UMSocialMessageObject * obj = [self generateShareImage:image thumbImage:thumbImage];
        block(platformType,userInfo,obj);
    }];
}

+(void)shareImageAndText:(NSString *)text image:(id)image thumbImage:(id)thumbImage callBack:(RHUMengShareToolSelectionBlock)block
{
    [UMSocialUIManager showShareMenuViewInWindowWithPlatformSelectionBlock:^(UMSocialPlatformType platformType, NSDictionary *userInfo) {
        [self configImageAndTextPreDefinePlatforms];
        UMSocialMessageObject * obj = [self generateShareImage:image thumbImage:thumbImage];
        obj.text = text;
        block(platformType,userInfo,obj);
    }];
}

+(void)shareWebPageTitle:(NSString *)title description:(NSString *)descr thumbImage:(id)thumbImage webPageUrl:(NSString *)webPageUrl callBack:(RHUMengShareToolSelectionBlock)block
{
    [UMSocialUIManager showShareMenuViewInWindowWithPlatformSelectionBlock:^(UMSocialPlatformType platformType, NSDictionary *userInfo) {
        [self configDefaultPreDefinePlatforms];
        UMSocialMessageObject * obj = [self generateShareWebPageTitle:title description:descr thumbImage:thumbImage webPageUrl:webPageUrl];
        block(platformType,userInfo,obj);
    }];
}

+(void)shareMusicTitle:(NSString *)title description:(NSString *)descr thumbImage:(id)thumbImage musicUrl:(NSString *)musicUrl callBack:(RHUMengShareToolSelectionBlock)block
{
    [UMSocialUIManager showShareMenuViewInWindowWithPlatformSelectionBlock:^(UMSocialPlatformType platformType, NSDictionary *userInfo) {
        [self configDefaultPreDefinePlatforms];
        UMSocialMessageObject * obj = [self generateShareMusicTitle:title description:descr thumbImage:thumbImage musicUrl:musicUrl];
        block(platformType,userInfo,obj);
    }];
}

+(void)shareVideoTitle:(NSString *)title description:(NSString *)descr thumbImage:(id)thumbImage videoUrl:(NSString *)videoUrl callBack:(RHUMengShareToolSelectionBlock)block
{
    [UMSocialUIManager showShareMenuViewInWindowWithPlatformSelectionBlock:^(UMSocialPlatformType platformType, NSDictionary *userInfo) {
        [self configDefaultPreDefinePlatforms];
        UMSocialMessageObject * obj = [self generateShareVideoTitle:title description:descr thumbImage:thumbImage videoUrl:videoUrl];
        block(platformType,userInfo,obj);
    }];
}

+(void)shareMiniProgramTitle:(NSString *)title description:(NSString *)descr thumbImage:(id)thumbImage webUrl:(NSString *)webUrl userName:(NSString *)userName path:(NSString *)path callBack:(RHUMengShareToolSelectionBlock)block
{
    [UMSocialUIManager showShareMenuViewInWindowWithPlatformSelectionBlock:^(UMSocialPlatformType platformType, NSDictionary *userInfo) {
        [self configDefaultPreDefinePlatforms];
        UMSocialMessageObject * obj = [self generateShareMiniProgramTitle:title description:descr thumbImage:thumbImage webUrl:webUrl userName:userName path:path];
        block(platformType,userInfo,obj);
    }];
}


#pragma mark 创建各种类型MessageObject
+(UMSocialMessageObject *)generateShareText:(NSString *)text
{
    UMSocialMessageObject * obj = [UMSocialMessageObject messageObject];
    obj.text = text;
    return obj;
}

+(UMSocialMessageObject *)generateShareImage:(id)image thumbImage:(id)thumbImage
{
    UMSocialMessageObject * obj = [UMSocialMessageObject messageObject];
    obj.shareObject = [self setUpShareImageObjectWithImage:image thumbImage:thumbImage];
    return obj;
}

+(UMSocialMessageObject *)generateShareWebPageTitle:(NSString *)title description:(NSString *)descr thumbImage:(id)thumbImage webPageUrl:(NSString *)webPageUrl
{
    UMSocialMessageObject * obj = [UMSocialMessageObject messageObject];
    obj.shareObject = [self setUpShareWebPageTitle:title description:descr thumbImage:thumbImage webPageUrl:webPageUrl];
    return obj;
}

+(UMSocialMessageObject *)generateShareMusicTitle:(NSString *)title description:(NSString *)descr thumbImage:(id)thumbImage musicUrl:(NSString *)musicUrl
{
    UMSocialMessageObject * obj = [UMSocialMessageObject messageObject];
    obj.shareObject = [self setUpShareMusicTitle:title description:descr thumbImage:thumbImage musicUrl:musicUrl];
    return obj;
}

+(UMSocialMessageObject *)generateShareVideoTitle:(NSString *)title description:(NSString *)descr thumbImage:(id)thumbImage videoUrl:(NSString *)videoUrl
{
    UMSocialMessageObject * obj = [UMSocialMessageObject messageObject];
    obj.shareObject = [self setUpShareVideoTitle:title description:descr thumbImage:thumbImage videoUrl:videoUrl];
    return obj;
}


+(UMSocialMessageObject *)generateShareMiniProgramTitle:(NSString *)title description:(NSString *)descr thumbImage:(id)thumbImage webUrl:(NSString *)webUrl userName:(NSString *)userName path:(NSString *)path
{
    UMSocialMessageObject * obj = [UMSocialMessageObject messageObject];
    obj.shareObject = [self setUpMiniProgramTitle:title description:descr thumbImage:thumbImage webUrl:webUrl userName:userName path:path];
    return obj;
}


#pragma mark 生成各种分享对象
+(UMShareImageObject *)setUpShareImageObjectWithImage:(id)image thumbImage:(id)thumbImage
{
    //创建图片分享对象
    UMShareImageObject * obj = [[UMShareImageObject alloc] init];
    obj.shareImage = image;
    obj.thumbImage = thumbImage;
    return obj;
}

+(UMShareWebpageObject *)setUpShareWebPageTitle:(NSString *)title description:(NSString *)descr thumbImage:(id)thumbImage webPageUrl:(NSString *)webPageUrl
{
    //创建网页分享对象
    UMShareWebpageObject * obj = [UMShareWebpageObject shareObjectWithTitle:title descr:descr thumImage:thumbImage];
    obj.webpageUrl = webPageUrl;
    return obj;
}

+(UMShareMusicObject *)setUpShareMusicTitle:(NSString *)title description:(NSString *)descr thumbImage:(id)thumbImage musicUrl:(NSString *)musicUrl
{
    //创建音乐分享对象
    UMShareMusicObject * obj = [UMShareMusicObject shareObjectWithTitle:title descr:descr thumImage:thumbImage];
    obj.musicUrl = musicUrl;
    return obj;
}

+(UMShareVideoObject *)setUpShareVideoTitle:(NSString *)title description:(NSString *)descr thumbImage:(id)thumbImage videoUrl:(NSString *)videoUrl
{
    //创建视频分享对象
    UMShareVideoObject * obj = [UMShareVideoObject shareObjectWithTitle:title descr:descr thumImage:thumbImage];
    obj.videoUrl = videoUrl;
    return obj;
}


+(UMShareMiniProgramObject *)setUpMiniProgramTitle:(NSString *)title description:(NSString *)descr thumbImage:(id)thumbImage webUrl:(NSString *)webUrl userName:(NSString *)userName path:(NSString *)path
{
    //创建视频分享对象
    UMShareMiniProgramObject * obj = [UMShareMiniProgramObject shareObjectWithTitle:title descr:descr thumImage:thumbImage];
    obj.webpageUrl = webUrl;
    obj.userName = userName;
    obj.path = path;
    return obj;
}


#pragma mark 不同平台支持不同类型，所有在这里做区分
+(void)configDefaultPreDefinePlatforms
{
    [UMSocialUIManager setPreDefinePlatforms:@[@(UMSocialPlatformType_QQ),@(UMSocialPlatformType_Qzone),@(UMSocialPlatformType_Sina),@(UMSocialPlatformType_WechatSession),@(UMSocialPlatformType_WechatTimeLine),@(UMSocialPlatformType_WechatFavorite)]];
}

+(void)configImageAndTextPreDefinePlatforms
{
    [UMSocialUIManager setPreDefinePlatforms:@[@(UMSocialPlatformType_Sina)]];
}

+(void)configMiniProgramPreDefinePlatforms
{
    [UMSocialUIManager setPreDefinePlatforms:@[@(UMSocialPlatformType_WechatSession)]];
}

@end
