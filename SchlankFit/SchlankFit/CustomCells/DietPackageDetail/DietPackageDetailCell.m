//
//  CellWithLeftImage.m
//  SchlankFit
//
//  Created by Ans Riaz on 11/7/13.
//  Copyright (c) 2013 Prinovis. All rights reserved.
//

#import "DietPackageDetailCell.h"

@implementation DietPackageDetailCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)layoutSubviews{
    [super layoutSubviews];
    
//    [self.favorite setFrame:CGRectMake(0,0,12,12)];
//    NSLog(@"%@",NSStringFromCGRect(self.favorite.frame));

}

-(void) mapDataOnCellFromDict:(NSDictionary*)data{

    if(data){
        [self.tageValue setText:data[@"tage"]];
        [self.dietIcon setImage:[UIImage imageNamed:data[@"icon"]]];
        [self.dietName setText:data[@"dietName"]];
        if([data[@"favorite"] isEqualToString:@"fav"]){
            [self.favorite setHidden:NO];

            CGSize textSize = [self.dietName.text sizeWithAttributes:@{NSFontAttributeName:self.dietName.font}];
            
            [self.favorite setFrame:CGRectMake(self.dietName.frame.origin.x + textSize.width + 10, self.dietName.frame.size.height, self.favorite.frame.size.width, self.favorite.frame.size.height)];
            
        }
    }
}

+(DietPackageDetailCell *) tableView:(UITableView*)tableView cellWithLeftImageWithIdentifier:(NSString*)identifier {
    DietPackageDetailCell * cell = nil ;
    
    cell = (DietPackageDetailCell*)[tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        NSArray * arr= [[NSBundle mainBundle] loadNibNamed:identifier owner:self options:nil];
        cell= [arr objectAtIndex:0];
    }
    return cell;
}

@end
