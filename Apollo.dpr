program Apollo;

uses
  Forms,
  uPrinc in 'uPrinc.pas' {FPrinc},
  udmCad in 'udmCad.pas' {dmCad: TDataModule},
  uLiberacao in 'uLiberacao.pas' {FormLibera},
  Rotinas in 'Rotinas.pas',
  uSobre in 'uSobre.pas' {FSobre},
  uCad_Cliente in 'uCad_Cliente.pas' {Fcad_Cliente},
  uCad_Empresa in 'uCad_Empresa.pas' {Fcad_Empresa},
  uCon_ItemPar in 'uCon_ItemPar.pas' {Fcon_ItemPar},
  uCad_Prod in 'uCad_Prod.pas' {Fcad_Prod},
  uCon_Generico in 'uCon_Generico.pas' {Fcon_Generico},
  udmFinanceiro in 'udmFinanceiro.pas' {dmFinanceiro: TDataModule},
  uCad_Caixa in 'uCad_Caixa.pas' {Fcad_Caixa},
  uCon_Prod in 'uCon_Prod.pas' {Fcon_Prod},
  uCon_Captcha in 'uCon_Captcha.pas' {Fcon_Captcha},
  uCon_Clie in 'uCon_Clie.pas' {Fcon_Cliente},
  udmHist in 'udmHist.pas' {dmHistorico: TDataModule},
  uCon_Relatorio in 'uCon_Relatorio.pas' {Fcon_Relatorio},
  udmRel in 'udmRel.pas' {dmRel: TDataModule},
  uCon_Estoque in 'uCon_Estoque.pas' {Fcon_Estoque},
  uCad_Conta in 'uCad_Conta.pas' {Fcad_Conta},
  uCad_Plano in 'uCad_Plano.pas' {Fcad_Plano},
  uCon_Baixa in 'uCon_Baixa.pas' {Fcon_Baixa},
  uCon_Cidade in 'uCon_Cidade.pas' {Fcon_Cidade},
  uCad_Balanco in 'uCad_Balanco.pas' {Fcad_Balanco},
  uRel_Padrao in 'uRel_Padrao.pas' {FRel_Padrao},
  uListagens in 'uListagens.pas',
  ucad_Mesa in 'ucad_Mesa.pas' {Fcad_Mesa},
  udmVenda in 'udmVenda.pas' {dmVenda: TDataModule},
  uCad_Vendedor in 'uCad_Vendedor.pas' {Fcad_Vendedor},
  uCad_Venda in 'uCad_Venda.pas' {Fcad_Venda},
  uFaturamento in 'uFaturamento.pas',
  uFinanceiro in 'uFinanceiro.pas',
  uEstoque in 'uEstoque.pas',
  LoginWindow_U in '..\..\Componentes\UserControl_2.18\Source\LoginWindow_U.pas' {frmLoginWindow},
  NFe_Util_2G_TLB in 'C:\Program Files (x86)\Borland\Delphi7\Imports\NFe_Util_2G_TLB.pas',
  uMsg in 'uMsg.pas' {FMsg},
  uCad_Pedido in 'uCad_Pedido.pas' {Fcad_Pedido};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Apollo Bar';
  Application.CreateForm(TdmCad, dmCad);
  Application.CreateForm(TFPrinc, FPrinc);
  Application.CreateForm(TdmFinanceiro, dmFinanceiro);
  Application.CreateForm(TdmRel, dmRel);
  Application.CreateForm(TdmHistorico, dmHistorico);
  Application.CreateForm(TdmVenda, dmVenda);
  Application.CreateForm(TFcad_Pedido, Fcad_Pedido);
  Application.Run;
end.
