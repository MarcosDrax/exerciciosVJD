//Execicio 00: tp_string

empresa:='Topdata Processamento de Dados';

BeginPage(PAGE1);
ClearFields(PAGE1,REC1);
    PAGE1.REC1.CAMPO[1]:= empresa;
WriteRecord(PAGE1,REC1);
EndPage(PAGE1);

