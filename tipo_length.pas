//exercicio 02 - TIPO LENGTH
texto  :='topdata processamento de dados';//variavel em formato string
tamanho:= 0; //variavel inteiro tamanho do caracter


//função para saber a quantidade do tamanho da variavel "BUSCA"
for i:= 0 to 99 do Begin
	if substr(TEXTO,i+1,1) = '' then begin
	break;
	end else begin
	tamanho:=tamanho+1;
	end;
end;	


BeginPage(PAGE1);
ClearFields(PAGE1,REC1);

	PAGE1.REC1.CAMPO[1]:=' TAMANHO : '+FormatFloat(tamanho,'9');

WriteRecord(PAGE1,REC1);
EndPage(PAGE1);
