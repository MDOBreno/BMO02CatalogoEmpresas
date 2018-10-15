//
//  ViewController.h
//  BMOCatalogoEmpresas
//
//  Created by Breno Medeiros de Oliveira on 09/10/2018.
//  Copyright © 2018 Breno Medeiros de Oliveira. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *nomeField;
@property (weak, nonatomic) IBOutlet UITextField *quantidadeField;
- (IBAction)incrementadorAlterado:(id)sender;
- (IBAction)salvar:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *avisoSucessoLabel;

@end

