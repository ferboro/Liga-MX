//
//  Intro.h
//  Liga MX
//
//  Created by Fer on 6/19/16.
//  Copyright © 2016 Fer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Declarations.h"
#import "Home.h"

@interface Intro : UIViewController
//Objects
@property NSUInteger                                iPageIndex;
@property (strong, nonatomic) IBOutlet UILabel *lblIntro;
@property (strong, nonatomic) IBOutlet UIImageView *imgIntro;
@property (strong, nonatomic) IBOutlet UIButton *btnIntro;

//Actions
- (IBAction)btnIntroPressed:(id)sender;


@end
