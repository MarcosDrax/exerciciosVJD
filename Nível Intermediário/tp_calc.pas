//Execicio 05: tp_calc
ReadLn(S);
While ReadLn(S) <> EOF do Begin

	nome   := getstring(s,2,0);
	valor  := 0.0;
	total  := 0.0;
	coluna := 3;
	
	BeginPage(PAGE1);
	ClearFields(PAGE1,REC1);
	for i := 0 to 4 do begin
			valor:= getfloat(s,4+(i*coluna),0) + valor;
			total:= getfloat(s,5+(i*coluna),0) + total;
	end;		
		if valor > total  then begin 
			PAGE1.REC1.CAMPO[1]:= nome;
			PAGE1.REC1.CAMPO[2]:= FormatFloat((valor),'9.999,99');
		end else begin
			PAGE1.REC1.CAMPO[1]:= nome;
			PAGE1.REC1.CAMPO[2]:= 'INVALIDO';
		end;
		
    WriteRecord(PAGE1,REC1);
    EndPage(PAGE1);
    markup;
END;
	Convert(3,false,false,false,0,false);
