//exercicio 00 - TIPO FIND

Readln(s); 
While Readln(s) <> EOF do Begin
sub_tot := 0.0;
media:= 3.0;
	BeginPage(PAGE1);
	ClearFields(PAGE1,REC1);
		For i:= 0 to 2 do Begin
			if  sub_tot <> media then Begin 
				sub_tot:= GetFloat(S,3+(i*3),0)+sub_tot;
				PAGE1.REC1.CAMPO[1]:= 'REGISTRO';
				PAGE1.REC1.CAMPO[2]:= getstring(s,1,0);
				PAGE1.REC1.CAMPO[3]:= FormatFloat((sub_tot)/media,'9.999,99');
			end else begin 
				break;
			end;
		end;	



	WriteRecord(PAGE1,REC1);
