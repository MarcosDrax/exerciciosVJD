//exercicio 09 - TP_ALEAT
letras := 'abcdefghijklmnopqrstuvxz';
saida:='';
saida:= substr(letras,random(36)+1,1);

BeginPage(PAGE1);
ClearFields(PAGE1,REC1);
	
	For vertical := 0 to 9 do begin
		for horizontal := 0 to 30 do begin
			saida:= saida+''+substr(letras,random(36)+1,1);
			PAGE1.REC1.CAMPO[VERTICAL+1]:= saida;
		end;
	saida:= '';	
	end;
	
	//abort(saida);	
WriteRecord(PAGE1,REC1);
EndPage(PAGE1);

