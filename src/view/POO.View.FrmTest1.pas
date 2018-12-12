unit POO.View.FrmTest1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Styles.Objects, FMX.Objects, FMX.Controls.Presentation, FMX.StdCtrls,
  FMX.ScrollBox, FMX.Memo;

type
  TFrmTest1 = class(TForm)
    Rectangle1: TRectangle;
    StyleObject1: TStyleObject;
    StyleObject2: TStyleObject;
    StyleObject3: TStyleObject;
    Rectangle2: TRectangle;
    Rectangle3: TRectangle;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    Memo1: TMemo;
    SpeedButton2: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    FClicks: Integer;
    procedure SetClicks(const Value: Integer);
    function GetClicks: Integer;
    { Private declarations }
    procedure ExibeMensagemMemo(Value : String);
  public
    { Public declarations }
    property Clicks : Integer read GetClicks write SetClicks;
  end;

var
  FrmTest1: TFrmTest1;

implementation

{$R *.fmx}

uses Classe.Pessoa;

{ TFrmTest1 }

procedure TFrmTest1.ExibeMensagemMemo(Value: String);
begin
  Memo1.Lines.Clear;
  Memo1.Lines.Add(Value);
end;

function TFrmTest1.GetClicks: Integer;
begin
  Result := FClicks;
end;

procedure TFrmTest1.SetClicks(const Value: Integer);
begin
  FClicks :=  FClicks + Value;
  Label1.Text := IntToStr(FClicks)+' Cliques';
end;

procedure TFrmTest1.SpeedButton1Click(Sender: TObject);
begin
  SetClicks(1);
end;

procedure TFrmTest1.SpeedButton2Click(Sender: TObject);
var
  Pessoa : TPessoa;
begin
  Pessoa := TPessoa.Create;
  try
    Pessoa.EventMemo := ExibeMensagemMemo;
    Pessoa.Cadastrar;
  finally
    Pessoa.Free;
  end;
end;

end.
