//
//  BBRealTimeCurrencyFormatter.h
//  currencyformatter
//
//  Created by Kaio Medau on 12/15/16.
//  Copyright © 2016 Kaio Medau <https://github.com/kaiomedau> All rights reserved.
//

#import <Foundation/Foundation.h>
@class UITextField;

@interface BBRealTimeCurrencyFormatter : NSObject

//Update textfield with given range and string
+ (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string;

@end
