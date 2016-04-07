unit UProducaoCad;

interface

type
  TCProducao = class
   private
    { private declarations }
    protected
    { protected declarations }
    public
    { public declarations }
//    VcDSClassificacao: TDataSource;
//    procedure ClassificacaoCriaQuery;
//    function ClassificacaoAtualizaCampo(PpSequencia:String) : String;
//    procedure ClassificacaoAtualizaSQL(PpWhereSQL:String);
//    Function ClassificacaoRetornaSQL(PpSQL: String) : String;
//    Function ClassificacaoRetornaQueryGrid : TFDQuery;
//
    Function RegistroNovo : String;
    Function RegistroCancela : String;
    Function RegistroSalva : String;
    Function RegistroExclui: String;

    published
    { published declarations }
    Constructor Create; // declaração do metodo construtor
    Destructor  Destroy; Override; // declaração do metodo destrutor
  end;

implementation

{ TCProducao }

constructor TCProducao.Create;
begin

end;

destructor TCProducao.Destroy;
begin

  inherited;
end;

function TCProducao.RegistroCancela: String;
begin

end;

function TCProducao.RegistroExclui: String;
begin

end;

function TCProducao.RegistroNovo: String;
begin
      ;
end;

function TCProducao.RegistroSalva: String;
begin

end;

end.
