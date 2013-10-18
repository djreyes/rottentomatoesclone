//
//  BoxOfficeVC.m
//  rottentomatoes
//
//  Created by Jeremy Reyes on 10/17/13.
//  Copyright (c) 2013 Jeremy Reyes. All rights reserved.
//

#import "BoxOfficeVC.h"
#import "MovieCell.h"
#import "RottenTomatoesClient.h"
#import "Movie.h"

@interface BoxOfficeVC ()

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation BoxOfficeVC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        RottenTomatoesClient *client = [[RottenTomatoesClient alloc] init];
        [client boxOfficeWithSuccess:^(int *operation, NSArray *movies) {
            for (Movie *movie in movies) {
                NSLog(@"title: %@", movie.title);
            }
        } failure:^(AFHTTPRequestOperation *operation, NSError *) {
            <#code#>
        }];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view methods

- (int)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (int)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    MovieCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MovieCell"];
    cell.movie = self.movies[indexPath.row];
    return cell;
}
@end
