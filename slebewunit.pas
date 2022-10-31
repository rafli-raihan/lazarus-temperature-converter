unit slebewunit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    BtnKonversi: TButton;
    Button2: TButton;
    cbSuhuAsal: TComboBox;
    cbSuhuHasil: TComboBox;
    edtSuhuAsal: TEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    HasilSuhu: TLabel;
    procedure BtnKonversiClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.BtnKonversiClick(Sender: TObject);
  var H,A:Double;
begin
  A := StrToFloat(edtSuhuAsal.Text);
  if cbSuhuAsal.Text = 'CELCIUS' then
  begin
     if cbSuhuHasil.Text = 'FAHRENHEIT' then
     begin
        H:= (A * 9/5) + 32;
     end else
     if cbSuhuHasil.Text = 'KELVIN' then
     begin
        H := A + 273.5;
     end else
     if cbSuhuHasil.Text = 'REAMUR' then
     begin
        H := A * 4/5;
     end else
        H := A;
  end else
  if cbSuhuAsal.Text = 'FAHRENHEIT' then
  begin
     if cbSuhuHasil.Text = 'CELCIUS' then
     begin
       H := (A - 32) * 5/9;
     end else
     if cbSuhuHasil.Text = 'KELVIN' then
     begin
       H := (A + 459.67) * 5/9;
     end else
     if cbSuhuHasil.Text = 'REAMUR' then
     begin
       H := (A - 32) * 4/9;
     end else
     H := A;
  end else
  if cbSuhuAsal.Text = 'KELVIN' then
  begin
     if cbSuhuHasil.Text = 'CELCIUS' then
     begin
       H := A - 273.5;
     end else
     if cbSuhuHasil.Text = 'FAHRENHEIT' then
     begin
       H := (A - 273.15) * 9/5 + 32;
     end else
     if cbSuhuHasil.Text = 'REAMUR' then
     begin
       H := (A - 273) * 4/5;
     end else
       H := A;
  end else
  If cbSuhuAsal.Text = 'REAMUR' then
  begin
    if cbSuhuHasil.Text = 'CELCIUS' then
    begin
      H := A * 5/4;
    end else
    if cbSuhuHasil.Text = 'FAHRENHEIT' then
    begin
      H := (A * 9/4) + 32;
    end else
    if cbSuhuHasil.Text = 'KELVIN' then
    begin
      H := (A * 5/4) + 273;
     end;
     end;
       HasilSuhu.Caption := FormatFloat('#,##0.00;;0',H);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
   cbSuhuAsal.Clear;
   cbSuhuAsal.Items.Add('CELCIUS');
   cbSuhuAsal.Items.Add('KELVIN');
   cbSuhuAsal.Items.Add('FAHRENHEIT');
   cbSuhuAsal.Items.Add('REAMUR');

   cbSuhuHasil.Clear;
   cbSuhuHasil.Items.Add('CELCIUS');
   cbSuhuHasil.Items.Add('KELVIN');
   cbSuhuHasil.Items.Add('FAHRENHEIT');
   cbSuhuHasil.Items.Add('REAMUR');
end;

end.

