//variaveis declaradas
c:='';
p:='';

While readln(s) <> eof do Begin
    if getstring(s,1,1) = 'C' then begin c:=s;end;	
	if getstring(s,1,1) = 'P' then begin p:=s; 
			BeginPage(PAGE1);
			ClearFields(PAGE1,REC1);

				PAGE1.REC1.CAMPO[1]:= GetString(C,3,0);
				PAGE1.REC1.CAMPO[2]:= Formatnumeric(Getnumeric(p,2,0),'########');
				PAGE1.REC1.CAMPO[3]:= GetString(p,4,0);

			WriteRecord(PAGE1,REC1);
			EndPage(PAGE1);
		c:='';
		p:='';
		Markup();
	End;
end;
Convert(3,false,false,false,0,false);
