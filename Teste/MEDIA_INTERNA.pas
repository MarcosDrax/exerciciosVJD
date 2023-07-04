//teste_01
While Readln(s) <> eof  do begin
teste  :='teste   $10,34teste2   $8,40teste3     R$800,99';
cont   := 0;
total  :=0.0;
valor  :=0.0;
valor_1:=0.0;
valor_2:=0.0;

	for g:= 0 to 99 do begin
		if substr(teste,g+1,1) = ',' then break;
		cont:= cont+1;
	end;
	cont:=cont+1;
	valor:= getfloat(teste,cont-2,5);
	//abort(valor);
	For h:= cont to 99 do begin
		if substr(teste,cont+1,1) = ',' then break;
		cont:= cont+1;
	end;
	cont:=cont+1;
	valor_1:= getfloat(teste,cont-1,4);
	//abort(valor_1);
	For i:= cont to 99 do begin
		if substr(teste,cont+1,1) = ',' then break;
		cont:= cont+1;
	end;
	cont:=cont+1;
	valor_2:= getfloat(teste,cont-3,6);
	//abort(valor_2);
total:= (valor+valor_1+valor_2);
media_vlr:=total/media;
	if total < media_vlr then begin
		mensagem:=  'O valor Total e maior que a taxa.';
		end else begin
		mensagem:=  'O valor Total e menor que a taxa.';
	end;	
 BeginPage(PAGE1);
 ClearFields(PAGE1,REC1);
   PAGE1.REC1.CAMPO[1]:=  formatfloat(valor,'999,99');
   PAGE1.REC1.CAMPO[2]:=  formatfloat(valor_1,'999,99');
   PAGE1.REC1.CAMPO[3]:=  formatfloat(valor_2,'999,99');
   PAGE1.REC1.CAMPO[4]:=  'Taxa - R$'+formatfloat(media_vlr,'999,99');
	PAGE1.REC1.CAMPO[5]:=  mensagem;
 WriteRecord(PAGE1,REC1);
 EndPage(PAGE1);
end;
