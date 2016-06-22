//
//  ViewController.h
//  Lab04_Table
//
//  Created by Luis Diaz on 6/17/16.
//  Copyright © 2016 Luis Diaz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Declarations.h"
#import "intro.h"

@interface Start : UIViewController<UIPageViewControllerDelegate,UIPageViewControllerDataSource>

@property (strong,nonatomic)UIPageViewController *pageViewController;


@end

