//
//  ViewController.m
//  currencyformatter
//
//  Created by Comediante on 12/15/16.
//  Copyright © 2016 Kaio Medau (https://github.com/kaiomedau). All rights reserved.
//

#import "ViewController.h"
#import "BBRealTimeCurrencyFormatter.h"

@interface ViewController () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *tfCurrency;

@end

@implementation ViewController


- (void)viewDidLoad{
    [super viewDidLoad];
    [[self tfCurrency] setDelegate:self]; //Ensure evocation of delegate methods
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{

    [BBRealTimeCurrencyFormatter textField:textField shouldChangeCharactersInRange:range replacementString:string];

    return NO;
}



@end
