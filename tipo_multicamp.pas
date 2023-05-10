//exercicio 04 - TIPO MULTICAMP

Readln(s);
While Readln(s) <> EOF do Begin
sub_total := 0.0;
	BeginPage(PAGE1);
	ClearFields(PAGE1,REC1);

	For i:= 0 to 4 Do Begin
	    sub_total:= GetFloat(S,4+(i*3),0)+sub_total;	
		PAGE1.REC1.CAMPO[1]:= 'REGISTRO'+getstring(s,1,0);
		PAGE1.REC1.CAMPO[2]:= getstring(s,2,0);
		PAGE1.REC1.CAMPO[3]:= FormatFloat((sub_total),'9.999,99');
	End;		
	WriteRecord(PAGE1,REC1);
	EndPage(PAGE1);
Markup();
end;
Convert(3,true,false,false,0,false);

