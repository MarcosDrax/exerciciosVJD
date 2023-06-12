//Execicio 02: tp_join

empresa  :='Topdata Processamento de Dados 2021';
empresa_1:= subStr(empresa,1,30);
empresa_2:= subStr(empresa,32,4);

BeginPage(PAGE1);
ClearFields(PAGE1,REC1);
    PAGE1.REC1.CAMPO[1]:= empresa;
	PAGE1.REC1.CAMPO[2]:= empresa_1;
	PAGE1.REC1.CAMPO[3]:= empresa_2;
	PAGE1.REC1.CAMPO[4]:= empresa_1+' '+empresa_2;
WriteRecord(PAGE1,REC1);
EndPage(PAGE1);
