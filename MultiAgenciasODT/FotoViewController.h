//
//  FotoViewController.h
//  MultiAgenciasODT
//
//  Created by Marco Guevara on 17/08/13.
//  Copyright (c) 2013 Wapps. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MultiAgenciasODTAppDelegate.h"

@interface FotoViewController : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate>
@property (strong, nonatomic) IBOutlet UIImageView *imageView;
- (IBAction)tomarFoto:(UIBarButtonItem *)sender;
- (IBAction)borrarFoto:(UIBarButtonItem *)sender;

@end
