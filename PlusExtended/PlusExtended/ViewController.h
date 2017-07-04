//
//  ViewController.h
//  PlusExtended
//
//  Created by souvick on 04/07/17.
//  Copyright © 2017 souvick. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIView *viewVertical;
@property (weak, nonatomic) IBOutlet UIButton *btnPlus;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *constViewVertiacalWidth;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *constViewVerticalHeight;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *constViewVerticalCenterY;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *constMiddleButtonWidth;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *constMiddleButtonHeight;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *constMiddleButtontrail;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *constMiddleButtonlead;

- (IBAction)btnPlusAction:(id)sender;

@property (strong, nonatomic) IBOutletCollection(UIView) NSArray *viewButtonGroup;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *btnTopGroup;
@end

