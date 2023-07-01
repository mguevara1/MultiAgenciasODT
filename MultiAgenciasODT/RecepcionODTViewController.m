//
//  RecepcionODTViewController.m
//  MultiAgenciasODT
//
//  Created by Marco Guevara on 17/08/13.
//  Copyright (c) 2013 Wapps. All rights reserved.
//

#import "RecepcionODTViewController.h"
#define kPadding 20

@interface RecepcionODTViewController ()
{
    CGSize _pageSize;
}
@end

@implementation RecepcionODTViewController

@synthesize imageFoto1;
@synthesize imageFoto2;
@synthesize imageFoto3;
@synthesize imageFoto4;
@synthesize imageFoto5;
@synthesize imageFoto6;
@synthesize dateFormatter;

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
    
    self.dateFormatter = [[NSDateFormatter alloc] init];
    [self.dateFormatter setDateStyle:NSDateFormatterFullStyle];
    [self.dateFormatter setTimeStyle:NSDateFormatterShortStyle];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    //static NSString *CellIdentifier = @"cellFecha";
    /*
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"cellFecha"];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cellFecha"] autorelease];
        //cell.textLabel.text = @"hola mundo";
        NSLog(@"cell null");
    }else{
        NSLog(@"cell not null");
    }
    cell.textLabel.text = @"hola mundo";*/
    
    MultiAgenciasODTAppDelegate *appDelegate = (MultiAgenciasODTAppDelegate *)[[UIApplication sharedApplication] delegate];
    
    appDelegate.fechaEntrega = [NSDate date];
    
    NSDateComponents *components = [[NSCalendar currentCalendar] components:NSDayCalendarUnit | NSMonthCalendarUnit | NSYearCalendarUnit | NSHourCalendarUnit | NSMinuteCalendarUnit fromDate:[NSDate date]];
    
    NSString *year = [NSString stringWithFormat:@"%d", [components year]];
    NSString *month = [NSString stringWithFormat:@"%d", [components month]];
    NSString *day = [NSString stringWithFormat:@"%d", [components day]];
    NSString *hour = [NSString stringWithFormat:@"%d", [components hour]];
    NSString *minutes = [NSString stringWithFormat:@"%d", [components minute]];
    //NSString *day = [NSString stringWithFormat:@"%d", [components day]];
    
    if(month.length == 1) month = [NSString stringWithFormat:@"0%@",month];
    if(day.length == 1) day = [NSString stringWithFormat:@"0%@",day];
    if(hour.length == 1) hour = [NSString stringWithFormat:@"0%@",hour];
    if(minutes.length == 1) minutes = [NSString stringWithFormat:@"0%@",minutes];
    
    self.cellCorrelativo.detailTextLabel.text = [NSString stringWithFormat:@"%@%@%@%@%@", year, month, day,hour,minutes];
    self.cellFecha.detailTextLabel.text = [self.dateFormatter stringFromDate:[NSDate date]];
    self.cellFechaEntrega.detailTextLabel.text = [self.dateFormatter stringFromDate:appDelegate.fechaEntrega];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidLayoutSubviews
{
    MultiAgenciasODTAppDelegate *appDelegate = (MultiAgenciasODTAppDelegate *)[[UIApplication sharedApplication] delegate];
    imageFoto1.image = appDelegate.foto1;
    imageFoto2.image = appDelegate.foto2;
    imageFoto3.image = appDelegate.foto3;
    imageFoto4.image = appDelegate.foto4;
    imageFoto5.image = appDelegate.foto5;
    imageFoto6.image = appDelegate.foto6;
    self.cellFechaEntrega.detailTextLabel.text = [self.dateFormatter stringFromDate:appDelegate.fechaEntrega];
    self.cellRecibidoPor.textLabel.text = appDelegate.recibidoPor_nombre;
    self.cellRecibidoPor.detailTextLabel.text = appDelegate.recibidoPor_tel;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    //NSLog(@"prepareForSegue: %@", segue.identifier);
    MultiAgenciasODTAppDelegate *appDelegate = (MultiAgenciasODTAppDelegate *)[[UIApplication sharedApplication] delegate];
    appDelegate.segueFoto = segue.identifier;
    /*if([segue.identifier isEqualToString:@"segueFoto1"])
    {
        NSLog(@"Segue foto 1");
    }else if([segue.identifier isEqualToString:@"segueFoto2"]){
        NSLog(@"Segue foto 2");
    }*/
    
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
*/
/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //static NSString *CellIdentifier = @"cellFecha";
    //UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    //cell.textLabel.text = @"Hola!";
    // Configure the cell...
    
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"cellFecha"];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cellFecha"] autorelease];
        
        NSLog(@"cell null");
    }else{
        NSLog(@"cell not null");
    }
    cell.textLabel.text = @"hola mundo";
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
    
    UITableViewCell *selectedCell=[tableView cellForRowAtIndexPath:indexPath];
    if([selectedCell.reuseIdentifier isEqual:@"cellGenerar"]){
        
        NSArray *pathsx = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES);
        NSString *documentsDirectoryx = [pathsx objectAtIndex:0];
        
        NSFileManager *fileMgr = [[NSFileManager alloc] init];
        NSError *error = nil;
        NSArray *directoryContents = [fileMgr contentsOfDirectoryAtPath:documentsDirectoryx error:&error];
        if (error == nil) {
            for (NSString *path in directoryContents) {
                NSString *fullPath = [documentsDirectoryx stringByAppendingPathComponent:path];
                BOOL removeSuccess = [fileMgr removeItemAtPath:fullPath error:&error];
                if (!removeSuccess) {
                    // Error handling
                    //...
                }
            }
        } else {
            // Error handling
            //...
        }
        
        NSLog(@"Generando PDF");
        
        NSString *nombrePdf = self.cellCorrelativo.detailTextLabel.text;
        
        NSString *pdfFile = [NSString stringWithFormat:@"%@.pdf",nombrePdf];
        
        [self setupPDFDocumentNamed:nombrePdf Width:850 Height:1100];
        
        [self beginPDFPage];
        
        MultiAgenciasODTAppDelegate *ad = (MultiAgenciasODTAppDelegate *)[[UIApplication sharedApplication] delegate];
        
        //NSString *titulo = @"MultiAgencias - Orden de Trabajo";
        
        UIImage *logo = [UIImage imageNamed:@"Logo_Multiagencias.jpg"];
        
        CGSize logo_size = CGSizeMake(logo.size.width*0.20,logo.size.height*0.20);
        
        logo = [self imageWithImage:logo scaledToSize:logo_size];
        
        CGRect rectLogo = [self addImage:logo
               atPoint:CGPointMake((_pageSize.width/2)-(logo.size.width/2), 0 + 0 + 0)];
        
        CGRect rectLogo1 = [self addLineWithFrame:CGRectMake(kPadding, rectLogo.origin.y + rectLogo.size.height + 0/*kPadding*/, _pageSize.width - kPadding*2, 4) withColor:[UIColor redColor]];
        
        NSString *titulo1 = @"Orden de trabajo";
        
        //NSString *titleColumn = [[NSString stringWithFormat:@"%@",titulo1] stringByPaddingToLength:25 withString:@" " startingAtIndex:0];
        //titulo1 = [NSString stringWithFormat:@"%@%@", titleColumn, @"prueba"];
        
        CGRect rectTitulo1 = [self addBoldText:titulo1 withFrame:CGRectMake(kPadding, kPadding + rectLogo1.origin.y, 400, 200) fontSize:20.0f];
        
        NSString *orden = [NSString stringWithFormat:@"Correlativo: %@ \nFecha y hora: %@ \nFecha y hora de Entrega: %@\nRecibido por: %@ (%@)",self.cellCorrelativo.detailTextLabel.text,self.cellFecha.detailTextLabel.text,self.cellFechaEntrega.detailTextLabel.text,self.cellRecibidoPor.textLabel.text,self.cellRecibidoPor.detailTextLabel.text];
        
        CGRect rect1 = [self addText:orden withFrame:CGRectMake(kPadding, kPadding + rectTitulo1.origin.y + kPadding, 400, 200) fontSize:18.0f];
        
        NSString *titulo2 = @"Datos de facturación";
        
        CGRect rectTitulo2 = [self addBoldText:titulo2 withFrame:CGRectMake(kPadding, kPadding + rect1.origin.y + rect1.size.height, 400, 200) fontSize:20.0f];
        
        orden = [NSString stringWithFormat:@"Facturar a: %@ \nNIT: %@ \nNombre del propietario: %@\nNombre del piloto: %@\nCorreo: %@\nTelefono: %@\nCelular: %@ \n",ad.facturarA,ad.NIT,ad.propietario,ad.piloto,ad.correo,ad.telefono,ad.celular];
        
        CGRect rect2 = [self addText:orden withFrame:CGRectMake(kPadding, kPadding + rectTitulo2.origin.y + kPadding, 400, 200) fontSize:18.0f];
        
        NSString *titulo3 = @"Datos del vehiculo";
        
        CGRect rectTitulo3 = [self addBoldText:titulo3 withFrame:CGRectMake(kPadding, kPadding + rect2.origin.y + rect2.size.height, 400, 200) fontSize:20.0f];
        
        orden = [NSString stringWithFormat:@"Marca: %@ \nAño: %@ \nLínea: %@\nColor: %@ \nPlaca: %@ \nBatería (marca): %@\nMotor: %@ \nKM Actual: %@ \nChasis: %@\nPróximo Servicio: %@ \n",ad.marca,ad.anio,ad.linea,ad.color,ad.placa,ad.bateria,ad.motor,ad.km_actual,ad.chasis,ad.proximo_servicio];
        
        CGRect rect3 = [self addText:orden withFrame:CGRectMake(kPadding, kPadding + rectTitulo3.origin.y + kPadding, 400, 200) fontSize:18.0f];
        
        NSString *titulo31 = @"Detalle del trabajo a realizar";
        
        CGRect rectTitulo31 = [self addBoldText:titulo31 withFrame:CGRectMake(kPadding, kPadding + rect3.origin.y + rect3.size.height, 400, 200) fontSize:20.0f];
        
        orden = [NSString stringWithFormat:@"%@",ad.trabajo_realizar];
        
        CGRect rect31 = [self addText:orden withFrame:CGRectMake(kPadding, kPadding + rectTitulo31.origin.y + kPadding, 400, 200) fontSize:18.0f];
        
        ///////
        
        CGRect rectBottom = [self addLineWithFrame:CGRectMake(kPadding, kPadding + rect31.origin.y + 115 + kPadding, _pageSize.width - kPadding*2, 4) withColor:[UIColor redColor]];
        
        orden = [NSString stringWithFormat:@"    4 Ave 3-23 Zona 10           2 Ave 6-52 Zona 10            PBX.: (502) 2301-5959 \n      gerencia@multiagenciasgt.com        servicioalcliente@multiagenciasgt.com"];
        
        CGRect rect32 = [self addText:orden withFrame:CGRectMake(kPadding + 50, kPadding + rect31.origin.y + 120 + kPadding, 400, 200) fontSize:18.0f];
        
        //////
        
        [self beginPDFPage];
        
        CGRect lineRect2 = [self addLineWithFrame:CGRectMake(kPadding, 10 + 10 + kPadding, _pageSize.width - kPadding*2, 4) withColor:[UIColor redColor]];
        
        NSString *titulo4 = @"Accesorios";
        
        CGRect rectTitulo4 = [self addBoldText:titulo4 withFrame:CGRectMake(kPadding, kPadding + lineRect2.origin.y, 400, 200) fontSize:20.0f];
        
        Accesorio *a;
         
        orden = @"";
        
        for(int i=0;i<[ad.accesorios count];i++){
            a = [ad.accesorios objectAtIndex:i];
            NSString *s;
            if(a.valor == YES){
                s = @"Si";
            }else{
                s = @"No";
            }
            orden = [NSString stringWithFormat:@"%@\n%@: %@",orden,a.nombre,s];
        }
        
        CGRect rect4 = [self addText:orden withFrame:CGRectMake(kPadding, kPadding + rectTitulo4.origin.y, 400, 200) fontSize:18.0f];
        
        [self beginPDFPage];
        
        //CGRect blueLineRect = [self addLineWithFrame:CGRectMake(kPadding, textRect.origin.y + textRect.size.height + kPadding, _pageSize.width - kPadding*2, 4) withColor:[UIColor blueColor]];
        
        CGRect lineRect3 = [self addLineWithFrame:CGRectMake(kPadding, 10 + 10 + kPadding, _pageSize.width - kPadding*2, 4) withColor:[UIColor blueColor]];
        
        NSString *titulo5 = @"Fotos";
        
        CGRect rectTitulo5 = [self addBoldText:titulo5 withFrame:CGRectMake(kPadding, kPadding + lineRect3.origin.y, 400, 200) fontSize:20.0f];
        
        UIImage *image1 = ad.foto1;
        
        CGSize size = CGSizeMake(320.0,320.0);
        
        image1 = [self imageWithImage:image1 scaledToSize:size];
        CGRect imageRect1 = [self addImage:image1
                                  atPoint:CGPointMake((_pageSize.width/2)-(image1.size.width/2), rectTitulo5.origin.y + rectTitulo5.size.height + kPadding)];
        
        UIImage *image2 = ad.foto2;
        
        //CGSize size = CGSizeMake(320.0,320.0);
        
        image2 = [self imageWithImage:image2 scaledToSize:size];
        CGRect imageRect2 = [self addImage:image2
                                  atPoint:CGPointMake((_pageSize.width/2)-(image2.size.width/2), imageRect1.origin.y + imageRect1.size.height + kPadding)];
        
        //[self addLineWithFrame:CGRectMake(kPadding, imageRect.origin.y + imageRect.size.height + kPadding, _pageSize.width - kPadding*2, 4) withColor:[UIColor redColor]];
        
        [self beginPDFPage];
        
        //CGRect blueLineRect = [self addLineWithFrame:CGRectMake(kPadding, textRect.origin.y + textRect.size.height + kPadding, _pageSize.width - kPadding*2, 4) withColor:[UIColor blueColor]];
        
        CGRect lineRect4 = [self addLineWithFrame:CGRectMake(kPadding, 10 + 10 + kPadding, _pageSize.width - kPadding*2, 4) withColor:[UIColor blueColor]];
        
        //NSString *titulo5 = @"Fotos";
        
        //CGRect rectTitulo5 = [self addBoldText:titulo5 withFrame:CGRectMake(kPadding, kPadding + lineRect3.origin.y, 400, 200) fontSize:20.0f];
        
        UIImage *image3 = ad.foto3;
        
        //CGSize size = CGSizeMake(320.0,320.0);
        
        image3 = [self imageWithImage:image3 scaledToSize:size];
        CGRect imageRect3 = [self addImage:image3
                                   atPoint:CGPointMake((_pageSize.width/2)-(image3.size.width/2), rectTitulo5.origin.y + rectTitulo5.size.height + kPadding)];
        
        UIImage *image4 = ad.foto4;
        
        //CGSize size = CGSizeMake(320.0,320.0);
        
        image4 = [self imageWithImage:image4 scaledToSize:size];
        CGRect imageRect4 = [self addImage:image4
                                   atPoint:CGPointMake((_pageSize.width/2)-(image4.size.width/2), imageRect1.origin.y + imageRect1.size.height + kPadding)];
        
        //[self addLineWithFrame:CGRectMake(kPadding, imageRect.origin.y + imageRect.size.height + kPadding, _pageSize.width - kPadding*2, 4) withColor:[UIColor redColor]];
        
        [self beginPDFPage];
        
        //CGRect blueLineRect = [self addLineWithFrame:CGRectMake(kPadding, textRect.origin.y + textRect.size.height + kPadding, _pageSize.width - kPadding*2, 4) withColor:[UIColor blueColor]];
        
        CGRect lineRect5 = [self addLineWithFrame:CGRectMake(kPadding, 10 + 10 + kPadding, _pageSize.width - kPadding*2, 4) withColor:[UIColor blueColor]];
        
        //NSString *titulo5 = @"Fotos";
        
        //CGRect rectTitulo5 = [self addBoldText:titulo5 withFrame:CGRectMake(kPadding, kPadding + lineRect3.origin.y, 400, 200) fontSize:20.0f];
        
        UIImage *image5 = ad.foto5;
        
        //CGSize size = CGSizeMake(320.0,320.0);
        
        image5 = [self imageWithImage:image5 scaledToSize:size];
        CGRect imageRect5 = [self addImage:image5
                                   atPoint:CGPointMake((_pageSize.width/2)-(image3.size.width/2), rectTitulo5.origin.y + rectTitulo5.size.height + kPadding)];
        
        UIImage *image6 = ad.foto6;
        
        //CGSize size = CGSizeMake(320.0,320.0);
        
        image6 = [self imageWithImage:image6 scaledToSize:size];
        CGRect imageRect6 = [self addImage:image6
                                   atPoint:CGPointMake((_pageSize.width/2)-(image6.size.width/2), imageRect1.origin.y + imageRect1.size.height + kPadding)];
        
        //[self addLineWithFrame:CGRectMake(kPadding, imageRect.origin.y + imageRect.size.height + kPadding, _pageSize.width - kPadding*2, 4) withColor:[UIColor redColor]];
        
        [self finishPDF];
        NSLog(@"PDF finalizado");
        NSArray *paths = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES);
        NSString *documentsDirectory = [paths objectAtIndex:0];
        NSString *pdfPath = [documentsDirectory stringByAppendingPathComponent:pdfFile];
        
        if([[NSFileManager defaultManager] fileExistsAtPath:pdfPath]) {
            
            ReaderDocument *document = [ReaderDocument withDocumentFilePath:pdfPath password:nil];
            
            if (document != nil)
            {
                ReaderViewController *readerViewController = [[ReaderViewController alloc] initWithReaderDocument:document];
                readerViewController.delegate = self;
                
                readerViewController.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
                readerViewController.modalPresentationStyle = UIModalPresentationFullScreen;
                
                [self presentModalViewController:readerViewController animated:YES];
            }
        }
    }

    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

