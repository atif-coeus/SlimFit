//
//  DropDownController.h
//  IOTab
//
//  Created by Yunas Qazi on 5/29/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol DropDownDelegate ;

@interface DropDownController : UIViewController<UIActionSheetDelegate>{
    IBOutlet UIPickerView *_picker;
	UIActionSheet *actionSheet;
}

@property (nonatomic,assign) id<DropDownDelegate> delegate;
@property (nonatomic,retain) NSArray *dataArr;
@property (nonatomic,retain) NSString *selectedOption;
@property (nonatomic,retain) UIActionSheet *actionSheet;
-(void) presentDropDownInView :(UIView *)parentView;

@end


@protocol DropDownDelegate <NSObject>

-(void) itemSelectedWithText:(NSString*)text atIndex:(int)index;

@end
