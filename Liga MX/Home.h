//
//  Home.h
//  Liga MX
//
//  Created by Fer on 6/22/16.
//  Copyright © 2016 Fer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "cellTeams.h"

@interface Home : UIViewController
@property (strong, nonatomic) IBOutlet UITableView *tblTeams;
@property (strong, nonatomic) IBOutlet UILabel *lblsel;

@end
