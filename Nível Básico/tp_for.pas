//Exercicio 04: tp_for

num:=0;

	BeginPage(PAGE1);
	ClearFields(PAGE1,REC1);
		for i:= num to 4 do begin 

			PAGE1.REC1.CAMPO[i+1]:= FormatNumeric((num+i),'0');
		end;		
	WriteRecord(PAGE1,REC1);
	EndPage(PAGE1);
