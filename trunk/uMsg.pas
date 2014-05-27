unit uMsg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxGDIPlusClasses, cxImage, cxTextEdit, cxMemo,
  Menus, StdCtrls, cxButtons, cxGroupBox;

type
  TFMsg = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxImage: TcxImage;
    btnSim: TcxButton;
    btnNao: TcxButton;
    cxImage1: TcxImage;
    cxMsg: TLabel;
    btnOk: TcxButton;
    procedure btnNaoClick(Sender: TObject);
    procedure btnSimClick(Sender: TObject);
    procedure cxMsgEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMsg: TFMsg;

implementation

{$R *.dfm}

procedure TFMsg.btnNaoClick(Sender: TObject);
begin
   btnSim.Tag := 0;
   Close;
end;

procedure TFMsg.btnSimClick(Sender: TObject);
begin
   btnSim.tag := 1;
   Close;
end;

procedure TFMsg.cxMsgEnter(Sender: TObject);
begin
   btnNao.SetFocus;
end;

procedure TFMsg.FormShow(Sender: TObject);
begin
   if btnNao.Visible = true then
      btnNao.SetFOcus else
      btnOk.SetFocus;
end;

end.
