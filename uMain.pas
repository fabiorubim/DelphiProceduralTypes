unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TTexto = type String;

  TDias = (Segunda, Terca, Quarta, Quinta, Sexta, Sabado, Domingo);
  TAlphabet = 'A'..'z';

var
  Form1: TForm1;

implementation

{$R *.dfm}

function soma(x,y:integer):integer; forward;

procedure TForm1.Button1Click(Sender: TObject);
type
  TFunc = function(x,y:integer):integer;

var
  Palavra : TTexto;
  VDia 		: TDias;
  Alfa    : TAlphabet;
  Funcao  : TFunc;
  Soma2   : function(x,y:integer):integer;
begin
  Palavra := 'Bom dia!' ;
  VDia    := Terca;
  Alfa    := 'E';
  Soma2 	:= soma;

  Funcao := soma;

  //ShowMessage('Resultado: ' + IntToStr(Funcao(6,6)));
  ShowMessage('Resultado: ' + IntToStr(Soma2(6,6)));

end;

function soma(x,y:integer):integer;
begin
  result := x+y; ;
end;

end.
