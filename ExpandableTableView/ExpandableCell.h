//
//  ExpandableCell.h
//  ExpandableTableView
//
//  Created by Ishan on 11/2/15.
//
//

#import <UIKit/UIKit.h>

@interface ExpandableCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UIImageView *imgArraow;

-(void)configureCellForString:(NSString *)string;


@end
