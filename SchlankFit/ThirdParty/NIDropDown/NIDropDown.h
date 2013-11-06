//
//  NIDropDown.h
//  NIDropDown
//
//  Created by Yunas Qazi on 11/5/13.
//  Copyright (c) 2013 Nitor YQ. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum {
    DropDownOpeningDirection_Up,
    DropDownOpeningDirection_Down,
}DropDownOpeningDirection;


@class NIDropDown;
@protocol NIDropDownDelegate
- (void) niDropDownDelegateMethod: (NIDropDown *) sender;
@end

@interface NIDropDown : UIView <UITableViewDelegate, UITableViewDataSource>
{
    DropDownOpeningDirection animationDirection;
    UIImageView *imgView;
}
@property (nonatomic, retain) id <NIDropDownDelegate> delegate;
@property (nonatomic) DropDownOpeningDirection animationDirection;;
-(void)hideDropDown:(UIButton *)b;

- (id)showDropDown:(UIButton *)btn
        withHeight:(CGFloat *)height
         withTexts:(NSArray *)arr
      havingImages:(NSArray *)imgArr
      andDirection:(DropDownOpeningDirection)direction;

@end
