//
//  FilterRecipeCell.m
//  SchlankFit
//
//  Created by Muhammad Rashid on 07/11/2013.
//  Copyright (c) 2013 Prinovis. All rights reserved.
//

#import "FilterRecipeCell.h"

@implementation FilterRecipeCell

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

- (IBAction)tapped:(id)sender {
    
    if (expansionView.hidden) {
        expansionView.hidden = NO;
    }
    else {
        expansionView.hidden = YES;    
    }
    
}

- (void)setIsFilterVisible:(BOOL)isFilterVisible {
    
    CGRect bounds = self.bounds;
    
    if (isFilterVisible) {
        bounds.size.height = 274;
    }
    else {
        bounds.size.height = 100;
    }
    
    self.bounds = bounds;
    
    if (_filterDelegate && [_filterDelegate respondsToSelector:@selector(filterRecipeCell:didExpand:)]) {
        [_filterDelegate filterRecipeCell:self didExpand:isFilterVisible];
    }
}

@end
