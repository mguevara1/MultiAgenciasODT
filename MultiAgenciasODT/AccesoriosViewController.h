//
//  AccesoriosViewController.h
//  MultiAgenciasODT
//
//  Created by Marco Guevara on 17/08/13.
//  Copyright (c) 2013 Wapps. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MultiAgenciasODTAppDelegate.h"
#import "Accesorio.h"

@interface AccesoriosViewController : UITableViewController <UIActionSheetDelegate>
@property (strong, nonatomic) IBOutlet UIBarButtonItem *buttonOnOff;
- (IBAction)setOnOff:(UIBarButtonItem *)sender;

@end
