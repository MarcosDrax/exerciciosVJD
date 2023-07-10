//Exercicio 02: tp_multiline
id := '';
linha:='';

Readln(s);// função para leitura de arquivo e pular para a proxima linha
While Readln(s) <> EOF do begin
linha := MultlineAdd(linha,s);// representa a linha inteira do arquivo
	
	if getstring (s,3,0) = id then begin
		
		BeginPage(PAGE1);
		ClearFields(PAGE1,REC1);
		PAGE1.REC1.CAMPO[1]:= getstring(MultLineitem(linha,0),3,0); 
		PAGE1.REC1.CAMPO[2]:= getstring(MultLineitem(linha,1),2,0); 	 
		PAGE1.REC1.CAMPO[3]:= getstring(MultLineitem(linha,1),4,0); 	
		WriteRecord(PAGE1,REC1);
		EndPage(PAGE1);
		
		Markup();
		//linha:='';
	end;
	id:= getstring(s,3,0);

End;
Convert(3,false,false,false,0,false);

//--------------------------------------------------------------------------------------
