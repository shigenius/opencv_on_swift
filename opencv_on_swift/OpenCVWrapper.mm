//
//  OpenCVWrapper.m
//  opencv_on_swift
//
//  Created by TATSUYA SHIGETOMI on 2017/11/23.
//  Copyright © 2017年 shige. All rights reserved.
//

#import "opencv2.framework/Headers/opencv.hpp"
#import "opencv2.framework/Headers/core.hpp"
#import "opencv2.framework/Headers/highgui/highgui.hpp"
#import "opencv2.framework/Headers/imgproc/imgproc.hpp"

//UIImageToMat(), MatToUIImage()を扱えるようにするためにimport
#import "opencv2.framework/Headers/imgcodecs/ios.h"

#import "OpenCVWrapper.h"

@implementation OpenCVWrapper//クラスの実装部分

/* Objective-c++:特徴として、Objective-cとc++両方のコードが書けます。 */

- (UIImage*)testFunction:(UIImage*)image {
    cv::Mat mat;
    UIImageToMat(image, mat);
    cv::cvtColor(mat, mat, CV_BGR2GRAY);
    image = MatToUIImage(mat);
    return image;
}
@end

