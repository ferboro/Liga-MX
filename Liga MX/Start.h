//
//  ViewController.h
//  Liga MX
//
//  Created by Fer on 6/19/16.
//  Copyright © 2016 Fer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Declarations.h"
#import "Intro.h"

@interface Start : UIViewController<UIPageViewControllerDelegate, UIPageViewControllerDataSource>

@property (strong, nonatomic) UIPageViewController *pageViewController;

@end

