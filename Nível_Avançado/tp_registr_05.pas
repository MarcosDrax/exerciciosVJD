//exercicio 05: tp_registr
MULTI2 := 2;
MULTI3 := 3;
MULTI5 := 5;
contador_1:= 0;
contador_2:= 0;
contador_3:= 0;

//page_1
	BeginPage(PAGE1);
	ClearFields(PAGE1,REC1);
		while contador_1 < 6 do begin
			if contador_1 > 30 then begin		
				break;
			end else begin
				PAGE1.REC1.CAMPO[contador_1+1]:= FormatFloat((contador_1 * MULTI2),'9');
			end;
			contador_1:= contador_1+1;
		end;		
	WriteRecord(PAGE1,REC1);

	
	ClearFields(PAGE1,REC2);
		while contador_2 < 6 do begin
			if contador_2 > 30 then begin		
				break;
			end else begin
				PAGE1.REC2.CAMPO[contador_2+1]:= FormatFloat((contador_2 * MULTI3),'9');
			end;
			contador_2:= contador_2+1;
		end;		
	WriteRecord(PAGE1,REC2);
	

	ClearFields(PAGE1,REC3);
		while contador_3 < 6 do begin
			if contador_3 > 30 then begin		
				break;
			end else begin
				PAGE1.REC3.CAMPO[contador_3+1]:= FormatFloat((contador_3 * MULTI5),'9');
			end;
			contador_3:= contador_3+1;
		end;		
	WriteRecord(PAGE1,REC3);
	EndPage(PAGE1);
markup;

//page2
	BeginPage(PAGE1);
	ClearFields(PAGE1,REC1);
		while contador_1 < 6 do begin
			if contador_1 > 30 then begin		
				break;
			end else begin
				PAGE1.REC1.CAMPO[contador_1+1]:= FormatFloat((contador_1 * MULTI2),'9');
			end;
			contador_1:= contador_1+1;
		end;		
	WriteRecord(PAGE1,REC1);

	
	ClearFields(PAGE1,REC2);
		while contador_2 < 6 do begin
			if contador_2 > 30 then begin		
				break;
			end else begin
				PAGE1.REC2.CAMPO[contador_2+1]:= FormatFloat((contador_2 * MULTI3),'9');
			end;
			contador_2:= contador_2+1;
		end;		
	WriteRecord(PAGE1,REC2);
	

	ClearFields(PAGE1,REC3);
		while contador_3 < 6 do begin
			if contador_3 > 30 then begin		
				break;
			end else begin
				PAGE1.REC3.CAMPO[contador_3+1]:= FormatFloat((contador_3 * MULTI5),'9');
			end;
			contador_3:= contador_3+1;
		end;		
	WriteRecord(PAGE1,REC3);
	EndPage(PAGE1);
markup;	
