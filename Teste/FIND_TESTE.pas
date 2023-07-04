//teste_00
While Readln(s) <> eof  do begin
nome:= 'topdata processamento de dados 2023';
j   := 0;

for h:= 0 to 99 do begin
 if substr(nome,h+1,1) = 'a' then begin
 j:= j+1;
 end;
end;

 BeginPage(PAGE1);
 ClearFields(PAGE1,REC1);

   PAGE1.REC1.CAMPO[1]:=  formatfloat(j,'9');

 WriteRecord(PAGE1,REC1);
 EndPage(PAGE1);
end;


