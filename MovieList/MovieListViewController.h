//
//  MovieListViewController.h
//  MovieList
//
//  Created by Emannuel Carvalho on 4/9/16.
//  Copyright © 2016 Emannuel Carvalho. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MovieListViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UILabel *movieListLabel;

@property (weak, nonatomic) IBOutlet UITextField *movieNameTextField;

@property (weak, nonatomic) IBOutlet UITextField *yearTextField;

@end








