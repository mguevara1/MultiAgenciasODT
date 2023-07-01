//
//  DatosDelVehiculoViewController.h
//  MultiAgenciasODT
//
//  Created by Marco Guevara on 16/09/13.
//  Copyright (c) 2013 Wapps. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MultiAgenciasODTAppDelegate.h"

@interface DatosDelVehiculoViewController : UITableViewController
@property (strong, nonatomic) IBOutlet UITextField *tfMarca;
@property (strong, nonatomic) IBOutlet UITextField *tfAnio;
@property (strong, nonatomic) IBOutlet UITextField *tfLinea;
@property (strong, nonatomic) IBOutlet UITextField *tfColor;
@property (strong, nonatomic) IBOutlet UITextField *tfPlaca;
@property (strong, nonatomic) IBOutlet UITextField *tfBateria;
@property (strong, nonatomic) IBOutlet UITextField *tfMotor;
@property (strong, nonatomic) IBOutlet UITextField *tfKMActual;
@property (strong, nonatomic) IBOutlet UITextField *tfChasis;
@property (strong, nonatomic) IBOutlet UITextField *tfProxServicio;

@end
