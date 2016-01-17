//
//  JsonModel.h
//  SearlazationData
//
//  Created by kong on 16/1/17.
//  Copyright © 2016年 kong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JsonModel : NSObject

/**
 *  第一种解析JSON
 *
 *  @param jsonString
 *
 *  @return Dic
 */
- (id)dicWith1String:(NSString *)String;

/**
 *  第二种解析
 *
 *  @param jsonString
 *
 *  @return JsonDic
 */
- (id)jsonDicWith2JsonString:(NSString *)jsonString;

/**
 *  第三种JSON解析
 *
 *  @param jsonString
 *
 *  @return JsonDic
 */
- (id)jsonDicWith3String:(NSString *)jsonString;

/**
 *  遍历JSON数据
 *
 *  @param jsonDic
 */
- (void)printDataWith:(id)jsonDic;

@end
