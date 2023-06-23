//Execicio 00: tp_stringtoint 
varid:= '4';
num:= StrToFloat(varid);
result:= FloatToInt(num);

	BeginPage(PAGE1);
	ClearFields(PAGE1,REC1);
		for i:= 0 to result do begin 
			PAGE1.REC1.CAMPO[i+1]:= FormatFloat((i),'9999');
		end;		
	WriteRecord(PAGE1,REC1);
	EndPage(PAGE1);
