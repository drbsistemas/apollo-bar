unit uSobre;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinOffice2010Silver, cxImage,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine, ShellApi, 
  dxSkinXmas2008Blue, Menus, StdCtrls, cxButtons, dxGDIPlusClasses;

type
  TFSobre = class(TForm)
    cxImage1: TcxImage;
    btnFacebook: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure cxImage1Click(Sender: TObject);
    procedure btnFacebookClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSobre: TFSobre;

implementation

{$R *.dfm}

procedure TFSobre.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := CaFree;
end;

procedure TFSobre.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #27 then Close;
   if Key = #13 then
   begin
     Key := #0;
     Perform(WM_NEXTDLGCTL, 0, 0);
   end;
end;

procedure TFSobre.cxImage1Click(Sender: TObject);
begin
   Close;
end;

procedure TFSobre.btnFacebookClick(Sender: TObject);
begin
   ShellExecute(Handle, 'open', 'https://www.facebook.com/SistemasDRB', '', '', 1);
end;

end.
