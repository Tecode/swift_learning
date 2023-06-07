//
//  Adapter.m
//  app-oc
//
//  Created by 昊轩 on 2023/6/7.
//

#import "Adapter.h"

@implementation Adapter
//iphone xs max
+ (CGSize)sizeFor65Inch{
    return CGSizeMake(414,896);
}

//iphone xr
+ (CGSize)sizeFor61Inch{
    return CGSizeMake(414,896);
}

// iphonex
+ (CGSize)sizeFor58Inch{
    return CGSizeMake(375,812);
}
//plus
//4 /5
@end
