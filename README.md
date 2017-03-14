<p><img src="https://www.dropbox.com/s/ns9r1wkw7sm79la/currencyformatter.png?dl=1" align="right"/>
<h1>Objective-C Realtime Currency Formatter</h1>
</p>

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

An extremely simple Objective-C class for formatting currencies.
Ready to work with the `UITextFieldDelegate` and format currencies while typing.


## How to use
- Download or clone this repository
- Copy `BBRealTimeCurrencyFormatter.h` and `BBRealTimeCurrencyFormatter.m` to your project
- Import `BBRealTimeCurrencyFormatter.h` on your implementation file (`.m` extension!)
- Ensure your controller conforms to the `UITextFieldDelegate` protocol
- Implement the `UITextFieldDelegate` method `textField:shouldChangeCharactersInRange:replacementString:` and invoke the `BBRealTimeCurrencyFormatter`'s method `textField:shouldChangeCharactersInRange:replacementString:`
- Done!

## Example
```objective-c
// MyViewController.m

//#import "MyViewController.h"
#import "BBRealTimeCurrencyFormatter.h" //Import the BBRealTime class

// Ensure it conforms to the UITextFieldDelegate protocol
@interface ViewController () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *tfCurrency; //UITextField that will receive the formatted string
@end

@implementation ViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    [[self tfCurrency] setDelegate:self]; // Ensure the field delegates its events to this controller
}

//Implement UITextFieldDelegate method
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{

    //Format the textfiled
    [BBRealTimeCurrencyFormatter textField:textField shouldChangeCharactersInRange:range replacementString:string];
    return NO;
}

@end
```

## License

```
MIT License

Copyright (c) 2016-2017 Kaio Medau

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
