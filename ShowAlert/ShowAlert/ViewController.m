//
//  ViewController.m
//  ShowAlert
//
//  Created by Florin Rosca on 7/9/15.
//  Copyright (c) 2015 Florin Rosca. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


// Invoked when the user taps on the Alert button.
// From http://stackoverflow.com/questions/24224916/presenting-a-uialertcontroller-properly-on-an-ipad-using-ios-8
//
- (IBAction)showAlert:(id)sender {
    UIAlertController *alertController;
    UIAlertAction *okAction;
    
    alertController = [UIAlertController alertControllerWithTitle:@"Alert" message:@"This is an alert" preferredStyle:UIAlertControllerStyleAlert];
    
    okAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        NSLog(@"OK pressed");
    }];
    
    [alertController addAction:okAction];
    [alertController setModalPresentationStyle:UIModalPresentationPopover];
    
    UIPopoverPresentationController *popPresenter = [alertController popoverPresentationController];
    popPresenter.sourceView = self.buttonForAlert;
    popPresenter.sourceRect = self.buttonForAlert.bounds;
    
    [self presentViewController:alertController animated:YES completion:nil];
}

@end
