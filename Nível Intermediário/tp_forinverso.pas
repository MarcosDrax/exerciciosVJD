//Execicio 01: tp_forinverso
varid:= '4';
num:= StrToFloat(varid);
result:= FloatToInt(num);

	BeginPage(PAGE1);
	ClearFields(PAGE1,REC1);
		for i:= 0 to result do begin 
			PAGE1.REC1.CAMPO[i+1]:= FormatFloat((result-i),'9999');
		end;		
	WriteRecord(PAGE1,REC1);
	EndPage(PAGE1);



i=0
i+1 = -result-i

0+1 = 4 - 0 = 4
1+1 = 4 - 1 = 3
2+1 = 4 - 2 = 2
3+1 = 4 - 3 = 1
4+1 = 4 - 4 = 0