//
//  RecepcionODTViewController.h
//  MultiAgenciasODT
//
//  Created by Marco Guevara on 17/08/13.
//  Copyright (c) 2013 Wapps. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>
#import "MultiAgenciasODTAppDelegate.h"
#import "ReaderViewController.h"
#import "Accesorio.h"

@interface RecepcionODTViewController : UITableViewController<ReaderViewControllerDelegate>
@property (nonatomic, strong) NSDateFormatter *dateFormatter;
@property (strong, nonatomic) IBOutlet UIImageView *imageFoto1;
@property (strong, nonatomic) IBOutlet UIImageView *imageFoto2;
@property (strong, nonatomic) IBOutlet UIImageView *imageFoto3;
@property (strong, nonatomic) IBOutlet UIImageView *imageFoto4;
@property (strong, nonatomic) IBOutlet UIImageView *imageFoto5;
@property (strong, nonatomic) IBOutlet UIImageView *imageFoto6;
@property (strong, nonatomic) IBOutlet UITableViewCell *cellFecha;
@property (strong, nonatomic) IBOutlet UITableViewCell *cellCorrelativo;
@property (strong, nonatomic) IBOutlet UITableViewCell *cellRecibidoPor;
@property (strong, nonatomic) IBOutlet UITableViewCell *cellFechaEntrega;

@end
