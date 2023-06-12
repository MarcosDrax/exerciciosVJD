//Execicio 03: tp_if

empresa:='Topdata Processamento de Dados 2021';

if int = 0 then begin 

	BeginPage(PAGE1);
	ClearFields(PAGE1,REC1);

		PAGE1.REC1.CAMPO[1]:= empresa;

	WriteRecord(PAGE1,REC1);
	EndPage(PAGE1);
end;