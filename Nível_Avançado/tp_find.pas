//Execicio 00: tp_find
While ReadLn(S) <> EOF do Begin
	nome    := '';
	total   := 0.0;
	cont_name:= 0;cont    := 0;cont_1 := 0;cont_2 := 0;
	valor   := '';valor_1 := '';valor_2 := '';
	t_valor := 0.0;t_valor_1 := 0.0;t_valor_2 := 0.0;

for g:= 0 to 99 do begin
	if subStr(s,g+1,2) <> 'R$' then begin
		cont_name:= cont_name+1;
	end else begin
		break;
	end;
end;
	nome:= getstring(s,1,cont_name);

 {abort(nome);}
 
for h:= 0 to 99 do begin
	if subStr(s,h+1,2) = 'R$' then begin
		break;
	end else begin
		cont:= cont+1;
	end;
end;
	valor:= getstring(s,cont+3,6);
	t_valor:= StrToFloat(getstring(s,cont+3,6))/100;
 {abort(valor);}
for i:= 0 to 99 do begin
	if subStr(s,i+1,3) = 'IPU' then begin
		break;
	end else begin
		cont_1:= cont_1+1;
	end;
end;
	valor_1:= getstring(s,cont_1+5,7);
	t_valor_1:= StrToFloat(getstring(s,cont_1+5,7))/100;
	
 {abort(valor_1);}
for j:= 0 to 99 do begin
	if subStr(s,j+1,3) = 'ITU' then begin
		break;
	end else begin
		cont_2:= cont_2+1;
	end;
end;
	valor_2:= getstring(s,cont_2+5,7);
	t_valor_2:= StrToFloat(getstring(s,cont_2+5,7))/100;
 {abort(valor_2);}

total   := (t_valor+t_valor_1+t_valor_2)/3;


	BeginPage(PAGE1);
	ClearFields(PAGE1,REC1);
		PAGE1.REC1.CAMPO[2]:= FormatFloat((total),'9.999,99');	
		PAGE1.REC1.CAMPO[1]:= nome;		
    WriteRecord(PAGE1,REC1);
    EndPage(PAGE1);
    markup;
END;
	Convert(3,false,false,false,0,false);
