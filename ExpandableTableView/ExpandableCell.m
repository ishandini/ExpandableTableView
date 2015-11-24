//
//  ExpandableCell.m
//  ExpandableTableView
//
//  Created by Ishan on 11/2/15.
//
//

#import "ExpandableCell.h"

@interface ExpandableCell()

@property (strong, nonatomic) IBOutlet UILabel *lblTitle;
@property (strong, nonatomic) IBOutlet UILabel *lblFooter;


@end

@implementation ExpandableCell

-(void)configureCellForString:(NSString *)string {

    self.lblTitle.text = string;
    self.lblFooter.text = [NSString stringWithFormat:@"%@ - footer",string];
}

@end
