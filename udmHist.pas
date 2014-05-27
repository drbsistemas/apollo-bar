unit udmHist;

interface

uses
  SysUtils, Classes, UCHist_Base, UCHistDataset;

type
  TdmHistorico = class(TDataModule)
    Hist_Prod: TUCHist_DataSet;
    Hist_Controle: TUCControlHistorico;
    Hist_Generico: TUCHist_DataSet;
    Hist_Conf: TUCHist_DataSet;
    Hist_ItemPar: TUCHist_DataSet;
    Hist_Cliente: TUCHist_DataSet;
    Hist_Relatorio: TUCHist_DataSet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmHistorico: TdmHistorico;

implementation

uses udmCad, uPrinc, udmRel;

{$R *.dfm}

end.
