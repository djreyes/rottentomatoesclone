//
//  RottenTomatoesClient.h
//  rottentomatoes
//
//  Created by Jeremy Reyes on 10/17/13.
//  Copyright (c) 2013 Jeremy Reyes. All rights reserved.
//

#import "AFHTTPClient.h"

@interface RottenTomatoesClient : AFHTTPClient

- (void)boxOfficeWithSuccess:(void (^)(AFHTTPRequest *operation, NSArray *movies))success failure:(void (^)(AFHTTPRequestOperation *, NSError *))failure;

@end
