//exercicio 03 - TIPO MULTIP
avs:=0;
INTG:=4; 
BeginPage(PAGE1);
ClearFields(PAGE1,REC1);    

While avs < INTG DO BEGIN
	if avs < 8 then begin
	avs:= avs+1;
		PAGE1.REC1.CAMPO[avs+1]:= FormatFloat((avs)*2,'9999'); 
	end;
END; 
WriteRecord(PAGE1,REC1);
EndPage(PAGE1); 
markup();
