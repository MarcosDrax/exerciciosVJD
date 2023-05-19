//exercicio 03 - TIPO FIBONACCI
n:=0;
varstr:= '0';//variavel em formato string
varintg:= StrToFloat(varstr);
varnum:= NumerictoInt(varintg);

BeginPage(PAGE1);
ClearFields(PAGE1,REC1);
For j:= 0 to 5 Do Begin
n:=n+2;

	PAGE1.REC1.CAMPO[j]:= FormatFloat((j+VARNUM)+n,'9999');
End;
WriteRecord(PAGE1,REC1);
EndPage(PAGE1);
