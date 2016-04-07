unit UCarregaTela;

interface

Uses
  Forms, System.SysUtils, ComCtrls,
  ACarregaDado, AUsuarioCad, ADepositoCad, AParceiroCad, ARegiaoCad,
  AClassificacaoCad,
  AProducaoCad;

type
   TExecProcedure = procedure of object;
type
   TExecFunction = function:string of object;

type
  TCCarregaTela = class
   private
    { private declarations }
    VcCarregaDado : TFCarregaDado;
    function ProcessoExecutaProcedure(VpClasse: TObject; VpProcesso: String) : String;
    function ProcessoExecutaFunction(VpClasse: TObject; VpProcesso: String) : String;
    protected
    { protected declarations }
    public
    function CarregaTela(PpTelaCodigo: Integer; PpCoolBar : TCoolBar; PpCriar:Boolean=False): TClass;
    function ProcessoCadastro(VcClasseTela: TClass; Processo:integer): String;
    published
    { published declarations }
    Constructor Create; // declaração do metodo construtor
    Destructor  Destroy; Override; // declaração do metodo destrutor
  end;

var
  VcCarregaTela : TCCarregaTela;

implementation

{ TCCarregaTela }

constructor TCCarregaTela.Create;
begin

end;

Function TCCarregaTela.CarregaTela(PpTelaCodigo: Integer; PpCoolBar : TCoolBar; PpCriar:Boolean=False): TClass;
begin
  case PpTelaCodigo of
    10  : Result := TClass(TFCarregaDado.Create(nil));
    110 : begin
          VcParceiroCad := TFParceiroCad.Create(PpCoolBar);
          Result := TClass(VcParceiroCad);
          end;
    111 : begin
          if PpCriar then
          VcDepositoCad := TFDepisitoCad.Create(PpCoolBar);
          Result := TClass(VcDepositoCad);
          end;
    112 : begin
          if PpCriar then
          VcRegiaoCad := TFRegiaoCad.Create(PpCoolBar);
          Result := TClass(VcRegiaoCad);
          end;
    113 : begin
          if PpCriar then
          VcClassificacaoCad := TFClassificacaoCad.Create(PpCoolBar);
          Result := TClass(VcClassificacaoCad);
          end;

    114 : begin
          VcProducaoCad := TFProducaoCad.Create(PpCoolBar);
          Result := TClass(VcProducaoCad);
          end;
    150 : begin
          if PpCriar then
          VcUsuarioCad  := TFUsuarioCad.Create(PpCoolBar);
          Result := TClass(VcUsuarioCad);
          end;
  end;
end;

function TCCarregaTela.ProcessoCadastro(VcClasseTela: TClass; Processo:integer): String;
begin
  case Processo of
    10 : Result := ProcessoExecutaFunction(TObject(VcClasseTela), 'RegistroNovo');
    11 : Result := ProcessoExecutaFunction(TObject(VcClasseTela), 'RegistroEdita');
    12 : Result := ProcessoExecutaFunction(TObject(VcClasseTela), 'RegistroExclui');
    13 : Result := ProcessoExecutaFunction(TObject(VcClasseTela), 'RegistroCancela');
    14 : Result := ProcessoExecutaFunction(TObject(VcClasseTela), 'RegistroSalva');
    200: Result := ProcessoExecutaFunction(TObject(VcClasseTela), 'CarregaFiltro');
    201: Result := ProcessoExecutaFunction(TObject(VcClasseTela), 'RetornaFiltro');
    202: Result := ProcessoExecutaFunction(TObject(VcClasseTela), 'SalvaTelaRetorno');
  end;
end;

function TCCarregaTela.ProcessoExecutaProcedure(VpClasse: TObject; VpProcesso: string) : String;
var
  FvMetodo: TMethod;
  Execute: TExecProcedure;
begin
  FvMetodo.Data := Pointer(VpClasse);
  FvMetodo.Code := VpClasse.MethodAddress(VpProcesso);
  if not Assigned(FvMetodo.Code) then
    Exit;
  Execute := TExecProcedure(FvMetodo);
  Execute;
end;

function TCCarregaTela.ProcessoExecutaFunction(VpClasse: TObject; VpProcesso: string):String;
var
  FvMetodo: TMethod;
  Execute: TExecFunction;
begin
  FvMetodo.Code := VpClasse.MethodAddress(VpProcesso);
  if not Assigned(FvMetodo.Code) then
    exit;
  Execute := TExecFunction(FvMetodo);
  result:=Execute;
end;

destructor TCCarregaTela.Destroy;
begin

  inherited;
end;

end.

