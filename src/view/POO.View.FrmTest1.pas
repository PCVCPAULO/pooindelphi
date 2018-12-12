unit POO.View.FrmTest1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Styles.Objects, FMX.Objects, FMX.Controls.Presentation, FMX.StdCtrls;

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
    procedure SpeedButton1Click(Sender: TObject);
  private
    FClicks: Integer;
    procedure SetClicks(const Value: Integer);
    function GetClicks: Integer;
    { Private declarations }
  public
    { Public declarations }
    property Clicks : Integer read GetClicks write SetClicks;
  end;

var
  FrmTest1: TFrmTest1;

implementation

{$R *.fmx}

{ TFrmTest1 }

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

end.
