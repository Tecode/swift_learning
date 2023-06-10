//
//  Location.m
//  app-oc
//
//  Created by 昊轩 on 2023/6/9.
//

#import "Location.h"
#import <Corelocation/CoreLocation.h>

@interface Location()<CLLocationManagerDelegate>
@property (nonatomic, strong, readwrite) CLLocationManager *manager;
@end

@implementation Location
+ (Location *) locationManager
{
    static Location *locationManager;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        locationManager = [[Location alloc] init];
    });
    return locationManager;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.manager = [[CLLocationManager alloc] init];
        self.manager.delegate = self;
    }
    return self;
}

- (void) checkLocationAuthorization
{
    //    判断系统是的定位开关是否开启
    if (![CLLocationManager locationServicesEnabled]) {
        //        弹窗引导开启
    }
    
    if ([CLLocationManager authorizationStatus] == kCLAuthorizationStatusNotDetermined) {
        NSLog(@"获取位置权限");
        [self.manager requestWhenInUseAuthorization];
    }
}

- (void)locationManager:(CLLocationManager *)manager didChangeAuthorizationStatus:(CLAuthorizationStatus)status
{
    if (status == kCLAuthorizationStatusAuthorizedWhenInUse) {
        [self.manager startUpdatingLocation];
    } else if (status == kCLAuthorizationStatusDenied)
    {
        
    }
}

- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray<CLLocation *> *)locations
{
    CLLocation *location = [locations firstObject];
    CLGeocoder *coder = [[CLGeocoder alloc] init];
    [coder reverseGeocodeLocation:location completionHandler:^(NSArray<CLPlacemark *> * _Nullable placemarks, NSError * _Nullable error) {
        //        地标信息
    }];
    [self.manager stopUpdatingLocation];
    NSLog(@"");
}

@end
