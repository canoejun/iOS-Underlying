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
    union {
        char bits;
        struct {
            char tall : 1;
            char rich : 1;
            char fat : 1;
        };
    } _tallRichFat;
}
@end

@implementation Person
-(void)setTall:(BOOL)tall{
    if (tall) {
        _tallRichFat.bits |= ZJTallMASK;
    }else{
        _tallRichFat.bits &= ~(ZJTallMASK);
    }
    
}
-(BOOL)getTall{
    return !!(_tallRichFat.bits & ZJTallMASK);
}
-(void)setRich:(BOOL)rich{
    if (rich) {
        _tallRichFat.bits |= ZJRichMASK;
    }else{
        _tallRichFat.bits &= ~(ZJRichMASK);
    }
}
-(BOOL)getRich{
    return !!(_tallRichFat.bits & ZJRichMASK);
}
-(void)setFat:(BOOL)fat{
    if (fat) {
        _tallRichFat.bits |= ZJFatMASK;
    }else{
        _tallRichFat.bits &= ~(ZJFatMASK);
    }
}
-(BOOL)getFat{
    return !!(_tallRichFat.bits & ZJFatMASK);
}
@end
