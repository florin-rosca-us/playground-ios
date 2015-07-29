//
//  ViewController.h
//  ShowAlert
//
//  Created by Florin Rosca on 7/9/15.
//  Copyright (c) 2015 Florin Rosca. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *buttonForAlert;

- (IBAction)showAlert:(id)sender;

@end

