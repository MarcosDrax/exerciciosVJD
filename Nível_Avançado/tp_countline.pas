//Execicio 01: tp_countline
soma:=0;
qtd:= 0;
nome:=' ';

{ Neste primeiro "WHILE" ele esta fazendo um comparativo com a varivel nome
apos comparar ele lê a primeira linha e pula para a proxima e vai armarzenando
as quantidade na variavel "QTD", após armazenar utilizamos a função "RESETFILE"  
para reiniciar o "READLN", para ser utlizado no segundo "WHILE". }
	while nome <> '' do begin
	readln(s);
		nome:=getstring(s,1,10);
		qtd:=qtd+1;
	end;    
	ResetFile;
   //abort('Quantidade:'+formatFloat(qtd-1,'9'));		

{ Neste segundo "WHILE"	ele funciona pegando algumas funções anteriores agora resetadas
e printando na tela, a variavel "qtd", esta armazenada o numero de linhas, foi recolocado
a variavel nome para puxar.  }
		while readln(s) <> eof do Begin
		nome:= Getstring(s,1,10); 
					BeginPage(PAGE1);
					ClearFields(PAGE1,REC1);
					soma:= soma+1;
						if soma <= 7 then begin
							PAGE1.REC1.CAMPO[1]:= nome;
							PAGE1.REC1.CAMPO[2]:= FormatFloat((soma),'#')+'/'+FormatFloat((qtd-1),'9');
						end else Begin
							break;
						end;
					WriteRecord(PAGE1,REC1);
					EndPage(PAGE1);
		Markup;
		End;
Convert(3,false,false,false,0,false);			

