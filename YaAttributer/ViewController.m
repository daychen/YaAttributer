//
//  ViewController.m
//  YaAttributer
//
//  Created by YA CHEN on 15/7/15.
//  Copyright (c) 2015 YA CHEN. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextView *body;
@property (weak, nonatomic) IBOutlet UILabel *headline;
@property (weak, nonatomic) IBOutlet UIButton *outlineButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    NSMutableAttributedString *outlineTitle=
    [[NSMutableAttributedString alloc]initWithString:self.outlineButton.currentTitle];
    
    [outlineTitle setAttributes:@{NSStrokeWidthAttributeName:@3, NSStrokeColorAttributeName:self.outlineButton.tintColor} range:NSMakeRange(0, [outlineTitle length])];
    
    [self.outlineButton setAttributedTitle:outlineTitle forState:UIControlStateNormal];
    
}

-(void)viewWillAppear:(BOOL)animated{

    [super viewWillAppear:animated];
    
    [self usePreferredFont];
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(preferredFontChange)
                                                 name:UIContentSizeCategoryDidChangeNotification
                                               object:nil];
    
    
    

}

-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIContentSizeCategoryDidChangeNotification object:nil];

}

-(void)preferredFontChange{

    [self usePreferredFont];
    
}

-(void)usePreferredFont{
    self.body.font=[UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    self.headline.font=[UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
    
}

- (IBAction)changeSelectedTextColorButton:(UIButton *)sender {
    
    [self.body.textStorage addAttribute:NSForegroundColorAttributeName value:sender.backgroundColor range:self.body.selectedRange];
    
}
- (IBAction)outlineBodySelection {
    
    
    [self.body.textStorage addAttributes:@{NSStrokeColorAttributeName:[UIColor blackColor],NSStrokeWidthAttributeName:@-3} range:self.body.selectedRange];
}
- (IBAction)removeOutlineBodySelection {
    
    [self.body.textStorage removeAttribute:NSStrokeWidthAttributeName range:self.body.selectedRange];
  
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
