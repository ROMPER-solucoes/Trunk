unit uTools;

interface

  uses
    sysutils, dateutils;

  function PrimeiroDiaUtil(Data: TDateTime): TDateTime;
  function ProximoDiaUtil(dData: TDateTime): TDateTime;

  Function DiasUteisPeriodo(DataI, DataF: TDateTime): Integer;
  Function DiasUteisMes(DataI: TDateTime): Integer;

implementation

  function PrimeiroDiaUtil(Data: TDateTime): TDateTime;
    { : Retorna data do primeiro dia Util do mes, de uma data informada }
    var
      Ano, Mes, Dia: word;
      DiaDaSemana: Integer;
    begin
      DecodeDate(Data, Ano, Mes, Dia);
      Dia := 1;
      DiaDaSemana := DayOfWeek(Data);
      if DiaDaSemana = 1 Then
        begin
          Dia := 2;
        end
      else if DiaDaSemana = 7 Then
        begin
          Dia := 3;
        end;
      Result := EncodeDate(Ano, Mes, Dia);
    end;

  function ProximoDiaUtil(dData: TDateTime): TDateTime;
    { : Retorna o próximo dia útil caso a data informada caia em um fim de semana }
    begin
      if DayOfWeek(dData) = 7 then
        begin
          dData := dData + 2
        end
      else if DayOfWeek(dData) = 1 then
        begin
          dData := dData + 1;
        end;
      Result := dData;
    end;

  function PrimeiroDiaMes(Data: TDateTime): TDateTime;
    var
      Ano, Mes, Dia: word;
    begin
      DecodeDate(Data, Ano, Mes, Dia);
      Result := EncodeDate(Ano, Mes, 1);
    end;

  function UltimoDiaMes(Data: TDateTime): Integer;
    begin
      Result := DaysInMonth(Data);
    end;

  Function DiasUteisMes(DataI: TDateTime): Integer;
    begin
      Result := DiasUteisPeriodo(PrimeiroDiaMes(DataI), DataI + DaysInMonth(DataI) - 1)
    end;

  Function DiasUteisPeriodo(DataI, DataF: TDateTime): Integer;
    var
      contador: Integer;
    begin
      if DataI > DataF then
        begin
          Result := 0;
          exit;
        end;
      contador := 0;
      while (DataI <= DataF) do
        begin

          if ((DayOfWeek(DataI) <> 1) and (DayOfWeek(DataI) <> 7)) then

            Inc(contador);
          DataI := DataI + 1;
        end;
      Result := contador;
    end;
  // Leia mais em: Dicas - Contando dias úteis entre períodos http:
  // www.devmedia.com.br/dicas-contando-dias-uteis-entre-periodos/2416#ixzz44onGYsUe

end.
