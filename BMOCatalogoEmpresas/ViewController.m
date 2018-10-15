//
//  ViewController.m
//  BMOCatalogoEmpresas
//
//  Created by Breno Medeiros de Oliveira on 09/10/2018.
//  Copyright © 2018 Breno Medeiros de Oliveira. All rights reserved.
//

#import "ViewController.h"
#import "Empresa.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)incrementadorAlterado:(id)sender {
    UIStepper *incrementador = (UIStepper *)sender;
    self.quantidadeField.text = [NSString stringWithFormat:@"%d", (int)incrementador.value];
}

- (IBAction)salvar:(id)sender {
    Empresa *e = [[Empresa alloc] init];
    e.nome = self.nomeField.text;
    e.quantidadeFuncionarios = [self.quantidadeField.text intValue];
    
    NSLog(@"Empresa criada. Nome=%@, funcionários=%d .", e.nome, e.quantidadeFuncionarios);
    
    [e release];
}
@end
