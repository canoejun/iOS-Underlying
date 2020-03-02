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
//    char _tallRichFat;
    struct {
        char tall : 1;
        char rich : 1;
        char fat : 1;
    } _tallRichFat;
}
@end

@implementation Person
-(void)setTall:(BOOL)tall{
    _tallRichFat.tall = tall;
}
-(BOOL)getTall{
    return !!_tallRichFat.tall;
}
-(void)setRich:(BOOL)rich{
    _tallRichFat.rich = rich;
}
-(BOOL)getRich{
    return !!_tallRichFat.rich;
}
-(void)setFat:(BOOL)fat{
    _tallRichFat.fat = fat;
}
-(BOOL)getFat{
    return !!_tallRichFat.fat;
}
@end
