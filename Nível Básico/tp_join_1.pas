//Execicio 02: tp_join (versão com variavel externa - 'BUSCA')//

empresa  := 'Topdata Processamento de Dados                                      2022';
cont     := 0;
inicio   := 1;
busca    := BUSCA;
name     := '';
for h:= 0 to 99 do begin
	if subStr(busca,h+1,1) = '' then begin
	break;
	end else begin
	cont:= cont+1;
	end;
end;	

for i:= 0 to 999 do begin
	if substr(empresa,i+1,cont) = busca then begin
		break;
	end else begin
		inicio:=inicio+1;
	end;
end;

name:= substr(empresa,inicio,cont);

BeginPage(PAGE1);
ClearFields(PAGE1,REC1);
    PAGE1.REC1.CAMPO[1]:= name;
	//PAGE1.REC1.CAMPO[2]:= empresa_1;
	//PAGE1.REC1.CAMPO[3]:= empresa_2;
	//PAGE1.REC1.CAMPO[4]:= empresa_1+' '+empresa_2;
WriteRecord(PAGE1,REC1);
EndPage(PAGE1);


//___________________________________________________________________________________________________

//Execicio 02: tp_join(versão dois sem variavel externa - 'BUSCA')

empresa  := 'Topdata Processamento de Dados                                      2023';
cont     := 0;
inicio   := 1;
busca    := FormatDate(SYS_DATE,'d/m/AAAA');
name     := '';
for h:= 0 to 99 do begin
	if subStr(busca,h+1,1) = '' then begin
	break;
	end else begin
	cont:= cont+1;
	end;
end;	

for i:= 0 to 999 do begin
	if substr(empresa,i+1,cont) = busca then begin
		break;
	end else begin
		inicio:=inicio+1;
	end;
end;

name:= substr(empresa,inicio,cont);

BeginPage(PAGE1);
ClearFields(PAGE1,REC1);
    PAGE1.REC1.CAMPO[1]:= name;
	//PAGE1.REC1.CAMPO[2]:= empresa_1;
	//PAGE1.REC1.CAMPO[3]:= empresa_2;
	//PAGE1.REC1.CAMPO[4]:= empresa_1+' '+empresa_2;
WriteRecord(PAGE1,REC1);
EndPage(PAGE1);

//____________________________________________________________________________________________________

//Execicio 02:  tp_join(versão trêS sem variavel externa - ADICIONADO A VARIAVEL GetNumero)

empresa  := 'Topdata Processamento de Dados                                      2021';
cont     := 0;
inicio   := 1;
busca    := GetNumero(empresa,4); {QUE EXTRAI SOMENTE OS NUMEROS DENTRO DA VARIAVEL EMPRESA}
name     := '';
for h:= 0 to 99 do begin
	if subStr(busca,h+1,1) = '' then begin
	break;
	end else begin
	cont:= cont+1;
	end;
end;	

for i:= 0 to 999 do begin
	if substr(empresa,i+1,cont) = busca then begin
		break;
	end else begin
		inicio:=inicio+1;
	end;
end;

name:= substr(empresa,inicio,cont);

BeginPage(PAGE1);
ClearFields(PAGE1,REC1);
    PAGE1.REC1.CAMPO[1]:= name;
	//PAGE1.REC1.CAMPO[2]:= empresa_1;
	//PAGE1.REC1.CAMPO[3]:= empresa_2;
	//PAGE1.REC1.CAMPO[4]:= empresa_1+' '+empresa_2;
WriteRecord(PAGE1,REC1);
EndPage(PAGE1);