//PDF methods

- (void)setupPDFDocumentNamed:(NSString*)name Width:(float)width Height:(float)height {
    _pageSize = CGSizeMake(width, height);
    
    NSString *newPDFName = [NSString stringWithFormat:@"%@.pdf", name];
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    
    NSString *pdfPath = [documentsDirectory stringByAppendingPathComponent:newPDFName];
    
    UIGraphicsBeginPDFContextToFile(pdfPath, CGRectZero, nil);
}

- (void)beginPDFPage {
    UIGraphicsBeginPDFPageWithInfo(CGRectMake(0, 0, _pageSize.width, _pageSize.height), nil);
}

- (void)finishPDF {
    UIGraphicsEndPDFContext();
}

- (CGRect)addText:(NSString*)text withFrame:(CGRect)frame fontSize:(float)fontSize {
    UIFont *font = [UIFont systemFontOfSize:fontSize];
    
	CGSize stringSize = [text sizeWithFont:font constrainedToSize:CGSizeMake(_pageSize.width - 2*20-2*20, _pageSize.height - 2*20 - 2*20) lineBreakMode:UILineBreakModeWordWrap];
    
	float textWidth = frame.size.width;
    
    if (textWidth < stringSize.width)
        textWidth = stringSize.width;
    if (textWidth > _pageSize.width)
        textWidth = _pageSize.width - frame.origin.x;
    
    CGRect renderingRect = CGRectMake(frame.origin.x, frame.origin.y, textWidth, stringSize.height);
    
    [text drawInRect:renderingRect
            withFont:font
       lineBreakMode:UILineBreakModeWordWrap
           alignment:UITextAlignmentLeft];
    
    frame = CGRectMake(frame.origin.x, frame.origin.y, textWidth, stringSize.height);
    
    return frame;
}

