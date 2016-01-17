//
//  main.m
//  SearlazationData
//
//  Created by kong on 16/1/16.
//  Copyright © 2016年 kong. All rights reserved.
//

#import <Foundation/Foundation.h>

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
        
    }
    return 0;
}

