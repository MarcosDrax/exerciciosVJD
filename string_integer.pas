//exercicio 00 - TIPO STRING TO INTEGER

varstr:= '5';//variavel em formato string
varintg:= StrToFloat(varstr);
varnum:= NumerictoInt(varintg);

BeginPage(PAGE1);
ClearFields(PAGE1,REC1);
For j:= 0 to varnum Do Begin
	PAGE1.REC1.CAMPO[j]:= FormatFloat(j-1,'9999');
End;
WriteRecord(PAGE1,REC1);
EndPage(PAGE1);
