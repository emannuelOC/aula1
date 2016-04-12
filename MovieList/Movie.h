//
//  Movie.h
//  MovieList
//
//  Created by Emannuel Carvalho on 4/9/16.
//  Copyright © 2016 Emannuel Carvalho. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Movie : NSObject

@property (strong, nonatomic) NSString *title;
@property (nonatomic) NSInteger year;

- (NSString *)stringRepresentation;

@end
