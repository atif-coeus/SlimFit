//
//  FirstCheckinView.h
//  Spontify
//
//  Created by Ahsan on 8/3/12.
//  Copyright (c) 2012 WhiteSpaceConflict. All rights reserved.
//

#import "DialogView.h"



@interface DownloadingAlert : DialogView

@property (strong, nonatomic) IBOutlet UIProgressView *progressView;
@property (strong, nonatomic) IBOutlet UILabel *lblProgress;

+ (id) loadWithNib; 

@end
