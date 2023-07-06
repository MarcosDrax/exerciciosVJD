//Execicio 01: tp_countline_vs_01
qtd  := 0;
soma := 0;
vlr_1:= '';valor_1:= 0.0;
vlr_2:= '';valor_2:= 0.0;
vlr_3:= '';valor_3:= 0.0;
total:= 0.0;
soma:= soma+1;

	While Readln(s) <> EOF do begin
	qtd:=qtd+1;
	end;
	{ abort(FormatFloat((qtd),'9999')); }
	ResetFile;
	
while Readln(s) <> EOF do begin
nome:= getstring(s,1,0);

	if Getstring(s,2,0) <> 'R$ 0,00' then begin
		vlr_1:= FormatFloat(getfloat(S,2,0),'99.999,99');
	end else begin
		vlr_1:= 'Valor Zerado do Sistema';
	end;
	valor_1:=StrToFloat(getstring(s,2,0));
	
	if Getstring(s,3,0) <> 'R$ 0,00' then begin
		vlr_2:= FormatFloat(getfloat(S,3,0),'99.999,99')
	end else begin
		vlr_2:= 'Valor Zerado do Sistema';
	end;
	valor_2:=StrToFloat(getstring(s,3,0));

	if Getstring(s,4,0) <> 'R$ 0,00' then begin
		vlr_3:= FormatFloat(getfloat(S,4,0),'99.999,99')
	end else begin
		vlr_3:= 'Valor Zerado do Sistema';
	end;
	valor_3:=StrToFloat(getstring(s,4,0));
	{ abort(FormatFloat((valor_2),'99.999,99')); }
	
	total:= (valor_1+valor_2+valor_3);
	
		BeginPage(PAGE1);
		ClearFields(PAGE1,REC1);
			PAGE1.REC1.CAMPO[1]:= nome+'/Registro - '+FormatFloat((soma),'9')+' / Linhas '+FormatFloat((qtd),'9'); 
			PAGE1.REC1.CAMPO[2]:= 'R$ '+vlr_1;
			PAGE1.REC1.CAMPO[3]:= 'R$ '+vlr_2;
			PAGE1.REC1.CAMPO[4]:= 'R$ '+vlr_3;
			PAGE1.REC1.CAMPO[5]:= 'Total de R$ '+FormatFloat((total),'##.###,##');
		WriteRecord(PAGE1,REC1);
		EndPage(PAGE1);
Markup;
End;
Convert(3,false,false,false,0,false);
