//
//  ColorTableViewController.m
//  Yellow
//
//  Created by Neil de Carteret on 22/07/2016.
//  Copyright © 2016 Neil de Carteret. All rights reserved.
//

#import "ColorTableViewController.h"

@interface ColorTableViewController ()

@end

@implementation ColorTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    _colorList = @[
                   @[@"White", [UIColor whiteColor]],
                   @[@"Yellow", [UIColor yellowColor]],
                   @[@"Red", [UIColor redColor]],
                   @[@"Pink", [UIColor colorWithRed:1.0 green:0.5 blue:0.5 alpha:1.0]],
                   @[@"Black", [UIColor blackColor]],
                   @[@"Blue", [UIColor colorWithRed:0.3 green:0.4 blue:0.9 alpha:1.0]],
                   @[@"Purple", [UIColor purpleColor]],
                   @[@"Beige", [UIColor colorWithRed:0.8 green:0.75 blue:0.5 alpha:1.0]],
                   @[@"Brown", [UIColor colorWithRed:0.5 green:0.4 blue:0 alpha:1.0]],
                ];
    
    self.title = @"Colours";
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _colorList.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Title"];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Title"];
    }
    // Configure the cell...
    cell.textLabel.text = _colorList[indexPath.row][0];
    
    return cell;
}

- (void)      tableView:(UITableView *)tableView
didSelectRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
    //[self.view setBackgroundColor:_colorList[indexPath.row][1]];
    UIViewController *newViewController = [[UIViewController alloc] init];
    newViewController.view.backgroundColor = _colorList[indexPath.row][1];
    newViewController.title = _colorList[indexPath.row][0];
    [self.navigationController pushViewController:newViewController animated:YES];
    
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
