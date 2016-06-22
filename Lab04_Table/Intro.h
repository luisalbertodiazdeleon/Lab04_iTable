//
//  Intro.h
//  Lab04_Table
//
//  Created by Luis Diaz on 6/21/16.
//  Copyright © 2016 Luis Diaz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Declarations.h"

@interface Intro : UIViewController
@property NSUInteger iPageIndex;
@property (strong, nonatomic) IBOutlet UILabel *lbIntro;
@property (weak, nonatomic) IBOutlet UIImageView *ImgIntro;

@end
