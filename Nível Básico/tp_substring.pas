//Execicio 01: tp_substring

name:='Topdata Processamento de Dados';
empresa:= subStr(name,9,13);

BeginPage(PAGE1);
ClearFields(PAGE1,REC1);
    PAGE1.REC1.CAMPO[1]:= empresa;
WriteRecord(PAGE1,REC1);
EndPage(PAGE1);
