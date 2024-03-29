//BLOCO DE RECEITA

registro  := 2;
bloco     := 0;
cont      := 1;

{FOR recebe inicial = INI e final = FIM }
For i:= INI to FIM do begin 
bloco := bloco + 1; 
{bloco recebe valor de cada looping e depois zera}

	BeginPage(PAGE1);
	ClearFields(PAGE1,REC1);

		PAGE1.REC1.NUM := FormatNumeric(i,'00.000.000');
		PAGE1.REC1.MSG := FormatFloat((QUANT),'9')+' BLC '+FormatFloat(QUANT,'9')+'X1 - '+FormatNumeric(INI,'00.000.000')+' a '+FormatNumeric(FIM,'00.000.000')+' '+FormatDate(SYS_DATE,'dd/MM/a')+'/'+FormatDate(SYS_DATE,'d/m/AAAA')+' - TOPDATA PROCESSAMENTO DE DADOS Ltda - EPP CNPJ 45.876.059/0001-86 RUA AUGUSTA, 530 CONSOLAÇÃO - SÃO PAULO/SP CEP:01304-000'; 

	WriteRecord(PAGE1,REC1);
	EndPage(PAGE1);
 
		{'IF' compara com quantidade digitada pelo usuario, estando de acordo o programa coloca a pagina separador e mais a informação 'cont' que armazena a quantidade de blocos assinm numerando os blocos}
		
  		If bloco = QUANT then begin
			
				BeginPage(SEPARADOR);
				ClearFields(SEPARADOR,REC1);			
			
					  SEPARADOR.REC1.AVISO:= Formatfloat((cont),'9'); {o bloco ja inicia com o numero 1 pois ja foi declarado na variavel este de iniciar o "for"}
			
				WriteRecord(SEPARADOR,REC1);
				EndPage(SEPARADOR);
				cont  := cont + 1; 
    			{após o primeiro loop a variavel 'cont := 1' recebe 'cont +1' tornando '2' ..., e assim sucessivamente até terminar a contagem do 'for' e gerando a numeração dos blocos}
				{abort('Quantidade: '+formatFloat(CONT,'9'));}		

		bloco := 0; {variavel que a zera a informação}
		end;
   	markup;
end;
Convert(registro,true,false,false,QUANT*registro,false);

{funcao(argumento1,argumento2,argumentoN...)
argumento com valor = paramentro}
