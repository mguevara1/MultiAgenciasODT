//
//  FechaEntregaViewController.m
//  MultiAgenciasODT
//
//  Created by Marco Guevara on 21/09/13.
//  Copyright (c) 2013 Wapps. All rights reserved.
//

#import "FechaEntregaViewController.h"

@interface FechaEntregaViewController ()

@end

@implementation FechaEntregaViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) viewDidAppear:(BOOL)animated{
    MultiAgenciasODTAppDelegate *appDelegate = (MultiAgenciasODTAppDelegate *)[[UIApplication sharedApplication] delegate];
    self.datePicker.date = appDelegate.fechaEntrega;
}

-(void) viewWillDisappear:(BOOL)animated {
    if ([self.navigationController.viewControllers indexOfObject:self]==NSNotFound) {
        // back button was pressed.  We know this is true because self is no longer
        // in the navigation stack.
        //NSLog(@"Campo3 %@",Campo3.text);
        MultiAgenciasODTAppDelegate *appDelegate = (MultiAgenciasODTAppDelegate *)[[UIApplication sharedApplication] delegate];
        appDelegate.fechaEntrega = self.datePicker.date;
    }
    [super viewWillDisappear:animated];
}

@end
