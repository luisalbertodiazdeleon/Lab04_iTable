//
//  HomeScreenViewController.m
//  Lab04_Table
//
//  Created by Luis Diaz on 6/21/16.
//  Copyright © 2016 Luis Diaz. All rights reserved.
//

#import "HomeScreen.h"

@interface HomeScreen ()
@property NSMutableArray *SimpsonNames;
@property NSMutableArray *SimpsonImgs;
@end

@implementation HomeScreen

/*************************/
#pragma mark - Initialization methods
/*************************/

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initController];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//-------------------------------------------------------------------------------
- (void)initController {
    self.SimpsonNames   = [[NSMutableArray alloc] initWithObjects: @"Lisa", @"Maggie", @"Bart", nil];
    
    self.SimpsonImgs   = [[NSMutableArray alloc] initWithObjects: @"lisa_test.gif", @"maggie_test.gif", @"bart_test.png", nil];
}

/**********************************************************************************************/
#pragma mark - Table source and delegate methods
/**********************************************************************************************/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.SimpsonNames.count;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 70;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //Initialize cells
    cellSimpson *cell = (cellSimpson *)[tableView dequeueReusableCellWithIdentifier:@"cellSimpson"];
    
    if (cell == nil) {
        [tableView registerNib:[UINib nibWithNibName:@"cellSimpson" bundle:nil] forCellReuseIdentifier:@"cellSimpson"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"cellSimpson"];
    }
    //Fill cell with info from arrays
    cell.lblName.text       = self.SimpsonNames[indexPath.row];
    cell.imgSimpson.image   = [UIImage imageNamed:self.SimpsonImgs[indexPath.row]];
    
    return cell;
}
//-------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
   self.LosSimpson.text =self.SimpsonNames[indexPath.row];
}









@end
