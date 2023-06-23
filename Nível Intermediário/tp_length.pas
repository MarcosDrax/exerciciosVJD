//Execicio 02: tp_length
varid:= 'Topdata Processamento de Dados';
cont := 0;
for h:= 0 to 99 do begin
	if subStr(varid,h+1,1) = '' then begin
		break;
	end else begin
		cont:= cont+1;
	end;
end;
	BeginPage(PAGE1);
	ClearFields(PAGE1,REC1);

			PAGE1.REC1.CAMPO[1]:= FormatFloat((cont),'9999');
		
	WriteRecord(PAGE1,REC1);
	EndPage(PAGE1);
