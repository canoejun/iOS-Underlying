//
//  Person.m
//  00-Runtime
//
//  Created by canoejun on 2020/3/2.
//  Copyright © 2020 canoejun. All rights reserved.
//

#import "Person.h"

//掩码
#define ZJTallMASK 1 << 0  //0b 0000 0001
#define ZJRichMASK 1 << 1  //0b 0000 0010
#define ZJFatMASK 1 << 2  //0b 0000 0100


@interface Person()
{
    char _tallRichFat;
}

@end

@implementation Person
- (instancetype)init
{
    self = [super init];
    if (self) {
        _tallRichFat = 0b00000101;
    }
    return self;
}

-(void)setTall:(BOOL)tall{
    if (tall) {
        _tallRichFat |= ZJTallMASK;
    }else{
        _tallRichFat &= ~(ZJTallMASK);
    }
    
}
-(BOOL)getTall{
    return !!(_tallRichFat & ZJTallMASK);
}
-(void)setRich:(BOOL)rich{
    if (rich) {
        _tallRichFat |= ZJRichMASK;
    }else{
        _tallRichFat &= ~(ZJRichMASK);
    }
}
-(BOOL)getRich{
    return !!(_tallRichFat & ZJRichMASK);
}
-(void)setFat:(BOOL)fat{
    if (fat) {
        _tallRichFat |= ZJFatMASK;
    }else{
        _tallRichFat &= ~(ZJFatMASK);
    }
}
-(BOOL)getFat{
    return !!(_tallRichFat & ZJFatMASK);
}
@end
