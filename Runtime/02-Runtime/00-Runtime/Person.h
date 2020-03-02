//
//  Person.h
//  00-Runtime
//
//  Created by canoejun on 2020/3/2.
//  Copyright © 2020 canoejun. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

-(void)setTall:(BOOL)tall;
-(void)setRich:(BOOL)rich;
-(void)setFat:(BOOL)fat;

-(BOOL)getTall;
-(BOOL)getRich;
-(BOOL)getFat;

@end

NS_ASSUME_NONNULL_END
