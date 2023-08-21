//refeito tp_registr_COM RELATORIO DE SAÍDA

//variaveis
valor_1:= 2;
valor_2:= 3;
valor_3:= 5;
V_AUX  :='';
relatorio:= CreateFilelog('multiplos.txt');

vlr    := 0;
vlr2   := 0;
valorresult:='';
valorresul:='';


//looping de repetição das páginas
For h:= 1 to 3 do begin
	BeginPage(PAGE1);
	Clearfields(PAGE1,rec1);
	Clearfields(PAGE1,rec2);
	Clearfields(PAGE1,rec3);
		{ looping para calcular os valores multiplos especificados nas variaveis acima}
		
		For i := 1 to 5 do begin
		PAGE1.REC1.CAMPO[i]:= FormatFloat(((i+(5*(h-1)))*valor_1),'9');
		PAGE1.REC2.CAMPO[i]:= FormatFloat(((i+(5*(h-1)))*valor_2),'9');
		PAGE1.REC3.CAMPO[i]:= FormatFloat(((i+(5*(h-1)))*valor_3),'9'); 
		end;

V_AUX:= FormatFloat(PAGE1.REC1.CAMPO,'9')+' - ';
V_AUX:= V_AUX+FormatFloat(PAGE1.REC2.CAMPO,'9')+' - ';
V_AUX:= V_AUX+FormatFloat(PAGE1.REC3.CAMPO,'9');	

	{vlr        := FloatToInt(valor_1,);
	vlr2       := FloatToInt(valor_2,);
	valorresult:= IntToStr(vlr);
	valorresult:= IntToStr(vlr2);}
	
	WritelnFileLog(relatorio,V_AUX);
	
	WriteRecord(PAGE1,REC1);
	WriteRecord(PAGE1,REC2);
	WriteRecord(PAGE1,REC3);
	EndPage(PAGE1);
	CloseFileLog(relatorio);
End;	
