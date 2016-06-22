//
//  Intro.m
//  Lab04_Table
//
//  Created by Luis Diaz on 6/21/16.
//  Copyright © 2016 Luis Diaz. All rights reserved.
//

#import "Intro.h"

@interface Intro ()

@end

@implementation Intro

/*************************/
#pragma mark - Initialization methods
/*************************/

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//-------------------------------------------------------------------------------
-(void)viewWillAppear:(BOOL)animated {
    self.lbIntro.text  = maIntroTitles[self.iPageIndex];
    self.ImgIntro.image  = [UIImage imageNamed:maIntroImgs[self.iPageIndex ]];
    if (self.iPageIndex == 2)
    {
        self.btnIntro.hidden = FALSE;
    }
        
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

/*************************/
#pragma mark - Action methods
/*************************/

- (IBAction)btnIntro_Pressed:(id)sender {
    HomeScreen *vc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"HomeScreen"];
    
    [self presentViewController:vc animated:YES completion:nil];
}
@end
