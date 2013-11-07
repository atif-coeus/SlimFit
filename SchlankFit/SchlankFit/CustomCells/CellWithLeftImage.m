//
//  CellWithLeftImage.m
//  SchlankFit
//
//  Created by Ans Riaz on 11/7/13.
//  Copyright (c) 2013 Prinovis. All rights reserved.
//

#import "CellWithLeftImage.h"

@implementation CellWithLeftImage

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

-(void) mapDataOnCellFromDict:(NSDictionary*)data{
    if(data){
        [self.tageValue setText:data[@"tage"]];
        [self.dietIcon setImage:[UIImage imageNamed:data[@"icon"]]];
        [self.dietName setText:data[@"dietName"]];
    }
}

+(CellWithLeftImage *) tableView:(UITableView*)tableView cellWithLeftImageWithIdentifier:(NSString*)identifier {
    CellWithLeftImage * cell = nil ;
    
    cell = (CellWithLeftImage*)[tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        NSArray * arr= [[NSBundle mainBundle] loadNibNamed:identifier owner:self options:nil];
        cell= [arr objectAtIndex:0];
    }
    return cell;
}

@end
