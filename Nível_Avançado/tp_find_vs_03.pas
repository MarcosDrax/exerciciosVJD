//Execicio 00: tp_find_vs_03
While ReadLn(S) <> EOF do Begin
	nome       := '';
	cont       := 0;
	conta      := 0;
    qtd        := 0;
    media      := 0.0;
	//FOR PARA BUSCAR O NOME
		for g:= 0 to 99 do begin
			if subStr(s,g+1,2) <> 'R$' then begin
				cont:= cont+1;
			end else begin
				break;
			end;
		end;
		nome    := getstring(s,1,cont);
		cont    := 0;

	//FOR PARA BUSCAR O PRIMEIRO VALOR
		FOR h:= 0 to 99 do begin
			if getstring(s,h+1,1) = '.' then break;
			conta:= conta+1;
		end;
		valor:= getstring(s,conta-4,5);
		conta:= conta+1;
		
	//FOR PARA BUSCAR O SEGUNDO VALOR
		FOR i:= conta to 99 do begin
			if getstring(s,i+1,1) = '.' then break;
			conta:= conta+1;
		end;
		valor1:= getstring(s,conta-4,5);
		conta:= conta+1;

	//FOR PARA BUSCAR O TERCEIRO VALOR
		FOR j:= conta to 99 do begin
			if getstring(s,j+1,1) = '.' then break;
			conta:=conta+1;
		end;
		valor2:=getstring(s,conta-4,5);
		conta:=conta+1;
    abort('i:'+formatFloat(i,'9')+' qtd:'+formatFloat(conta,'9')+' campo: '+valor2);		
		
		
		
		{MEDIA:=	FormatFloat(valor,'9.999,99');}	

	BeginPage(PAGE1);
	ClearFields(PAGE1,REC1);
		PAGE1.REC1.CAMPO[1]:= nome;	
		PAGE1.REC1.CAMPO[2]:= 'valor 1 - '+valor;
		PAGE1.REC1.CAMPO[3]:= 'valor 2 - '+valor1;
		PAGE1.REC1.CAMPO[4]:= 'valor 3 - '+valor2;
		PAGE1.REC1.CAMPO[5]:= 'Média  - '+MEDIA;		
    WriteRecord(PAGE1,REC1);
    EndPage(PAGE1);		
	markup;
End;
Convert(3,false,false,false,0,false);
