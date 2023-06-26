//Execicio 04: tp_multicampo
ReadLn(S);
While ReadLn(S) <> EOF do Begin

	id     := getstring(s,1,0);
	nome   := getstring(s,2,0);
	taxa_1 := getstring(s,3,0);
	valor_1:= getstring(s,4,0);
	total  := 0.0;
	colun  := 3;
	
	BeginPage(PAGE1);
	ClearFields(PAGE1,REC1);
	for i := 0 to 3 do begin
		total:= getfloat(s,4+(i*colun),0) + total;
		PAGE1.REC1.CAMPO[1]:= nome;
		PAGE1.REC1.CAMPO[2]:= FormatFloat((total),'9.999,99');
	end;		
    WriteRecord(PAGE1,REC1);
    EndPage(PAGE1);
    markup;
End;
	Convert(3,false,false,false,0,false);


