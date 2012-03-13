//
//  DetailsViewController.h
//  RetailTip
//
//  Created by Senthil Kumar Vijayakumar on 13/02/12.
//  Copyright (c) 2012 ThoughtWorks. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "Tip.h"

@interface DetailsViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextView *detailTip;
@property (strong, nonatomic) Tip *tip;
@end
