//
//  CreateDietViewController.m
//  SchlankFit
//
//  Created by Muhammad Atif on 05/11/2013.
//  Copyright (c) 2013 Prinovis. All rights reserved.
//

#import "CreateDietViewController.h"
#import "CreateDietNotifierView.h"

@interface CreateDietViewController ()

@end

@implementation CreateDietViewController

#pragma mark - Init Content

-(void) initContentView{
    
    CreateDietNotifierView *notifierView = [CreateDietNotifierView
                                            loadWithNib];
    [self.view addSubview:notifierView];
//    CGRect frame = notifierView.frame;
//    frame.origin = CGPointZero;
//    [notifierView setFrame:frame];

    [notifierView performSelector:@selector(show) withObject:nil afterDelay:1.0];
}


#pragma mark - 

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    [self initContentView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)selectDiet:(UIButton*)sender{
    NSArray *arr = @[@"1 Tag", @"2 Tage", @"3 Tage", @"4 Tage", @"5 Tage", @"6 Tage", @"7 Tage", @"8 Tage", @"9 Tage"];
//    UIImage *img1 = [UIImage imageNamed:@"apple.png"];
//    UIImage *img2 = [UIImage imageNamed:@"apple2.png"];
    
    NSArray * arrImage = nil;//@[ img1, img2, img1, img2,img1, img2,img1, img2,img1, img2];
    
    if(dropDown == nil) {
        
        CGFloat f = 200;
        dropDown =[[NIDropDown alloc] showDropDown:sender withHeight:&f withTexts:arr havingImages:arrImage andDirection:DropDownOpeningDirection_Down];
        dropDown.delegate = self;
        
    }
    else {
        [dropDown hideDropDown:sender];
        dropDown = nil;
    }
}


- (void) niDropDownDelegateMethod: (NIDropDown *) sender {
     dropDown = nil;
}


#pragma mark - 

-(IBAction)checkButtonAction:(UIButton*)sender{
    
//    if ([sender isSelected]) {
        [sender setSelected:![sender isSelected]];
//    }
}

@end
