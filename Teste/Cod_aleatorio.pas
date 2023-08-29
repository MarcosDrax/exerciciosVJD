//exercicio 09 - TP_ALEAT
letras := 'abcdefghijklmnopqrstuvxz';
saida:='';
resposta:='';
//saida:= substr(letras,random(24)+1,1);

BeginPage(PAGE1);
ClearFields(PAGE1,REC1);
	
	For vertical := 0 to 9 do begin

		for horizontal := 0 to 29 do begin
			saida:= saida+' '+substr(letras,random(24)+1,1);
			PAGE1.REC1.CAMPO[VERTICAL+1]:= saida;
		end;
	saida:='';	
	end;
	if InListStr(saida,'M','A','R','C','O','S') Then Begin
		PAGE1.REC1.CAMPO[11]:= resposta();
	End;
	//abort(saida);	
WriteRecord(PAGE1,REC1);
EndPage(PAGE1);


