unit Classe.Pessoa;

interface

type
  TEventMemo = procedure(Value: String) of object;

  TPessoa = class
  private
    FNome: String;
    FCidade: String;
    FEndereco: String;
    FEventMemo: TEventMemo;
    procedure SetCidade(const Value: String);
    procedure SetEndereco(const Value: String);
    procedure SetNome(const Value: String);
    procedure SetEventMemo(const Value: TEventMemo);
  protected
  public
    procedure Cadastrar;
    property Nome: String read FNome write SetNome;
    property Endereco: String read FEndereco write SetEndereco;
    property Cidade: String read FCidade write SetCidade;
    property EventMemo : TEventMemo read FEventMemo write SetEventMemo;
  end;

implementation

uses
  System.Classes;

{ TPessoa }

procedure TPessoa.Cadastrar;
var
  Lista: TStringList;
begin
  Lista := TStringList.Create;
  try
    Lista.Add('Nome: ' + Nome);
    Lista.Add('Endereço: ' + Endereco);
    Lista.Add('Cidade: ' + Cidade);
    Lista.SaveToFile(Nome + '_Cliente.txt');
    EventMemo(Nome + 'cadastrado com sucesso!');
  finally
    Lista.Free;
  end;
end;

procedure TPessoa.SetCidade(const Value: String);
begin
  FCidade := Value;
end;

procedure TPessoa.SetEndereco(const Value: String);
begin
  FEndereco := Value;
end;

procedure TPessoa.SetEventMemo(const Value: TEventMemo);
begin
  FEventMemo := Value;
end;

procedure TPessoa.SetNome(const Value: String);
begin
  FNome := Value;
end;

end.
