//exercicio 05: tp_registr
MULTI2 := 2;
MULTI3 := 3;
MULTI5 := 5;
contador:= 0;
	BeginPage(PAGE1);
	ClearFields(PAGE1,REC1);
		while contador < 5 do begin
			if contador > 30 then begin		
				break;
			end else begin
				PAGE1.REC1.CAMPO[contador+1]:= FormatFloat((contador * MULTI2),'9');
			end;
			contador:= contador+1;
		end;		
	WriteRecord(PAGE1,REC1);


	ClearFields(PAGE1,REC2);
		while contador < 5 do begin
			if contador > 30 then begin		
				break;
			end else begin
				PAGE1.REC2.CAMPO[contador+1]:= FormatFloat((contador * MULTI3),'9');
			end;
			contador:= contador+1;
		end;		
	WriteRecord(PAGE1,REC2);

	ClearFields(PAGE1,REC3);
		while contador < 5 do begin
			if contador > 30 then begin		
				break;
			end else begin
				PAGE1.REC3.CAMPO[contador+1]:= FormatFloat((contador * MULTI5),'9');
			end;
			contador:= contador+1;
		end;		
	WriteRecord(PAGE1,REC3);
	EndPage(PAGE1);
markup;
