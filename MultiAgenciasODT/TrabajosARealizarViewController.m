//
//  TrabajosARealizarViewController.m
//  MultiAgenciasODT
//
//  Created by Marco Guevara on 17/09/13.
//  Copyright (c) 2013 Wapps. All rights reserved.
//

#import "TrabajosARealizarViewController.h"

@interface TrabajosARealizarViewController ()

@end

@implementation TrabajosARealizarViewController

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
    
    //MultiAgenciasODTAppDelegate *appDelegate = (MultiAgenciasODTAppDelegate *)[[UIApplication sharedApplication] delegate];
    //appDelegate.servicio_mecanica = NO;
    //appDelegate.enderezado_pintura = NO;
}

-(void) viewWillDisappear:(BOOL)animated {
    if ([self.navigationController.viewControllers indexOfObject:self]==NSNotFound) {
        MultiAgenciasODTAppDelegate *appDelegate = (MultiAgenciasODTAppDelegate *)[[UIApplication sharedApplication] delegate];
        appDelegate.trabajo_realizar = self.tvTrabajoARealizar.text;
    }
    [super viewWillDisappear:animated];
}

-(void) viewDidAppear:(BOOL)animated{
    MultiAgenciasODTAppDelegate *appDelegate = (MultiAgenciasODTAppDelegate *)[[UIApplication sharedApplication] delegate];
    NSIndexPath * indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    UITableViewCell *cell = [self.tableView cellForRowAtIndexPath:indexPath];
    if(appDelegate.servicio_mecanica){
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    }else{
        cell.accessoryType = UITableViewCellAccessoryNone;
    }
    indexPath = [NSIndexPath indexPathForRow:1 inSection:0];
    cell = [self.tableView cellForRowAtIndexPath:indexPath];
    if(appDelegate.enderezado_pintura){
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    }else{
        cell.accessoryType = UITableViewCellAccessoryNone;
    }
    indexPath = [NSIndexPath indexPathForRow:0 inSection:3];
    cell = [self.tableView cellForRowAtIndexPath:indexPath];
    if(appDelegate.aceptacion){
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    }else{
        cell.accessoryType = UITableViewCellAccessoryNone;
    }
    self.tvTrabajoARealizar.text = appDelegate.trabajo_realizar;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    
    MultiAgenciasODTAppDelegate *appDelegate = (MultiAgenciasODTAppDelegate *)[[UIApplication sharedApplication] delegate];
    
    //NSLog(@"Clicked on Section %d and Row %d", indexPath.section, indexPath.row);
    
    if((indexPath.section == 0)&&(indexPath.row == 0)){
        //a = (Accesorio *)[appDelegate.accesorios objectAtIndex:indexPath.row];
        if (cell.accessoryType == UITableViewCellAccessoryNone) {
            cell.accessoryType = UITableViewCellAccessoryCheckmark;
            appDelegate.servicio_mecanica = YES;
        }else {
            cell.accessoryType = UITableViewCellAccessoryNone;
            appDelegate.servicio_mecanica = NO;
        }
    }
    if((indexPath.section == 0)&&(indexPath.row == 1)){
        //a = (Accesorio *)[appDelegate.accesorios objectAtIndex:indexPath.row];
        if (cell.accessoryType == UITableViewCellAccessoryNone) {
            cell.accessoryType = UITableViewCellAccessoryCheckmark;
            appDelegate.enderezado_pintura = YES;
        }else {
            cell.accessoryType = UITableViewCellAccessoryNone;
            appDelegate.enderezado_pintura = NO;
        }
    }
    if((indexPath.section == 3)&&(indexPath.row == 0)){
        //a = (Accesorio *)[appDelegate.accesorios objectAtIndex:indexPath.row];
        if (cell.accessoryType == UITableViewCellAccessoryNone) {
            cell.accessoryType = UITableViewCellAccessoryCheckmark;
            appDelegate.aceptacion = YES;
        }else {
            cell.accessoryType = UITableViewCellAccessoryNone;
            appDelegate.aceptacion = NO;
        }
    }
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
