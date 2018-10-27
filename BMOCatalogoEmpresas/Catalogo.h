//
//  Catalogo.h
//  BMOCatalogoEmpresas
//
//  Created by Breno Medeiros on 27/10/18.
//  Copyright © 2018 Breno Medeiros de Oliveira. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Catalogo : UIViewController<UITableViewDelegate, UITableViewDataSource> {
    NSMutableArray *empresas;
}

@property (retain, nonatomic) IBOutlet UITableView *tabelaEmpresas;

@property (retain, nonatomic) IBOutlet UIButton *botaoEditar;
- (IBAction)botaoEditarTap:(id)sender;

@property (retain, nonatomic) NSMutableArray *empresas;

-(IBAction)close:(id)sender;
-(instancetype) initWithEmpresas:(NSMutableArray *)empresas;

@end
NS_ASSUME_NONNULL_END
