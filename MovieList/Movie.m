//
//  Movie.m
//  MovieList
//
//  Created by Emannuel Carvalho on 4/9/16.
//  Copyright © 2016 Emannuel Carvalho. All rights reserved.
//

#import "Movie.h"

@implementation Movie

- (NSString *)stringRepresentation {
    NSString *representation = [NSString stringWithFormat:@"🎥 %@ (%li)", _title, _year];
    return  representation;
}


@end
