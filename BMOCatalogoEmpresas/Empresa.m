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

-(id) init {
    self = [super init];
    
    if (self) {
        // Se chegou aqui, a inicialização ocorreu com sucesso
    }
    
    return self;
}

-(instancetype) initWithNome:(NSString *) nome
        eQuantidadeFuncionarios:(int) quantidade {
    
    if ((self = [super init])) {
        self.nome = nome;
        self.quantidadeFuncionarios = quantidade;
    }
    
    return self;
}

-(void) dealloc {
    [nome release];
    [super dealloc];
}

@end
