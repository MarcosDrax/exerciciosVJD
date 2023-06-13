//Execicio 02: tp_join

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



