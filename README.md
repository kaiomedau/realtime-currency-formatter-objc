[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

# Realtime Currency Formatter - objc
An extremely simple class made with Objective-C for formatting currencies.
Ready to work with the `UITextFieldDelegate` and format currencies while typing.

##How to use
- Download or clone this repository
- Copy the `BBRealTimeCurrencyFormatter` folder to your project
- Import the `BBRealTimeCurrencyFormatter.h` file into your controller.m 
- Implement the `UITextFieldDelegate` method `textField:shouldChangeCharactersInRange:replacementString:`
- Implement the `BBRealTimeCurrencyFormatter` method `textField:shouldChangeCharactersInRange:replacementString:`
- Done!

##Example
```objective-c
// MyViewController.m

//#import "MyViewController.h"
#import "BBRealTimeCurrencyFormatter.h" //Import the BBRealTime class

@interface ViewController () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *tfCurrency; //UITextField that will receive the formatted string
@end

@implementation ViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    [[self tfCurrency] setDelegate:self]; //Ensure evocation of delegate methods
}

//Implement UITextFieldDelegate method
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    
    //Format the textfiled
    [BBRealTimeCurrencyFormatter textField:textField shouldChangeCharactersInRange:range replacementString:string];
    return NO;
}
```
