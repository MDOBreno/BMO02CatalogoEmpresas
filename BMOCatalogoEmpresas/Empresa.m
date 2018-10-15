//
//  Empresa.m
//  BMOCatalogoEmpresas
//
//  Created by Breno Medeiros de Oliveira on 09/10/2018.
//  Copyright © 2018 Breno Medeiros de Oliveira. All rights reserved.
//

#import "Empresa.h"

@implementation Empresa
@synthesize nome, quantidadeFuncionarios;

-(void) dealloc {
    [nome release];
    [super dealloc];
}

@end
