//exercicio 09 - TP_ALEAT
letras := 'abcdefghijklmnopqrstuvxz';
saida:='';
saida_reser:='';
cont:= 0;
conti:= 0;

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
				if substr(saida_reser,h-1,1) = 'm' then begin
					cont:= cont+1;
				end;
			end;
			for i:=0 to 99 do Begin 
				if substr(saida_reser,i-1,1) = 'a' then begin
					conti:= conti+1;
				end; 
			end;			
			//abort(formatfloat(cont,'9'));
		end; 			

			{ no if necessito entender  }
			PAGE1.REC1.TESTE_1[1]:= 'posição_1 - '+FormatFloat(conti,'99')+' posição_2 - '+FormatFloat(cont,'99');
	
{  bom preciso que o IF faça uma busca de somente 1 letra, dentro da variavel saida, }
	//abort(formatfloat(cont,'9'));
			
WriteRecord(PAGE1,REC1);
EndPage(PAGE1);
