//
//  MultiAgenciasODTAppDelegate.h
//  MultiAgenciasODT
//
//  Created by Marco Guevara on 17/08/13.
//  Copyright (c) 2013 Wapps. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MultiAgenciasODTAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) NSString *segueFoto;
@property (strong, nonatomic) NSDate *fechaEntrega;
@property (strong, nonatomic) NSString *recibidoPor_nombre;
@property (strong, nonatomic) NSString *recibidoPor_tel;
@property (strong, nonatomic) UIImage *foto1;
@property (strong, nonatomic) UIImage *foto2;
@property (strong, nonatomic) UIImage *foto3;
@property (strong, nonatomic) UIImage *foto4;
@property (strong, nonatomic) UIImage *foto5;
@property (strong, nonatomic) UIImage *foto6;

@property (strong, nonatomic) NSString *facturarA;
@property (strong, nonatomic) NSString *NIT;
@property (strong, nonatomic) NSString *propietario;
@property (strong, nonatomic) NSString *piloto;
@property (strong, nonatomic) NSString *correo;
@property (strong, nonatomic) NSString *telefono;
@property (strong, nonatomic) NSString *celular;

@property (strong, nonatomic) NSString *marca;
@property (strong, nonatomic) NSString *anio;
@property (strong, nonatomic) NSString *linea;
@property (strong, nonatomic) NSString *color;
@property (strong, nonatomic) NSString *placa;
@property (strong, nonatomic) NSString *bateria;
@property (strong, nonatomic) NSString *motor;
@property (strong, nonatomic) NSString *km_actual;
@property (strong, nonatomic) NSString *chasis;
@property (strong, nonatomic) NSString *proximo_servicio;

@property (strong, nonatomic) NSMutableArray *accesorios;

@property (assign, nonatomic) BOOL servicio_mecanica;
@property (assign, nonatomic) BOOL enderezado_pintura;

@property (strong, nonatomic) NSString *trabajo_realizar;

@property (assign, nonatomic) BOOL aceptacion;

@end
