//exercicio 04 - TP MULTVAR 

Readln(s);
Readln(s); //le a linha atual
impri     := 0;
linhas    := '';
linha_pc  := 0;
fecha     := 0;
nome      := 'NOME';
log       := CreateFileLog('parcelas[nome do arquivo].txt');
	while true do begin
    	
		//if 1 = se nome for igual ao 'nome' E impri for IGUAL '1' então comece
		if (nome <> getstring(s,2,0)) AND (impri = 1) then begin
				WritelnFileLog(log,GetString(multlineItem(linhas,0),2,0)+' - ');
				BeginPage(PAGE1);
				ClearFields(PAGE1,REC1);
				    
					PAGE1.REC1.CAMPO[1]:= GetString(multlineItem(linhas,0),2,0);
					PAGE1.REC1.CAMPO[2]:= GetString(multlineItem(linhas,0),3,0)+' - '+GetString(multlineItem(linhas,0),4,0);
					PAGE1.REC1.CAMPO[3]:= GetString(multlineItem(linhas,1),3,0)+' - '+GetString(multlineItem(linhas,1),4,0);
					PAGE1.REC1.CAMPO[4]:= GetString(multlineItem(linhas,2),3,0)+' - '+GetString(multlineItem(linhas,2),4,0);
					PAGE1.REC1.CAMPO[5]:= GetString(multlineItem(linhas,3),3,0)+' - '+GetString(multlineItem(linhas,3),4,0);
	
				WriteRecord(PAGE1,REC1);
				EndPage(PAGE1);

			markup();
			
			linhas    := '';
			linha_pc  := 0;
			impri     := 0;
				CloseFileLog(log);
		end;		
		//if 2 armazena a linha antecessora
		IF  nome = 'NOME' then begin
			linhas   := MultLineAdd(linhas,S);
			linha_pc := MultLineCount(linhas);
			impri    := 1;
		end;
		IF  nome <> 'NOME' then begin
			linhas   := MultLineAdd(linhas,S);
			linha_pc := MultLineCount(linhas);
			impri    := 1;
		end;		
			nome     := getstring(s,2,0);
		
		
			if fecha = 1 then break;
			if ReadLn(S) = eof then fecha := 1;	End;

Convert(3,false,false,false,0,false);	
