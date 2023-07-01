//
//  DatosDelVehiculoViewController.m
//  MultiAgenciasODT
//
//  Created by Marco Guevara on 16/09/13.
//  Copyright (c) 2013 Wapps. All rights reserved.
//

#import "DatosDelVehiculoViewController.h"

@interface DatosDelVehiculoViewController ()

@end

@implementation DatosDelVehiculoViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) viewDidAppear:(BOOL)animated{
    MultiAgenciasODTAppDelegate *appDelegate = (MultiAgenciasODTAppDelegate *)[[UIApplication sharedApplication] delegate];
    self.tfMarca.text = appDelegate.marca;
    self.tfAnio.text = appDelegate.anio;
    self.tfLinea.text = appDelegate.linea;
    self.tfColor.text = appDelegate.color;
    self.tfPlaca.text = appDelegate.placa;
    self.tfBateria.text = appDelegate.bateria;
    self.tfMotor.text = appDelegate.motor;
    self.tfKMActual.text = appDelegate.km_actual;
    self.tfChasis.text = appDelegate.chasis;
    self.tfProxServicio.text = appDelegate.proximo_servicio;
}

-(void) viewWillDisappear:(BOOL)animated {
    if ([self.navigationController.viewControllers indexOfObject:self]==NSNotFound) {
        // back button was pressed.  We know this is true because self is no longer
        // in the navigation stack.
        //NSLog(@"Campo3 %@",Campo3.text);
        MultiAgenciasODTAppDelegate *appDelegate = (MultiAgenciasODTAppDelegate *)[[UIApplication sharedApplication] delegate];
        appDelegate.marca = self.tfMarca.text;
        appDelegate.anio = self.tfAnio.text;
        appDelegate.linea = self.tfLinea.text;
        appDelegate.color = self.tfColor.text;
        appDelegate.placa = self.tfPlaca.text;
        appDelegate.bateria = self.tfBateria.text;
        appDelegate.motor = self.tfMotor.text;
        appDelegate.km_actual = self.tfKMActual.text;
        appDelegate.chasis = self.tfChasis.text;
        appDelegate.proximo_servicio = self.tfProxServicio.text;
    }
    [super viewWillDisappear:animated];
}


#pragma mark - Table view data source
/*
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/
/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
