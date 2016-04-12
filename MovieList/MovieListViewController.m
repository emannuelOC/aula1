//
//  MovieListViewController.m
//  MovieList
//
//  Created by Emannuel Carvalho on 4/9/16.
//  Copyright © 2016 Emannuel Carvalho. All rights reserved.
//

#import "MovieListViewController.h"
#import "Movie.h"

@interface MovieListViewController () {
    NSMutableArray *_movies; // model
}
@end

@implementation MovieListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _movieNameTextField.delegate = self;
    _yearTextField.delegate = self;
    _movies = [[NSMutableArray alloc] init];
}

- (IBAction)save:(UIButton *)sender {
    NSString *movieName = _movieNameTextField.text;
    NSString *yearString = _yearTextField.text;
    // verificar informações
    if (movieName != nil &&
        ![movieName isEqualToString:@""] &&
        yearString != nil &&
        ![yearString isEqualToString:@""]) {
        NSInteger year = [yearString integerValue];
        // criando o objeto Movie
        Movie *movie = [[Movie alloc] init];
        movie.title = movieName;
        movie.year = year;
        // adicionar no array
        [_movies addObject:movie];
        [self updateUI];
    } else {
        NSString *title = @"Informações inválidas";
        NSString *msg = @"Digite um título e um ano válido (somente números).";

        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:msg preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *action = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            [_movieNameTextField becomeFirstResponder];
        }];
        [alertController addAction:action];
        [self presentViewController:alertController
                           animated:YES
                         completion:nil];
    }
}

- (void)updateUI {
    NSString *outputString = @"";
    for (Movie *movie in _movies) {
        NSString *stringRepresentation =
        [NSString stringWithFormat:@"%@\n", [movie stringRepresentation]];
        outputString = [outputString stringByAppendingString:stringRepresentation];
    }
    _movieListLabel.text = outputString;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    if ([textField isEqual:_movieNameTextField]) {
        [_yearTextField becomeFirstResponder];
    } else {
        [self save:nil];
    }
    return YES;
}





@end









