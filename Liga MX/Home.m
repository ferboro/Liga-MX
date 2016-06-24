//
//  Home.m
//  Liga MX
//
//  Created by Fer on 6/22/16.
//  Copyright © 2016 Fer. All rights reserved.
//

#import "Home.h"

@interface Home ()
@property NSMutableArray *teamNames;
@property NSMutableArray *teamImgs;
@end

@implementation Home
/**********************************************************************************************/
#pragma mark - Initialization methods
/**********************************************************************************************/
- (void)viewDidLoad {
    [super viewDidLoad];
    [self initController];
}
//-------------------------------------------------------------------------------
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//-------------------------------------------------------------------------------
- (void)initController {
    self.teamNames   = [[NSMutableArray alloc] initWithObjects: @"Atlas", @"America", @"Toluca", @"Jaguares", @"Cruz Azul", @"Morelia", @"Pachuca", @"Leon", @"Puebla", @"Veracruz", @"Monterrey", @"Tigres", @"Santos", @"Tijuana", @"Pumas", @"Queretaro", @"Necaxa", @"Chivas", nil];
    
    self.teamImgs   = [[NSMutableArray alloc] initWithObjects: @"atlas.png", @"america.jpg", @"toluca.jpg", @"jaguares.png", @"cruzazul.png", @"morelia.png", @"pachuca.png", @"leon.png", @"puebla.jpg", @"veracruz.jpg", @"monterrey.png", @"tigres.jpg", @"santos.png", @"tijuana.png", @"pumas.jpg", @"queretaro.png", @"necaxa.jpg", @"chivas.jpg", nil];
}
/**********************************************************************************************/
#pragma mark - Table source and delegate methods
/**********************************************************************************************/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.teamNames.count;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 60;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //Initialize cells
    cellTeams *cell = (cellTeams *)[tableView dequeueReusableCellWithIdentifier:@"cellTeams"];
    
    if (cell == nil) {
        [tableView registerNib:[UINib nibWithNibName:@"cellTeams" bundle:nil] forCellReuseIdentifier:@"cellTeams"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"cellTeams"];
    }
    //Fill cell with info from arrays
    cell.lblName.text       = self.teamNames[indexPath.row];
    cell.imgTeam.image   = [UIImage imageNamed:self.teamImgs[indexPath.row]];
    
    return cell;
}
//-------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    switch (indexPath.row) {
        case 0:
            self.lblsel.text = @"Atlas";
            break;
        case 1:
            self.lblsel.text = @"America";
            break;
        case 2:
            self.lblsel.text = @"Toluca";
            break;
        case 3:
            self.lblsel.text = @"Jaguares";
            break;
        case 4:
            self.lblsel.text = @"Cruz Azul";
            break;
        case 5:
            self.lblsel.text = @"Morelia";
            break;
        case 6:
            self.lblsel.text = @"Pachuca";
            break;
        case 7:
            self.lblsel.text = @"Leon";
            break;
        case 8:
            self.lblsel.text = @"Puebla";
            break;
        case 9:
            self.lblsel.text = @"Veracruz";
            break;
        case 10:
            self.lblsel.text = @"Monterrey";
            break;
        case 11:
            self.lblsel.text = @"Tigres";
            break;
        case 12:
            self.lblsel.text = @"Santos";
            break;
        case 13:
            self.lblsel.text = @"Tijuana";
            break;
        case 14:
            self.lblsel.text = @"Pumas";
            break;
        case 15:
            self.lblsel.text = @"Queretaro";
            break;
        case 16:
            self.lblsel.text = @"Necaxa";
            break;
        case 17:
            self.lblsel.text = @"Chivas";
            break;
        default:
            break;
    }
}

@end