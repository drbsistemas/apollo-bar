unit uListagens;

interface
///// Privados
   procedure Listagem(intLista: Integer);

implementation

uses udmCad, uRel_Padrao, DateUtils, SysUtils, udmRel, Rotinas;

procedure Listagem(intLista: Integer);
begin
   case intLista of
      1: begin
         with Frel_Padrao do
         begin
            ///// CONSULTAS
            dmcad.cdsProd.Close;
            dmcad.cdsProd.CommandText := 'select A.*, B.RAZAO, C.DESCRICAO GRUPO, D.DESCRICAO SUBGRUPO '+
            ' from produto A '+
            ' LEFT JOIN CLIENTES B ON A.IDFORNEC=B.IDCLIE '+
            ' LEFT JOIN GENERICA C ON A.IDGRUPO=C.IDGENERICA AND C.TABELA='+QuotedStr('GRUPOS')+
            ' LEFT JOIN GENERICA D ON A.IDSUBGRUPO=D.IDGENERICA AND D.TABELA='+QuotedStr('SUBGRUPO')+
            ' where idprod>0';
            ///// FILTROS
            if ecodProd.Text<>'0' then
               dmcad.cdsProd.CommandText := dmcad.cdsProd.CommandText + ' and A.IDPROD = '+QuotedStr(eCodProduto.Text);
            if eCodGrupo.TExt<>'0' then
               dmcad.cdsProd.CommandText := dmcad.cdsProd.CommandText + ' and A.IDGRUPO = '+QuotedStr(eCodGrupo.Text);
            if eCodSub.TExt<>'0' then
               dmcad.cdsProd.CommandText := dmcad.cdsProd.CommandText + ' and A.IDSUBGRUPO = '+QuotedStr(eCodSub.Text);
            ///// ORDENAR
            dmcad.cdsProd.CommandText := dmcad.cdsProd.CommandText + ' ORDER BY ';
            ///// AGRUPAMENTO
            if cbAgrupa.Itemindex = 1 then
               dmcad.cdsProd.CommandText := dmcad.cdsProd.CommandText + ' A.IDGRUPO, ' else
            if cbAgrupa.Itemindex = 2 then
               dmcad.cdsProd.CommandText := dmcad.cdsProd.CommandText + ' A.IDSUBGRUPO, ' else
            if cbAgrupa.Itemindex = 3 then
               dmcad.cdsProd.CommandText := dmcad.cdsProd.CommandText + ' A.IDFORNEC, ';
            ///// SEGUNDA ORDENAÇÃO
            if cbOrdem.Itemindex = 0 then
               dmcad.cdsProd.CommandText := dmcad.cdsProd.CommandText + 'A.IDPROD ' else
            if cbOrdem.Itemindex = 1 then
               dmcad.cdsProd.CommandText := dmcad.cdsProd.CommandText + ' A.PRODUTO ' else
            if cbOrdem.Itemindex = 2 then
               dmcad.cdsProd.CommandText := dmcad.cdsProd.CommandText + ' A.IDGRUPO ' else
            if cbOrdem.Itemindex = 3 then
               dmcad.cdsProd.CommandText := dmcad.cdsProd.CommandText + ' A.IDSUBGRUPO ' else
            if cbOrdem.Itemindex = 4 then
               dmcad.cdsProd.CommandText := dmcad.cdsProd.CommandText + ' A.IDFORNEC ';
            ///// ABRE DADOS
            dmcad.cdsProd.Open;
            ///// ABRE CABEÇALHO
            dmRel.rxCabec.Close;
            dmrel.rxCabec.Open;
            dmRel.rxCabec.Append;
            dmrel.rxCabecLABEL.AsString   := 'Produto :';
            dmRel.rxCabecFILTRO.AsString  := Frel_Padrao.eCodProd.Text+' - '+Frel_Padrao.eProduto.Text;
            dmrel.rxCabecLABEL1.AsString  := 'Fornecedor :';
            dmRel.rxCabecFILTRO1.AsString := Frel_Padrao.eCodClie.Text+' - '+Frel_Padrao.eCliente.Text;
            ///// AGRUPAMENTO
            if FRel_padrao.cbAgrupa.Itemindex=0 then
               dmRel.rxCabecAGRUPA.AsString := 'NAO' else
            if Frel_Padrao.cbAgrupa.Itemindex=1 then
               dmREl.rxCabecAGRUPA.AsString := 'IDGRUPO' else
            if Frel_Padrao.cbAgrupa.Itemindex=2 then
               dmREl.rxCabecAGRUPA.AsString := 'IDSUBGRUPO' else
            if Frel_Padrao.cbAgrupa.Itemindex=3 then
               dmREl.rxCabecAGRUPA.AsString := 'IDFORNEC';
            ///// USAR CORES
            if Frel_padrao.cbCores.Checked   = true then
               dmRel.rxCabecUSACOR.AsString :='SIM' else
               dmRel.rxCaBECUSACOR.AsString := 'NAO';
            dmRel.rxCabec.Post;
            ///// IMPRIME
            Imprime(dmCad.dsProd, NIL, 'SIM', 'Balanço Inventário', dmCad.cdsConfPASTASERVIDOR.ASString + (BuscaRel(1)), 'SIM','', 1);
         end;
      end;
   end;
end;

end.
