//Execicio 05: tp_while

num:= 0;

	BeginPage(PAGE1);
	ClearFields(PAGE1,REC1);
		while num < 5 do begin  
			num:=num+1;
			PAGE1.REC1.CAMPO[num+1]:= FormatNumeric((num-1),'0');
		end;		
	WriteRecord(PAGE1,REC1);
	EndPage(PAGE1);
