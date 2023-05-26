//exercicio 04 - TP MULTVAR 
Readln(s);
impri    := 0;
linha    := '';
linha_pc := 0;
fecha    := 0;
nome     := ' ';
	while true do begin

		
		//if 1 = se nome for igual ao 'nome' E impri for IGUAL '1' então comece
		if (nome = getstring(s,2,0)) AND (impri = 1) then begin
			BeginPage(PAGE1);
			ClearFields(PAGE1,REC1);

				PAGE1.REC1.CAMPO[1]:= Getstring(linha,2,0);
				//PAGE1.REC1.CAMPO[2]:=  GetString(multlineItem(linha),3,0);
				
			WriteRecord(PAGE1,REC1);
			EndPage(PAGE1);
			markup();
			

			linha    := '';
			linha_pc := 0;
			impri    := 0;
		end;
		
		//if 2 se nome for DIFERENTE de 'nome' então comece
		IF  nome <> GETSTRING(linha,2,0) then begin
			linha := MultLineAdd(linha,S);
			linha_pc:= MultLineCount(linha);
			impri := 1;
		end;
		
			nome     := getstring(s,2,0);		
		
			if fecha = 1 then break;
			if ReadLn(S) = eof then fecha := 1;
	End;
Convert(3,false,false,false,0,false);	
