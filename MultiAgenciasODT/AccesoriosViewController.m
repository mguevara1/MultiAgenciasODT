//
//  AccesoriosViewController.m
//  MultiAgenciasODT
//
//  Created by Marco Guevara on 17/08/13.
//  Copyright (c) 2013 Wapps. All rights reserved.
//

#import "AccesoriosViewController.h"

@interface AccesoriosViewController ()

@end

@implementation AccesoriosViewController

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
    
    Accesorio *a;
    
    MultiAgenciasODTAppDelegate *appDelegate = (MultiAgenciasODTAppDelegate *)[[UIApplication sharedApplication] delegate];
    
    if(appDelegate.accesorios.count == 0){
        
        appDelegate.accesorios = [[NSMutableArray alloc] init];
        
        for(int i=0;i<[self.tableView numberOfRowsInSection:0];i++){
            NSIndexPath * indexPath = [NSIndexPath indexPathForRow:i inSection:0];
            NSString *nombre = [[self.tableView cellForRowAtIndexPath:indexPath] textLabel].text;
            //NSLog(@"%@",nombre);
            a = [[Accesorio alloc] init];
            a.nombre = nombre;
            a.valor = NO;
            [appDelegate.accesorios addObject:a];
        }
    }
}

- ( IBAction )myMethod{

}

-(void) viewDidAppear:(BOOL)animated{
    MultiAgenciasODTAppDelegate *appDelegate = (MultiAgenciasODTAppDelegate *)[[UIApplication sharedApplication] delegate];
    Accesorio *a;
    for(int i=0;i<[self.tableView numberOfRowsInSection:0];i++){
        NSIndexPath * indexPath = [NSIndexPath indexPathForRow:i inSection:0];
        UITableViewCell *cell = [self.tableView cellForRowAtIndexPath:indexPath];
        //NSString *nombre = [[self.tableView cellForRowAtIndexPath:indexPath] textLabel].text;
        //NSLog(@"%@",nombre);
        a = (Accesorio *)[appDelegate.accesorios objectAtIndex:indexPath.row];
        if(a.valor == YES){
            cell.accessoryType = UITableViewCellAccessoryCheckmark;
        }else{
            cell.accessoryType = UITableViewCellAccessoryNone;
        }
    }
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
     [detailViewController release];
     */
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    
    MultiAgenciasODTAppDelegate *appDelegate = (MultiAgenciasODTAppDelegate *)[[UIApplication sharedApplication] delegate];
    Accesorio *a;
    
    NSLog(@"Clicked on Section %d and Row %d", indexPath.section, indexPath.row);
    
    if(indexPath.section == 0){
        a = (Accesorio *)[appDelegate.accesorios objectAtIndex:indexPath.row];
        if (cell.accessoryType == UITableViewCellAccessoryNone) {
            cell.accessoryType = UITableViewCellAccessoryCheckmark;
            a.valor = YES;
        }else {
            cell.accessoryType = UITableViewCellAccessoryNone;
            a.valor = NO;
        }
    }
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (IBAction)setOnOff:(UIBarButtonItem *)sender {
    /*NSLog(@"hola");
    UIViewController *V2 = [[UIViewController alloc] init];
    V2.modalPresentationStyle = UIModalPresentationPageSheet;
    V2.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self presentModalViewController:V2 animated:YES];
    V2.view.superview.frame = CGRectMake(0, 0, 540, 620); //it's important to do this after presentModalViewController
    V2.view.superview.center = self.view.center;*/
    //[self release];
    /*UIAlertView *message = [[UIAlertView alloc] initWithTitle:@"Alert title"
                                                      message:@"Alert body"
                                                     delegate:self
                                            cancelButtonTitle:@"Button 1"
                                            otherButtonTitles:@"Button 2", @"Button 3", nil];
    message
    [message show];*/
    UIActionSheet * action = [[UIActionSheet alloc]initWithTitle:@""
                                                        delegate:self
                                               cancelButtonTitle: nil 
                                          destructiveButtonTitle: nil 
                                               otherButtonTitles: @"Marcar todos", @"Desmarcar todos",nil];
    [action showFromBarButtonItem:self.buttonOnOff animated:YES];
}

- (void)actionSheet:(UIActionSheet *)actionSheet willDismissWithButtonIndex:(NSInteger)buttonIndex
{
    
    NSLog(@"%d",buttonIndex);
    MultiAgenciasODTAppDelegate *appDelegate = (MultiAgenciasODTAppDelegate *)[[UIApplication sharedApplication] delegate];
    Accesorio *a;
    if(buttonIndex == 0)
    {
        for(int i=0;i<[self.tableView numberOfRowsInSection:0];i++){
            NSIndexPath * indexPath = [NSIndexPath indexPathForRow:i inSection:0];
            UITableViewCell *cell = [self.tableView cellForRowAtIndexPath:indexPath];
            a = (Accesorio *)[appDelegate.accesorios objectAtIndex:indexPath.row];
            a.valor = YES;
            cell.accessoryType = UITableViewCellAccessoryCheckmark;
        }
    }
    else if(buttonIndex == 1)
    {
        for(int i=0;i<[self.tableView numberOfRowsInSection:0];i++){
            NSIndexPath * indexPath = [NSIndexPath indexPathForRow:i inSection:0];
            UITableViewCell *cell = [self.tableView cellForRowAtIndexPath:indexPath];
            a = (Accesorio *)[appDelegate.accesorios objectAtIndex:indexPath.row];
            a.valor = NO;
            cell.accessoryType = UITableViewCellAccessoryNone;
        }
    }
    
}
/*
- (void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex{
    // The first button (or "cancel" button)
    if (buttonIndex == 0)
    {
        NSLog(@"User pressed: %@ ", [alertView buttonTitleAtIndex:0]);
    }
    // The second button on the alert view
    if (buttonIndex == 1)
    {
        NSLog(@"User pressed: %@ ", [alertView buttonTitleAtIndex:1]);
    }
    // The third button on the alert view.... and so on
    if (buttonIndex == 2)
    {
        NSLog(@"User pressed: %@ ", [alertView buttonTitleAtIndex:2]);
    }
}*/

@end
