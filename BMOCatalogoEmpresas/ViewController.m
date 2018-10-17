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

// BMOLabs - Clone de Empresa
-(Empresa *) criaEmpresaComNome:(NSString *) nome
        comNumeroDeFuncionarios:(int) quantidade{
    Empresa *e = [[Empresa alloc] init];
    
    e.nome = nome;
    e.quantidadeFuncionarios = quantidade;
    return e;
}

- (IBAction)incrementadorAlterado:(id)sender {
    UIStepper *incrementador = (UIStepper *)sender;
    self.quantidadeField.text = [NSString stringWithFormat:@"%d", (int)incrementador.value];
}

-(void)salvaEmpresa:(Empresa *) novaEmpresa {
    if(!catalogo){
        catalogo = [[NSMutableArray alloc] init];
    }
    
    [catalogo addObject:novaEmpresa];
}

-(void)mostraCatalogo {
    NSLog(@"******* Listando todas empresas *******");
    
    for(Empresa *empresa in catalogo) {
        NSLog(@"A empresa %@ tem %d funcionários", empresa.nome, empresa.quantidadeFuncionarios);
    }
}

- (IBAction)salvar:(id)sender {
    Empresa *e = [[Empresa alloc] init];
    e.nome = self.nomeField.text;
    e.quantidadeFuncionarios = [self.quantidadeField.text intValue];
    
    // BMOLabs - Clone de Empresa
    Empresa *ce = [self criaEmpresaComNome:[NSString stringWithFormat: @"%@%@",@"CLONE-",e.nome]
                   comNumeroDeFuncionarios:(e.quantidadeFuncionarios - 2)];
    [self salvaEmpresa:ce];
    Empresa *initWN = [[Empresa alloc] initWithNome:[NSString stringWithFormat:@"%@%@", @"initWithNome-", e.nome] eQuantidadeFuncionarios:(e.quantidadeFuncionarios - 1)];
    [self salvaEmpresa:initWN];
    
    // NSLog(@"Empresa criada. Nome=%@, funcionários=%d .", e.nome, e.quantidadeFuncionarios);
    [self salvaEmpresa:e];
    [self mostraCatalogo];
    
    [e release];
}
@end