- (CGRect)addBoldText:(NSString*)text withFrame:(CGRect)frame fontSize:(float)fontSize {
    UIFont *font = [UIFont boldSystemFontOfSize:fontSize];
    
	CGSize stringSize = [text sizeWithFont:font constrainedToSize:CGSizeMake(_pageSize.width - 2*20-2*20, _pageSize.height - 2*20 - 2*20) lineBreakMode:UILineBreakModeWordWrap];
    
	float textWidth = frame.size.width;
    
    if (textWidth < stringSize.width)
        textWidth = stringSize.width;
    if (textWidth > _pageSize.width)
        textWidth = _pageSize.width - frame.origin.x;
    
    CGRect renderingRect = CGRectMake(frame.origin.x, frame.origin.y, textWidth, stringSize.height);
    
    [text drawInRect:renderingRect
            withFont:font
       lineBreakMode:UILineBreakModeWordWrap
           alignment:UITextAlignmentLeft];
    
    frame = CGRectMake(frame.origin.x, frame.origin.y, textWidth, stringSize.height);
    
    return frame;
}

- (CGRect)addLineWithFrame:(CGRect)frame withColor:(UIColor*)color {
    CGContextRef currentContext = UIGraphicsGetCurrentContext();
    
    CGContextSetStrokeColorWithColor(currentContext, color.CGColor);
    
    // this is the thickness of the line
    CGContextSetLineWidth(currentContext, frame.size.height);
    
    CGPoint startPoint = frame.origin;
    CGPoint endPoint = CGPointMake(frame.origin.x + frame.size.width, frame.origin.y);
    
    CGContextBeginPath(currentContext);
    CGContextMoveToPoint(currentContext, startPoint.x, startPoint.y);
    CGContextAddLineToPoint(currentContext, endPoint.x, endPoint.y);
    
    CGContextClosePath(currentContext);
    CGContextDrawPath(currentContext, kCGPathFillStroke);
    
    return frame;
}

- (CGRect)addImage:(UIImage*)image atPoint:(CGPoint)point {
    CGRect imageFrame = CGRectMake(point.x, point.y, image.size.width, image.size.height);
    [image drawInRect:imageFrame];
    
    return imageFrame;
}

- (void)dismissReaderViewController:(ReaderViewController *)viewController {
    [self dismissModalViewControllerAnimated:YES];
}

//

- (UIImage*)imageWithImage:(UIImage*)image
              scaledToSize:(CGSize)newSize
{
    UIGraphicsBeginImageContext( newSize );
    [image drawInRect:CGRectMake(0,0,newSize.width,newSize.height)];
    UIImage* newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return newImage;
}
    
@end
