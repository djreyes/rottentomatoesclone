//
//  Movie.h
//  rottentomatoes
//
//  Created by Jeremy Reyes on 10/17/13.
//  Copyright (c) 2013 Jeremy Reyes. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Movie : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *starring;

+ (NSArray *)moviesWithJson:(NSArray *)jsonArray;

@end
