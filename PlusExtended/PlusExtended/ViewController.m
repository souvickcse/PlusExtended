//
//  ViewController.m
//  PlusExtended
//
//  Created by souvick on 04/07/17.
//  Copyright © 2017 souvick. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    BOOL isOpened;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupUI];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setupUI {
    _constMiddleButtonWidth.constant = 50.0;
    _constMiddleButtonHeight.constant = 50.0;
    _constMiddleButtonlead.constant = _constMiddleButtontrail.constant = ([[UIScreen mainScreen] bounds].size.width-60.0-150.0)/4.0;
    [self.view layoutIfNeeded];
    _viewVertical.layer.masksToBounds = YES;
    
}

- (IBAction)btnPlusAction:(id)sender {
    [_btnPlus setEnabled:NO];
    if(isOpened) {
        isOpened = NO;
        _constViewVertiacalWidth.constant = 2.0;
        [UIView animateWithDuration:0.2 animations:^{
            [self.view layoutIfNeeded];
            for(UIView *view in _viewButtonGroup) {
                view.alpha = 1.0;
            }
            
            for(UIButton *btn in _btnTopGroup) {
                btn.alpha = 0.0;
            }
        } completion:^(BOOL finished) {
            
            _constViewVerticalHeight.constant = 30.0;
            _constViewVerticalCenterY.constant = 0.0;
            
            [UIView animateWithDuration:0.2 animations:^{
                [self.view layoutIfNeeded];
            } completion:^(BOOL finished) {
                [_btnPlus setEnabled:YES];
            }];
        }];

    } else {
        isOpened = YES;
        _constViewVerticalHeight.constant = 80.0;
        _constViewVerticalCenterY.constant = -70.0;
        [UIView animateWithDuration:0.2 animations:^{
            [self.view layoutIfNeeded];

        } completion:^(BOOL finished) {
            _constViewVertiacalWidth.constant = [[UIScreen mainScreen] bounds].size.width-60.0;
            [UIView animateWithDuration:0.2 animations:^{
                [self.view layoutIfNeeded];
                for(UIView *view in _viewButtonGroup) {
                    view.alpha = 0.0;
                }
                
                for(UIButton *btn in _btnTopGroup) {
                    btn.alpha = 1.0;
                }
                
            } completion:^(BOOL finished) {
                [_btnPlus setEnabled:YES];
            }];
        }];
    }
    
}
@end
