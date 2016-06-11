//
//  MasterViewController.h
//  open-source-osx-ci
//
//  Created by Marcelo Marra on 11/06/16.
//  Copyright © 2016 Marcelo Marra. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface MasterViewController : UITableViewController

@property (strong, nonatomic) DetailViewController *detailViewController;


@end

