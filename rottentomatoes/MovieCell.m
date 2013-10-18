//
//  MovieCell.m
//  rottentomatoes
//
//  Created by Jeremy Reyes on 10/17/13.
//  Copyright (c) 2013 Jeremy Reyes. All rights reserved.
//

#import "MovieCell.h"

@interface MovieCell ()

@property (nonatomic, weak) IBOutlet UILabel *titleLabel;
@property (nonatomic, weak) IBOutlet UILabel *starringLabel;

@end

@implementation MovieCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setMovie:(Movie *)movie {
    _movie = movie;
    
    self.titleLabel.text = movie.title;

}

@end
