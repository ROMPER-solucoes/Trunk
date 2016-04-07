program ERP;



uses
  Vcl.Forms,
  APrincipal in 'Principal\APrincipal.pas' {FPrincipal},
  DMGeral in 'DataModulo\DMGeral.pas' {FDmGeral: TDataModule},
  UUsuario in 'Classe\UUsuario.pas',
  UGeral in 'Classe\UGeral.pas',
  ACarregaDado in 'Principal\ACarregaDado.pas' {FCarregaDado},
  UCarregaTela in 'Classe\UCarregaTela.pas',
  AUsuarioCad in 'Cadastro\AUsuarioCad.pas' {FUsuarioCad},
  ADepositoCad in 'Cadastro\ADepositoCad.pas' {FDepisitoCad},
  UDepositoCad in 'Classe\UDepositoCad.pas',
  UConexao in 'Classe\UConexao.pas',
  ULogSistema in 'Classe\ULogSistema.pas',
  AVendaOrcamento in 'Venda\AVendaOrcamento.pas' {FVendaOrcamento},
  UVendaOrcamento in 'Classe\UVendaOrcamento.pas',
  AVendaPedido in 'Venda\AVendaPedido.pas' {Form2},
  UVendaPedido in 'Classe\UVendaPedido.pas',
  ACompraPedido in 'Venda\ACompraPedido.pas' {Form3},
  UCompraPedido in 'Classe\UCompraPedido.pas',
  ACompraOrcamento in 'Venda\ACompraOrcamento.pas' {Form4},
  UCompraOrcamento in 'Classe\UCompraOrcamento.pas',
  AParceiroCad in 'Cadastro\AParceiroCad.pas' {FParceiroCad},
  UParceiroCad in 'Classe\UParceiroCad.pas',
  ARegiaoCad in 'Cadastro\ARegiaoCad.pas' {FRegiaoCad},
  URegiaoCad in 'Classe\URegiaoCad.pas',
  AClassificacaoCad in 'Cadastro\AClassificacaoCad.pas' {FClassificacaoCad},
  UClassificacaoCad in 'Classe\UClassificacaoCad.pas',
  AProducaoCad in 'Cadastro\AProducaoCad.pas' {FProducaoCad},
  UProducaoCad in 'Classe\UProducaoCad.pas',
  uTools in 'Classe\uTools.pas',
  UPadraoTela in 'Classe\UPadraoTela.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'ERP';
  VcLogSistema := TCLogSistema.Create;
  VcLogSistema.CriarArquivoLog;
  VcLogSistema.GravarLog('Abrindo ERP');
  Application.CreateForm(TFDmGeral, FDmGeral);
  VcGeral := TCGeral.Create;
  VcGeral.ValidaVersao;
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.Run;
end.

