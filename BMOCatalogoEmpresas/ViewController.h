//
//  ViewController.h
//  BMOCatalogoEmpresas
//
//  Created by Breno Medeiros de Oliveira on 09/10/2018.
//  Copyright © 2018 Breno Medeiros de Oliveira. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController { // Abre chave aqui
    NSMutableArray *catalogo;
} // Fecha chave aqui

// Este codigo abaixo já havia sido feito anteriormente
@property (weak, nonatomic) IBOutlet UITextField *nomeField;
@property (weak, nonatomic) IBOutlet UITextField *quantidadeField;
@property (weak, nonatomic) IBOutlet UILabel *avisoSucessoLabel;
- (IBAction)incrementadorAlterado:(id)sender;
- (IBAction)salvar:(id)sender;

- (IBAction)showCatalogo:(id)sender;

@end

