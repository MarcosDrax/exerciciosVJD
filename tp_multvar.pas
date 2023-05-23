//exercicio 04 - TP MULTVAR 
id    := '';
linha := '';
Readln(s);
	while Readln(s) <> eof do begin
linha:= multlineAdd(linha,s);
		if (getstring(s,1,0) = id) or (getstring(s,1,0) <> id) then begin

			BeginPage(PAGE1);
			ClearFields(PAGE1,REC1);
				PAGE1.REC1.CAMPO[1]:= Getstring(MultLineItem(linha,0),2,0);
				PAGE1.REC1.CAMPO[2]:= Getstring(MultLineItem(linha,0),3,0);
				PAGE1.REC1.CAMPO[3]:= Getstring(MultLineItem(linha,0),4,0);
			WriteRecord(PAGE1,REC1);
			EndPage(PAGE1);
			markup();
			linha:= '';
		end;
		id:= getstring(s,1,0);
	End;
Convert(3,false,false,false,0,false);	
