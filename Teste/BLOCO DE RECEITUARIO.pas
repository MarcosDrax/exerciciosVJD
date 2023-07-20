//BLOCO DE RECEITA
registro  := 2;
bloco     := 0;
cont      := 1;

for i:= INI to FIM do begin
bloco := bloco + 1;

	BeginPage(PAGE1);
	ClearFields(PAGE1,REC1);

		PAGE1.REC1.NUM := FormatNumeric(i,'00.000.000');
		PAGE1.REC1.MSG := FormatFloat((QUANT),'9')+' BLC '+FormatFloat(QUANT,'9')+'X1 - '+FormatNumeric(INI,'00.000.000')+' a '+FormatNumeric(FIM,'00.000.000')+' '+FormatDate(SYS_DATE,'dd/MM/a')+'/'+FormatDate(SYS_DATE,'d/m/AAAA')+' - TOPDATA PROCESSAMENTO DE DADOS Ltda - EPP CNPJ 45.876.059/0001-86 RUA AUGUSTA, 530 CONSOLAÇÃO - SÃO PAULO/SP CEP:01304-000'; 

	WriteRecord(PAGE1,REC1);
	EndPage(PAGE1);
	
		if bloco = QUANT then begin
			
				BeginPage(SEPARADOR);
				ClearFields(SEPARADOR,REC1);			
				
					  SEPARADOR.REC1.AVISO:= Formatfloat((cont),'9');
				
				WriteRecord(SEPARADOR,REC1);
				EndPage(SEPARADOR);
				cont  := cont + 1;
		//abort('Quantidade: '+formatFloat(CONT,'9'));		
		end;
       
	if bloco = QUANT then 
	bloco := 0;//variavel que a zera a informação 
	markup;
end;
Convert(registro,true,false,false,QUANT*registro,false);
