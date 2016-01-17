//
//  main.m
//  SearlazationData
//
//  Created by kong on 16/1/16.
//  Copyright © 2016年 kong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JsonModel.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        NSString *jsonString = @"{\"ID\":{\"Content\":268,\"type\":\"text\"},\"ContractTemplateID\":{\"Content\":65,\"type\":\"text\"}}";
        NSString *jsonString = @"{\"index\":1,\"url\":\"api35/Product/GetGroupProductPriceInfo\",\"param\":\"{\\\"ProductID\\\":\\\"81457\\\",\\\"GroupID\\\":\\\"1293251\\\",\\\"MemberId\\\":-1}\",\"usecache\":1}";
        NSData *data = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
        id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
        NSLog(@"json is %@",json);
        NSString *jsonStr = [json objectForKey:@"param"];
        NSString *url = [json objectForKey:@"url"];
        NSLog(@"url is*********%@",url);
        
        NSData *dataJson = [jsonStr dataUsingEncoding:NSUTF8StringEncoding];
        id result = [NSJSONSerialization JSONObjectWithData:dataJson options:0 error:nil];
        NSLog(@"result is %@",result);
        for (NSString *key in result) {
            NSString *value = [result objectForKey:key];
            NSLog(@"%@-------%@",key,value);
        }
        
        //测验解析JSON
        NSLog(@"---111------分割线-----测验解析JSON数据--------------");
        JsonModel *model = [[JsonModel alloc] init];
       id jsonDic1 = [model dicWith1String:jsonString];
       id param1 = [jsonDic1 objectForKey:@"param"];
       id jsonDic11 = [model dicWith1String:param1];
        [model printDataWith:jsonDic11];
        //第二种
         NSLog(@"------222-----分割线-----测验解析JSON数据--------------");
        JsonModel *model2 = [[JsonModel alloc] init];
        id jsonDic2 = [model2 jsonDicWith2JsonString:jsonString];
        id param2 = [jsonDic2 objectForKey:@"param"];
        id jsonDic22 = [model2 jsonDicWith2JsonString:param2];
        [model2 printDataWith:jsonDic22];
        
        //第三种
        NSLog(@"------333-----分割线-----测验解析JSON数据--------------");
        JsonModel *model3 = [[JsonModel alloc] init];
        id jsonDic3 = [model3 jsonDicWith3String:jsonString];
        id param3 = [jsonDic3 objectForKey:@"param"];
        id jsonDic33 = [model3 jsonDicWith3String:param3];
        [model3 printDataWith:jsonDic33];
        
        
        
    }
    return 0;
}

