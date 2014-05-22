//
//  ViewController.m
//  Assessment2
//
//  Created by Thomas M. Mroz on 5/22/14.
//  Copyright (c) 2014 BGHS. All rights reserved.
//

#import "ViewController.h"
#import "City.h"
#import "CityViewController.h"


@interface ViewController () <UITableViewDelegate, UITableViewDataSource>
@property NSMutableArray *cities;
@property (weak, nonatomic) IBOutlet UITableView *myTableView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	City *city1 = [[City alloc] initWithCity: @"Chicago" state:@"Illinois"];
    City *city2 = [[City alloc] initWithCity: @"Sanibel" state:@"Florida"];
    City *city3 = [[City alloc] initWithCity: @"Santa Barbra" state:@"California"];
    City *city4 = [[City alloc] initWithCity: @"Wautoma" state:@"Wisconsin"];
    City *city5 = [[City alloc] initWithCity: @"Port Barrington" state:@"Illinois"];

    self.cities =[NSMutableArray arrayWithObjects: city1, city2, city3, city4, city5, nil];

}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSIndexPath *selectedIndexPath = self.myTableView.indexPathForSelectedRow;
    City *selectedCity = [self.cities objectAtIndex: selectedIndexPath.row ];
    CityViewController *cityDetailsVC = segue.destinationViewController;
    cityDetailsVC.city = selectedCity;
}


-(NSInteger) tableView:(UITableView *) tableView numberOfRowsInSection:(NSInteger)section
{
    return self.cities.count;
}

- (UITableViewCell *)tableView:(UITableView *) tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    City *city = [self.cities objectAtIndex:indexPath.row];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyCellId"];
    cell.textLabel.text = city.city;
    cell.detailTextLabel.text = city.state;
    return cell;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self.cities removeObjectAtIndex:indexPath.row];
    [tableView reloadData];
}

-(IBAction)unwindFrommCityDetail:(UIStoryboardSegue *)seque
{
    [self.myTableView reloadData];
}


@end
