//
//  FotoViewController.m
//  MultiAgenciasODT
//
//  Created by Marco Guevara on 17/08/13.
//  Copyright (c) 2013 Wapps. All rights reserved.
//

#import "FotoViewController.h"

@interface FotoViewController ()

@end

@implementation FotoViewController

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
    if (![UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        
        UIAlertView *myAlertView = [[UIAlertView alloc] initWithTitle:@"Error"
                                                              message:@"El dispositivo no tiene camara"
                                                             delegate:nil
                                                    cancelButtonTitle:@"OK"
                                                    otherButtonTitles: nil];
        
        [myAlertView show];
        
    }
    MultiAgenciasODTAppDelegate *appDelegate = (MultiAgenciasODTAppDelegate *)[[UIApplication sharedApplication] delegate];
    if([appDelegate.segueFoto isEqualToString:@"segueFoto1"])
    {
        UIImage *foto1 = appDelegate.foto1;
        self.imageView.image = foto1;
    }else if([appDelegate.segueFoto isEqualToString:@"segueFoto2"]){
        UIImage *foto2 = appDelegate.foto2;
        self.imageView.image = foto2;
    }else if([appDelegate.segueFoto isEqualToString:@"segueFoto3"]){
        UIImage *foto3 = appDelegate.foto3;
        self.imageView.image = foto3;
    }else if([appDelegate.segueFoto isEqualToString:@"segueFoto4"]){
        UIImage *foto4 = appDelegate.foto4;
        self.imageView.image = foto4;
    }else if([appDelegate.segueFoto isEqualToString:@"segueFoto5"]){
        UIImage *foto5 = appDelegate.foto5;
        self.imageView.image = foto5;
    }else if([appDelegate.segueFoto isEqualToString:@"segueFoto6"]){
        UIImage *foto6 = appDelegate.foto6;
        self.imageView.image = foto6;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void) viewWillDisappear:(BOOL)animated {
    if ([self.navigationController.viewControllers indexOfObject:self]==NSNotFound) {
        // back button was pressed.  We know this is true because self is no longer
        // in the navigation stack.
        //NSLog(@"Campo3 %@",Campo3.text);
        MultiAgenciasODTAppDelegate *appDelegate = (MultiAgenciasODTAppDelegate *)[[UIApplication sharedApplication] delegate];
        if([appDelegate.segueFoto isEqualToString:@"segueFoto1"])
        {
            appDelegate.foto1 = [self.imageView image];
        }else if([appDelegate.segueFoto isEqualToString:@"segueFoto2"]){
            appDelegate.foto2 = [self.imageView image];
        }
        else if([appDelegate.segueFoto isEqualToString:@"segueFoto3"]){
            appDelegate.foto3 = [self.imageView image];
        }
        else if([appDelegate.segueFoto isEqualToString:@"segueFoto4"]){
            appDelegate.foto4 = [self.imageView image];
        }
        else if([appDelegate.segueFoto isEqualToString:@"segueFoto5"]){
            appDelegate.foto5 = [self.imageView image];
        }
        else if([appDelegate.segueFoto isEqualToString:@"segueFoto6"]){
            appDelegate.foto6 = [self.imageView image];
        }
        UIImageWriteToSavedPhotosAlbum([self.imageView image], nil, nil, nil);
    }
    [super viewWillDisappear:animated];
}

- (IBAction)tomarFoto:(UIBarButtonItem *)sender {
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;
    picker.allowsEditing = YES;
    picker.sourceType = UIImagePickerControllerSourceTypeCamera;
    
    //UIImage* image1 = [self.imageView image];
    
    [self presentViewController:picker animated:YES completion:NULL];
}

- (IBAction)borrarFoto:(UIBarButtonItem *)sender {
    self.imageView.image = nil;
}

#pragma mark - Image Picker Controller delegate methods

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    
    UIImage *chosenImage = info[UIImagePickerControllerEditedImage];
    self.imageView.image = chosenImage;
    
    [picker dismissViewControllerAnimated:YES completion:NULL];
    
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    
    [picker dismissViewControllerAnimated:YES completion:NULL];
    
}

@end
