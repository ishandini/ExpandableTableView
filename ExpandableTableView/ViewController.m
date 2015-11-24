//
//  ViewController.m
//  ExpandableTableView
//
//  Created by Ishan on 11/2/15.
//
//

#import "ViewController.h"
#import "ExpandableCell.h"

@interface ViewController () <UITableViewDataSource,UITableViewDelegate>

@property(strong,nonatomic)NSMutableArray *array;

@property(strong,nonatomic)NSMutableArray *modifiedRows;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    self.array = [[NSMutableArray alloc] initWithObjects:@"Afghanistan", @"Albania", @"Algeria", @"American Samoa", @"Andorra", @"Angola", @"Anguilla", @"Antarctica", @"Wallis and Futuna Islands", @"Western Sahara", @"Yemen", @"Yugoslavia", @"Zambia", @"Zimbabwe", nil];
    
     self.modifiedRows = [NSMutableArray array];
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Tableview Datasource & delegate

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.array.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    ExpandableCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    cell.imgArraow.image = [UIImage imageNamed:@"img_down_arrow_blue"];
    [cell configureCellForString:[self.array objectAtIndex:indexPath.row]];
    
    return cell;
    
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {

    if ([self.modifiedRows containsObject:indexPath]){ //check user click indexpath already in expanded row array
        
        return  180; // this is row content height after expanded
    }
    
    return 50; // this is default table row height for title
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
 
    if ([self.modifiedRows containsObject:indexPath]) {
        //when user click a row collapse and remove from array
        [self.modifiedRows removeObject:indexPath];
        
        
    } else {
       
        // this is very first time user click on a new row
       
        [self.modifiedRows addObject:indexPath];
        
    }
    
    // This will animate updating the row sizes
    [tableView reloadRowsAtIndexPaths:self.modifiedRows withRowAnimation:UITableViewRowAnimationAutomatic];
    
    
   
    
    
}





@end
