//
//  Catalogo.m
//  BMO02CatalogoEmpresas
//
//  Created by Breno Medeiros on 27/10/18.
//  Copyright © 2018 Breno Medeiros de Oliveira. All rights reserved.
//

#import "Catalogo.h"
#import "Empresa.h"

@interface Catalogo ()

@end

@implementation Catalogo
@synthesize tabelaEmpresas, empresas;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

-(IBAction)close:(id)sender{
    [self dismissModalViewControllerAnimated:YES];
}


-(instancetype) initWithEmpresas:(NSMutableArray *)cEmpresas {
    
    if ((self = [super init])) {
        empresas =[[NSMutableArray alloc] init];
        empresas = cEmpresas;
    }
    
    return self;
}

/* - (void)dealloc {
 [_catalogo release];
 [_botaoEditar release];
 [super dealloc];
 } */


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return empresas.count;
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
    static NSString *CelulaContatoCacheID = @"CelulaContatoCacheID";
    UITableViewCell *cell = [self.tabelaEmpresas dequeueReusableCellWithIdentifier:CelulaContatoCacheID];
    
    if (!cell) {
        cell = /* [ */[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle/*Default*//*Value1*//*Value2*/ reuseIdentifier:CelulaContatoCacheID] /* autorelease] */;
    }
    
    Empresa *empresa = [empresas objectAtIndex:indexPath.row];
    cell.textLabel.text = empresa.nome;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%d", empresa.quantidadeFuncionarios];
    
    return cell;
}

-(void) tableView:(UITableView *)tableView
didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    Empresa *empresa = [empresas objectAtIndex:indexPath.row];
    NSString *msg = [NSString stringWithFormat:@"Nome: %@\nFuncionarios: %d", empresa.nome, empresa.quantidadeFuncionarios];
    
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Contato"
                                                                   message:msg
                                                            preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                          handler:^(UIAlertAction * action) {}];
    [alert addAction:defaultAction];
    [self presentViewController:alert animated:YES completion:nil];
    
    
    [self.tabelaEmpresas deselectRowAtIndexPath:indexPath animated:YES];
}

-(void)tableView:(UITableView *)tableView
commitEditingStyle:(UITableViewCellEditingStyle *)editingStyle
forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (editingStyle == (NSInteger *)UITableViewCellEditingStyleDelete) {
        [empresas removeObjectAtIndex:indexPath.row];
        [self.tabelaEmpresas reloadData];
    }
}

-(NSString *) tableView:(UITableView *)tableView
titleForDeleteConfirmationButtonForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return @"Remover";
}

-(IBAction)botaoEditarTap:(id)sender {
    if ([self.botaoEditar.titleLabel.text isEqualToString:@"Editar"]) {
        [self.tabelaEmpresas setEditing:YES animated:YES];
        [self.botaoEditar setTitle:@"Pronto" forState:UIControlStateNormal];
    } else {
        [self.tabelaEmpresas setEditing:NO animated:YES];
        [self.botaoEditar setTitle:@"Editar" forState:UIControlStateNormal];
    }
}

// Tipo de operação a ser feita. Neste caso em específico,
// queremos permitir apenas a remoção de elementos
// (é possível inserir novos também)
-(UITableViewCellEditingStyle) tableView:(UITableView *)tableView
           editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return UITableViewCellEditingStyleDelete;
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/




@end
