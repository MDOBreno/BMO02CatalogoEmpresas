//
//  Empresa.h
//  BMOCatalogoEmpresas
//
//  Created by Breno Medeiros de Oliveira on 09/10/2018.
//  Copyright © 2018 Breno Medeiros de Oliveira. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Empresa : NSObject {
    NSString *nome;
    int quantidadeFuncionarios;
}

@property (nonatomic, retain) NSString *nome;
@property (nonatomic, assign) int quantidadeFuncionarios;

@end

NS_ASSUME_NONNULL_END
