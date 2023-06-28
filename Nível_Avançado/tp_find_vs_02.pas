//Execicio 00: tp_find_vs_02
While ReadLn(S) <> EOF do Begin
	nome       := '';
	total      := 0.0;
	total_media:= 0.0;
	cont       := 0;
	valor1    := 0.0;
	valor2    := 0.0;
	valor3    := 0.0;
	conta      := 0;
//conta = 0 (correto) 	
	for g:= 0 to 99 do begin
		if subStr(s,g+1,2) <> 'R$' then begin
			cont:= cont+1;
		end else begin
			break;
		end;
	end;
	nome:= getstring(s,1,cont);
	cont    := 0;
	
// conta = 5 (correto)
	for h:= 0 to 99 do begin
		if subStr(s,h+1,2) =  'R$' then break;
		conta:= conta+1;
	end;
	valor1    := getfloat(s,conta+3,5)/1;
	
// conta = 17	
	for i:= conta to 99 do begin
		if subStr(s,i+2,2) = 'R$' then break;
			conta:= conta+1;
	end;
	valor2    := getfloat(s,conta+3,6)/1;
	
//conta = 28		
	for i:= conta to 99 do begin
		if subStr(s,i+2,2) = 'R$' then break;
			conta:= conta+1;
	end;
	valor3    := getfloat(s,conta+14,6)/1;
	
	

t_valor:= StrToFloat(getstring(s,conta+3,6))/100;
total_media:= (valor1+valor2+valor3)/3;
	
	BeginPage(PAGE1);
	ClearFields(PAGE1,REC1);
		PAGE1.REC1.CAMPO[1]:= nome;
		PAGE1.REC1.CAMPO[2]:= 'Média R$ '+FormatFloat((valor1),'9.999,99');
		PAGE1.REC1.CAMPO[3]:= 'Média R$ '+FormatFloat((valor2),'9.999,99');
		PAGE1.REC1.CAMPO[4]:= 'Média R$ '+FormatFloat((valor3),'9.999,99');
		PAGE1.REC1.CAMPO[5]:= 'Média R$ '+FormatFloat((total_media),'9.999,99');
    WriteRecord(PAGE1,REC1);
    EndPage(PAGE1);
    markup;
END;
Convert(3,false,false,false,0,false);
