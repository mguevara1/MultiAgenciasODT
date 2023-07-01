//
//  DatosFacturacionViewController.h
//  MultiAgenciasODT
//
//  Created by Marco Guevara on 7/09/13.
//  Copyright (c) 2013 Wapps. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MultiAgenciasODTAppDelegate.h"

@interface DatosFacturacionViewController : UITableViewController
@property (strong, nonatomic) IBOutlet UITextField *tfFacturarA;
@property (strong, nonatomic) IBOutlet UITextField *tfNit;
@property (strong, nonatomic) IBOutlet UITextField *tfPropietario;
@property (strong, nonatomic) IBOutlet UITextField *tfPiloto;
@property (strong, nonatomic) IBOutlet UITextField *tfCorreo;
@property (strong, nonatomic) IBOutlet UITextField *tfTelefono;
@property (strong, nonatomic) IBOutlet UITextField *tfCelular;

@end
