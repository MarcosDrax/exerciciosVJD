//Execicio 00: tp_find_vs_01
While ReadLn(S) <> EOF do Begin
	nome    := '';
	total   := 0.0;
	total_media:= 0.0;
	cont    := 0;
	t_valor := 0.0;
	t_valor_1 := 0.0;
	t_valor_2 := 0.0;
	t_valor_3 := 0.0;
	t_valor_4 := 0.0;

	for g:= 0 to 99 do begin
		if subStr(s,g+1,2) <> 'R$' then begin
			cont:= cont+1;
		end else begin
			break;
		end;
	end;
	nome:= getstring(s,1,cont);
	cont    := 0;
 
	for h:= 0 to 99 do begin
		if subStr(s,h+1,2) = 'R$' then begin
			break;
		end else begin
			cont:= cont+1;
		end;
	end;
	t_valor:= StrToFloat(getstring(s,cont+3,6))/100;
	cont    := 0;
	
	for i:= 0 to 99 do begin
		if subStr(s,i+1,3) = 'IPU' then begin
			break;
		end else begin
			cont:= cont+1;
		end;
	end;
	t_valor_1:= StrToFloat(getstring(s,cont+5,8))/100;
	cont    := 0;

	for j:= 0 to 99 do begin
		if subStr(s,j+1,3) = 'ITU' then begin
			break;
		end else begin
			cont:= cont+1;
		end;
	end;
	t_valor_2:= StrToFloat(getstring(s,cont+5,7))/100;
	cont    := 0;
		
		for k:= 0 to 99 do begin
		if subStr(s,k+1,3) = 'TX1' then begin
			break;
		end else begin
			cont:= cont+1;
		end;
	end;
	t_valor_3:= StrToFloat(getstring(s,cont+5,7))/100;
	cont    := 0;
	
		for l:= 0 to 99 do begin
		if subStr(s,l+1,3) = 'ESG' then begin
			break;
		end else begin
			cont:= cont+1;
		end;
	end;
	t_valor_4:= StrToFloat(getstring(s,cont+5,7))/100;
	cont    := 0;

	total   := (t_valor+t_valor_1+t_valor_2+t_valor_3+t_valor_4);
	total_media   := (total)/3;

	BeginPage(PAGE1);
	ClearFields(PAGE1,REC1);
		PAGE1.REC1.CAMPO[1]:= nome;	
		PAGE1.REC1.CAMPO[2]:= 'Total R$ '+FormatFloat((total),'9.999,99');	
		PAGE1.REC1.CAMPO[3]:= 'Média R$ '+FormatFloat((total_media),'9.999,99');		
    WriteRecord(PAGE1,REC1);
    EndPage(PAGE1);
    markup;
END;
Convert(3,false,false,false,0,false);
