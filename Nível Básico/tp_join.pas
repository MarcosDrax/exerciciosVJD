//Execicio 02: tp_join

empresa  :='Topdata Processamento de Dados 2021';
empresa_1:='Topdata Processamento de Dados 2021';
empresa_2:='Topdata Processamento de Dados 2021';

BeginPage(PAGE1);
ClearFields(PAGE1,REC1);
    PAGE1.REC1.CAMPO[1]:= subStr(empresa,1,35);
	PAGE1.REC1.CAMPO[2]:= subStr(empresa_1,1,30);
	PAGE1.REC1.CAMPO[3]:= subStr(empresa_2,32,4);
	PAGE1.REC1.CAMPO[4]:= subStr(empresa_1,1,30)+' '+subStr(empresa_2,32,4);
WriteRecord(PAGE1,REC1);
EndPage(PAGE1);
