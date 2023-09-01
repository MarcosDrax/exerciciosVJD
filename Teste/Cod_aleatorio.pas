// +-----------------------------------+
// | Desenvolvedor: MARCOS - versão_02 |
// | Atualização:  01/09/2023- 12:12pm |
// | Programa:exercicio 09 - TP_ALEAT  |
// +-----------------------------------+
letras     := 'abcdefghijklmnopqrstuvxz';
saida      := '';
saida_reser:= '';
palavra    := '';
horizontal := 1;
vertical   := 0;
cont       := 0;
qtd_busca  := 0;
BeginPage(PAGE1);
ClearFields(PAGE1,REC1);

	For verti := 0 to 9 do begin
	{ looping vertical com a quantidade de 10 loop's,   }
		for horizon := 0 to 29 do begin
		{ looping horizontal com a quantidade de 30 loop's, este for esta gerando as letras aleatorias de cada coluna vertical   }
			saida:= saida+''+substr(letras,random(24)+1,1);
			PAGE1.REC1.CAMPO[verti+1]:= saida;			
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

				If qtd_busca = 0 then begin
					if substr(saida_reser,h+1,1) = BUSCA then begin
						qtd_busca := 1;
						break
					end else begin
						horizontal:=horizontal+1;
					end;
				END;	
			end;				
	end;
			//abort(FormatFloat(horizontal,'999'));
			{ no if necessito entender  }
			PAGE1.REC1.TESTE_1[1]:= 'Quantd - '+FormatFloat(cont,'99')+' / Letra - '+palavra+' / Posição horizontal - '+FormatFloat(horizontal,'99');
	
{  bom preciso que o IF faça uma busca de somente 1 letra, dentro da variavel saida, }
	//abort(formatfloat(cont,'9'));
			
WriteRecord(PAGE1,REC1);
EndPage(PAGE1);
