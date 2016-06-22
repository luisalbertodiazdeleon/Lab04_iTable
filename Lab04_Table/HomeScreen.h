//
//  HomeScreenViewController.h
//  Lab04_Table
//
//  Created by Luis Diaz on 6/21/16.
//  Copyright © 2016 Luis Diaz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "cellSimpson.h"

@interface HomeScreen : UIViewController
@property (weak, nonatomic) IBOutlet UITableView *tblSimpson;
@property (weak, nonatomic) IBOutlet UILabel *LosSimpson;

@end
