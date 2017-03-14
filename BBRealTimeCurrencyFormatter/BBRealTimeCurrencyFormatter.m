//
//  BBRealTimeCurrencyFormatter.m
//  currencyformatter
//
//  Created by Kaio Medau on 12/15/16.
//  Copyright © 2016 Kaio Medau <https://github.com/kaiomedau>.  All rights reserved.
//

#import "BBRealTimeCurrencyFormatter.h"
#import <UIKit/UIKit.h>

@implementation BBRealTimeCurrencyFormatter

//Update textfield with given range and string
+ (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    
    //get current text after typing
    NSString * currentText = [textField.text stringByReplacingCharactersInRange:range withString:string];
    
    //get current value from string
    NSDecimalNumber *currentDecimal = [NSDecimalNumber decimalNumberWithString:[self keepOnlyNumbers:currentText]];
    
    //format amount into a string
    NSString *newValueString = [self amountToString:currentDecimal includeCurrencySymbol:YES];
    
    //update textfield
    [textField setText:newValueString];
    
    return NO;
}


//Remove all characters BUT numbers
+ (nullable NSString *)keepOnlyNumbers:(nonnull NSString *)string{
    return [[string componentsSeparatedByCharactersInSet:[[NSCharacterSet decimalDigitCharacterSet] invertedSet]] componentsJoinedByString:@""];
}

//Return a currency formatted string
+ (nonnull NSString *)amountToString:(nonnull NSDecimalNumber *)amount includeCurrencySymbol:(BOOL)symbol{
    
    NSLocale *locale  = [NSLocale currentLocale];
    
    //Convert it to currency
    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
    [numberFormatter setLocale:locale];
    [numberFormatter setNumberStyle:NSNumberFormatterCurrencyStyle]; //Set currency style
    [numberFormatter setMultiplier:[NSNumber numberWithFloat:.01]];  //Ensure cents calculation
    [numberFormatter setDecimalSeparator:[locale objectForKey:NSLocaleDecimalSeparator]];
    [numberFormatter setCurrencyGroupingSeparator:[locale objectForKey:NSLocaleGroupingSeparator]];
    
    if(!symbol){
        [numberFormatter setCurrencySymbol:@""]; //Remove currency symbol - This'll avoid NaN results
    }
    
    //return new amount string
    return [numberFormatter stringFromNumber:amount];
}

@end
