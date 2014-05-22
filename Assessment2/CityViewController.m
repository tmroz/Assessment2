//
//  CityViewController.m
//  Assessment2
//
//  Created by Thomas M. Mroz on 5/22/14.
//  Copyright (c) 2014 BGHS. All rights reserved.
//

#import "CityViewController.h"

@interface CityViewController ()
@property (weak, nonatomic) IBOutlet UILabel *displayCityLabel;
@property (weak, nonatomic) IBOutlet UILabel *displayStateLabel;

@end

@implementation CityViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    self.displayCityLabel.text = self.city.city;
    self.displayStateLabel.text = self.city.state;
    

}
- (IBAction)dismiss:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}




@end
