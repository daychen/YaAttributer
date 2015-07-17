//
//  TextStatViewController.m
//  YaAttributer
//
//  Created by Chen, Ya on 7/17/15.
//  Copyright (c) 2015 YA CHEN. All rights reserved.
//

#import "TextStatViewController.h"

@interface TextStatViewController ()
@property (weak, nonatomic) IBOutlet UILabel *colorTextLabel;
@property (weak, nonatomic) IBOutlet UILabel *strokeTextLabel;

@end

@implementation TextStatViewController


-(void)setTextAnalysis:(NSAttributedString *)textAnalysis{

    _textAnalysis=textAnalysis;
    [self updateUI];
    

}


-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self updateUI];

}


-(NSAttributedString *)charactersWithAttribute:(NSString *)attributeName{
    
    NSMutableAttributedString *characters=[[NSMutableAttributedString alloc]init];
    
    int index=0;
    while (index<[self.textAnalysis length]) {
        
        
    }
    
    
    return characters;

}

-(void)updateUI{
    
    
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
