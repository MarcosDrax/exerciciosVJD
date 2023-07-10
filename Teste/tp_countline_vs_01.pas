//Execicio 01: tp_countline_vs_01
qtd  := 0;
soma := 0;
vlr_1:= '';valor_1:= 0.0;
vlr_2:= '';valor_2:= 0.0;
vlr_3:= '';valor_3:= 0.0;
total:= 0.0;


	While Readln(s) <> EOF do begin
	qtd:=qtd+1;
	end;
	{ abort(FormatFloat((qtd),'9999')); }
	ResetFile;
	
while Readln(s) <> EOF do begin
nome:= getstring(s,1,0);
soma:= soma+1;
taxa_1:='';
taxa_2:='';
taxa_3:='';
for i := 0 to 2 do begin
	if getstring(s,2+(i*1),0) = 'TLF' then begin
			taxas_1 := 'TLF';
	end else begin
			taxas_1 := 'ISS';
	end;
	abort(TAXAS_1); 
	
	if getstring(s,2+(i*1),0) = 'ISS' Then begin
			taxas_2 := 'ISS';
	end else begin
			taxas_2 := 'TLF';
	end;
	
	
	if getstring(s,2+(i*1),0) = 'IPTU' Then begin
			taxas_3 := 'IPTU';
	end else begin
			taxas_3 := 'TLF';
	end;

	
end;

	if Getstring(s,3,0) <> 'R$ 0,00' then begin
		vlr_1:= FormatFloat(getfloat(S,3,0),'99.999,99');
	end else begin
		vlr_1:= 'Valor Zerado do Sistema';
	end;
	valor_1:=StrToFloat(getstring(s,3,0));
	
	if Getstring(s,5,0) <> 'R$ 0,00' then begin
		vlr_2:= FormatFloat(getfloat(S,5,0),'99.999,99')
	end else begin
		vlr_2:= 'Valor Zerado do Sistema';
	end;
	valor_2:=StrToFloat(getstring(s,5,0));

	if Getstring(s,7,0) <> 'R$ 0,00' then begin
		vlr_3:= FormatFloat(getfloat(S,7,0),'99.999,99')
	end else begin
		vlr_3:= 'Valor Zerado do Sistema';
	end;
	valor_3:=StrToFloat(getstring(s,7,0));
	{ abort(FormatFloat((valor_2),'99.999,99')); }
	
	total:= (valor_1+valor_2+valor_3);
	
		BeginPage(PAGE1);
		ClearFields(PAGE1,REC1);
			PAGE1.REC1.CAMPO[1]:= nome+'/Registro - '+FormatFloat((soma),'9')+' / Linhas '+FormatFloat((qtd),'9'); 
			PAGE1.REC1.CAMPO[2]:= taxas_1+' - R$ '+vlr_1;
			PAGE1.REC1.CAMPO[3]:= taxas_2+' - R$ '+vlr_2;
			PAGE1.REC1.CAMPO[4]:= taxas_3+' - R$ '+vlr_3;
			PAGE1.REC1.CAMPO[5]:= 'Total de R$ '+FormatFloat((total),'##.###,##');
		WriteRecord(PAGE1,REC1);
		EndPage(PAGE1);
Markup;
End;
Convert(3,false,false,false,0,false);
