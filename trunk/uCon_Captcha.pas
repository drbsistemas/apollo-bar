unit uCon_Captcha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, Menus, cxButtons, cxTextEdit;

type
  TFcon_Captcha = class(TForm)
    Image1: TImage;
    Edit1: TcxTextEdit;
    btnOk: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    function GeraImagem(Img: TImage): string;
  end;

var
  Fcon_Captcha: TFcon_Captcha;
  validapost: string;

implementation

{$R *.dfm}

function TFcon_Captcha.GeraImagem(Img: TImage): string;
const
  f: array [0..4] of string = ('Courier New', 'Impact', 'Times New Roman',
                               'Verdana', 'Arial');
  s = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
  C: ARRAY [0..14] OF tcOLOR = (clAqua, clBlack, clBlue, clFuchsia, clGray,
                                clGreen, clLime, clMaroon, clNavy, clOlive,
                                clPurple, clRed, clSilver, clTeal, clYellow);
var
  i, x, y : integer;
  r : string;

begin
  randomize;
  Img.Width := 160;
  Img.Height := 60;
  for i := 0 to 3 do
    r := r + s[Random(length(s)-1)+1];

  with Img.Picture.Bitmap do
  begin
    width := Img.Width;
    Height := Img.Height;
    Canvas.Brush.Color := $00EFEFEF;
    Canvas.FillRect(Img.ClientRect);

    for i := 0 to 3 do
    begin
      Canvas.Font.Size := random(20) + 20;
      Canvas.Font.Name := f[High(f)];
      Canvas.Font.Color := c[random(High(c))];
      Canvas.TextOut(i*40,0,r[i+1]);
    end;

    for i := 0 to 2 do
    begin
      Canvas.Pen.Color := c[random(High(c))];
      Canvas.Pen.Width := 2;
      canvas.MoveTo(random(Width),0);
      Canvas.LineTo(random(Width),Height);
      Canvas.Pen.Width := 1;
      x := random(Width-10);
      y := random(Height-10);
      Canvas.Rectangle(x,y,x+10,y+10);
    end;
  end;

  Result := r;
end;

procedure TFcon_Captcha.FormShow(Sender: TObject);
begin
  Edit1.Clear;
  Edit1.SetFocus;
  validapost := GeraImagem(Image1);
end;

procedure TFcon_Captcha.btnOkClick(Sender: TObject);
begin
  if (Edit1.Text = validapost) then
     btnOk.Tag := 1 else
  begin
     btnok.Tag := 0;
     MessageDlg('Código da Imagem não confere! Tente novamente!', mtWarning, [mbOK], 0);
  end;
  close;
end;

procedure TFcon_Captcha.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
     Key := #0;
     Perform(WM_NEXTDLGCTL, 0, 0);
   end;
end;

end.
