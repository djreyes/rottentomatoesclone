//
//  MovieCell.h
//  rottentomatoes
//
//  Created by Jeremy Reyes on 10/17/13.
//  Copyright (c) 2013 Jeremy Reyes. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Movie.h"

@interface MovieCell : UITableViewCell

@property (nonatomic, strong) Movie *movie;

//@property (nonatomic, weak) IBOutlet UILabel *titleLabel;
//@property (nonatomic, weak) IBOutlet UILabel *starringLabel;

@end
