//exercicio 05: tp_registr

tabuada2 := 2;
tabuada3 := 3;
tabuada5 := 5;
for i:=1 to 4 do begin
	BeginPage(PAGE1);
	ClearFields(PAGE1,REC1);
	ClearFields(PAGE1,REC2);
	ClearFields(PAGE1,REC3);
		for j:= 1 to 5 do begin
		PAGE1.REC1.CAMPO[j]:= 'valor tabuada 2 = '+Formatfloat(((J+(5*(i-1)))*tabuada2),'9');
		PAGE1.REC2.CAMPO[j]:= 'valor tabuada 3 = '+Formatfloat(((J+(5*(i-1)))*tabuada3),'9');
		PAGE1.REC3.CAMPO[j]:= 'valor tabuada 5 = '+Formatfloat(((J+(5*(i-1)))*tabuada5),'9');
		end;
	WriteRecord(PAGE1,REC1);
	WriteRecord(PAGE1,REC2);
	WriteRecord(PAGE1,REC3);
	EndPage(PAGE1);
end;
