//
//  JsonModel.m
//  SearlazationData
//
//  Created by kong on 16/1/17.
//  Copyright © 2016年 kong. All rights reserved.
//

#import "JsonModel.h"

@implementation JsonModel

- (id)dicWith1String:(NSString *)String{

    NSData *data = [String dataUsingEncoding:NSUTF8StringEncoding];
    id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
    return json;
}


- (id)jsonDicWith2JsonString:(NSString *)jsonString{

    NSData *data = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
    id jsonDic = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:nil];
    return jsonDic;
}

- (id)jsonDicWith3String:(NSString *)jsonString{
   
    NSData *data = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
    id jsonDic = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
    return jsonDic;

}

- (void)printDataWith:(id)jsonDic{
    
    for (NSString *key in jsonDic) {
        NSString *value = [jsonDic objectForKey:key];
        NSLog(@"%@-------%@",key,value);
    }


}
@end
