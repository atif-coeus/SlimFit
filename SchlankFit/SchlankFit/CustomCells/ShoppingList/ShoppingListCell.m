//
//  ShoppingListCell.m
//  SchlankFit
//
//  Created by Rizh Ch on 10/11/2013.
//  Copyright (c) 2013 Prinovis. All rights reserved.
//

#import "ShoppingListCell.h"
#import "UnderLineLabel.h"

@implementation ShoppingListCell

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

-(void)editItem{
    [self.editView setHidden:NO];
}

- (IBAction)showUnits:(id)sender {
//    NSArray *arr = @[@"1 Tag", @"2 Tage", @"3 Tage", @"4 Tage", @"5 Tage", @"6 Tage", @"7 Tage", @"8 Tage", @"9 Tage"];
//    
//    NSArray * arrImage = nil;
//    
//    if(dropDown == nil) {
//        
//        CGFloat f = 200;
//        dropDown =[[NIDropDown alloc] showDropDown:sender withHeight:&f withTexts:arr havingImages:arrImage andDirection:DropDownOpeningDirection_Down];
//        dropDown.delegate = self;
//        
//    }
//    else {
//        [dropDown hideDropDown:sender];
//        dropDown = nil;
//    }
}

- (void) niDropDownDelegateMethod: (NIDropDown *) sender {
    dropDown = nil;
}

@end
