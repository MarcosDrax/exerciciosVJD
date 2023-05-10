//exercicio 01 - TIPO STRING 

BeginPage(PAGE1);
ClearFields(PAGE1,REC1);
For i:= 0 to 5 do Begin
	PAGE1.REC1.CAMPO[i]:= FormatFloat(5-i,'9999');
End;
WriteRecord(PAGE1,REC1);
EndPage(PAGE1);