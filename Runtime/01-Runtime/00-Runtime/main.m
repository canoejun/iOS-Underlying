//
//  main.m
//  00-Runtime
//
//  Created by canoejun on 2020/3/2.
//  Copyright © 2020 canoejun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
/**
 Runtime 
 
 
 */

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [[Person alloc] init];
        
        NSLog(@"tall:%d rich:%d fat:%d",p.getTall,p.getRich,p.getFat);
        p.tall = YES;
        p.rich = NO;
        p.fat = YES;
        NSLog(@"tall:%d rich:%d fat:%d",p.getTall,p.getRich,p.getFat);
        
        
        
        
    }
    return 0;
}
