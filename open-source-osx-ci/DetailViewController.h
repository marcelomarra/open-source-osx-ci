//
//  DetailViewController.h
//  open-source-osx-ci
//
//  Created by Marcelo Marra on 11/06/16.
//  Copyright © 2016 Marcelo Marra. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

