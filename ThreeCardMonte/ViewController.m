//
//  ViewController.m
//  ThreeCardMonte
//
//  Created by jonathan thornburg on 5/16/15.
//  Copyright (c) 2015 jonathan thornburg. All rights reserved.
//

#import "ViewController.h"
#import "RightViewController.h"
#import "WrongViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self showAlert];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)showAlert
{
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Choose one" message:@"Two are wrong; one is right" preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *action1 = [UIAlertAction actionWithTitle:@"Strait of Predators" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        [self.navigationController pushViewController:[WrongViewController new] animated:NO];
        [self showAnswerResultWithTitle:@"Fail" Message:@"Sorry"];
    }];
    UIAlertAction *action2 = [UIAlertAction actionWithTitle:@"Cliff's Edge" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        [self.navigationController pushViewController:[WrongViewController new] animated:NO];
        [self showAnswerResultWithTitle:@"Fail" Message:@"Sorry"];
    }];
    UIAlertAction *action3 = [UIAlertAction actionWithTitle:@"Clear Passage" style:UIAlertActionStyleDestructive handler:^(UIAlertAction *action) {
        [self.navigationController pushViewController:[RightViewController new] animated:NO];
        [self showAnswerResultWithTitle:@"Success" Message:@"To The Bank!"];
    }];
    [alert addAction:action1];
    [alert addAction:action2];
    [alert addAction:action3];
    
    [self.navigationController presentViewController:alert animated:YES completion:nil];
}

- (void)showAnswerResultWithTitle:(NSString *)title Message:(NSString*)message
{
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *action1 = [UIAlertAction actionWithTitle:@"Done" style:UIAlertActionStyleDestructive handler:^(UIAlertAction *action) {
    }];
    UIAlertAction *action2 = [UIAlertAction actionWithTitle:@"Play again" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        [self showAlert];
    }];
    
    [alert addAction:action1];
    [alert addAction:action2];
    
    [self.navigationController presentViewController:alert animated:YES completion:nil];
}
@end
