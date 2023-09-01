// +-----------------------------------+
// | Desenvolvedor: MARCOS - versão_02 |
// | Atualização:  01/09/2023- 12:12pm |
// | Programa:exercicio 09 - TP_ALEAT  |
// +-----------------------------------+
letras     := 'abcdefghijklmnopqrstuvxz';
saida      := '';
saida_reser:= '';
palavra    := '';
inicio     := 0;
cont       := 0;
BeginPage(PAGE1);
ClearFields(PAGE1,REC1);

	For vertical := 0 to 9 do begin
	{ looping vertical com a quantidade de 10 loop's,   }
		for horizontal := 0 to 29 do begin
		{ looping horizontal com a quantidade de 30 loop's, este for esta gerando as letras aleatorias de cada coluna vertical   }
			saida:= saida+''+substr(letras,random(24)+1,1);
			PAGE1.REC1.CAMPO[VERTICAL+1]:= saida;			
			saida_reser:= saida;
	 
		end;
		//abort(saida_reser); 
			{ preciso de uma variavel que reserve a saida antes de fazer o comparativo do IF }
			saida:='';
   
		//função criada para contagem do tamanho da variavel
			for h:=0 to 99 do Begin 
				if substr(saida_reser,h+1,1) = BUSCA then begin
					cont:= cont+1;
					palavra := substr(saida_reser,h+1,1);
				end;
	
			end;				
			{for h2:=0 to 99 do Begin 			
				if substr(saida_reser,h2+1,cont) = busca then begin
				break
				end else begin
				inicio:=inicio+1;
				end;			
			end;}
			//abort(palavra);			
		end; 			

			{ no if necessito entender  }
			PAGE1.REC1.TESTE_1[1]:= 'Quantd - '+FormatFloat(cont,'99')+' Letra - '+palavra;
	
{  bom preciso que o IF faça uma busca de somente 1 letra, dentro da variavel saida, }
	//abort(formatfloat(cont,'9'));
			
WriteRecord(PAGE1,REC1);
EndPage(PAGE1);
