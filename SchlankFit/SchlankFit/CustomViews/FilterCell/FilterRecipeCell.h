//
//  FilterRecipeCell.h
//  SchlankFit
//
//  Created by Muhammad Rashid on 07/11/2013.
//  Copyright (c) 2013 Prinovis. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol  FilterDelegate;

@interface FilterRecipeCell : UITableViewCell {
    IBOutlet UIView *expansionView;
}
@property (nonatomic, assign) BOOL isFilterVisible;
@property (nonatomic, assign) id<FilterDelegate>filterDelegate;
- (IBAction)tapped:(id)sender;

@end

@protocol FilterDelegate <NSObject>
- (void) filterRecipeCell:(FilterRecipeCell*)filter didExpand:(BOOL)expand;
@end
