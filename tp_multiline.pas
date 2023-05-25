//exercicio 02 - TP MULTILINE (NOVO)

C:='';
P:='';
soma := 0;
While Readln(s) <> EOF do Begin
soma:= soma+1;
		if getstring(s,1,1) = 'C' then Begin
		C:= S;
		end;
		if getstring(s,1,1) = 'P' then Begin
		P:= MultLineAdd(P,S);
		
		BeginPage(PAGE1);
		ClearFields(PAGE1,REC1);
			if getstring(P,1,1) <> '' then begin
			PAGE1.REC1.CAMPO[1]:= Getstring(MultLineItem(C,0),3,0);
			PAGE1.REC1.CAMPO[2]:= FormatNumeric(Getnumeric(MultLineItem(P,0),2,0),'#####');
			PAGE1.REC1.CAMPO[3]:= Getstring(MultLineItem(P,0),4,0);
			end else begin	
			break;
			end;	
		WriteRecord(PAGE1,REC1);
		EndPage(PAGE1);
    	C := '';
    	P := '';
    	Markup;
  	end;
End;
Convert(3,true,false,false,0,false);
