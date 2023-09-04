// +-----------------------------------+
// | Desenvolvedor: MARCOS - versão_02 |
// | Atualização:  04/09/2023- 12:22pm |
// | Programa:exercicio 09 - TP_ALEAT  |
// +-----------------------------------+
//variaveis declaradas------------------------+
letras     := 'abcdefghijklmnopqrstuvxz';
saida      := '';
saida_reser:= '';
palavra    := '';
palavra_1  := '';
palavra_2  := '';
palavra_3  := '';
palavra_4  := '';
palavra_5  := '';
horizontal := 1;
horizontal1 := 1;
horizontal2 := 1;
horizontal3 := 1;
horizontal4 := 1;
horizontal5 := 1;
vertical   := 0;
cont       := 0;
cont_1     := 0;
cont_2     := 0;
cont_3     := 0;
cont_4     := 0;
cont_5     := 0;
QTDBUSCA   := 0;
QTDBUSCA1  := 0;
QTDBUSCA2  := 0;
QTDBUSCA3  := 0;
QTDBUSCA4  := 0;
QTDBUSCA5  := 0;
//-----------------------------------------------+

BeginPage(PAGE1);
ClearFields(PAGE1,REC1);

	For verti := 0 to 9 do begin
	{ looping vertical com a quantidade de 10 loop's,   }
		for horizon := 0 to 29 do begin
		{ looping horizontal com a quantidade de 30 loop's, este for esta gerando as letras aleatorias de cada coluna vertical   }
			saida:= saida+''+substr(letras,random(24)+1,1);
			PAGE1.REC1.CAMPO[verti+1]:= saida;			
			saida_reser:= saida;	 
		end;
		//abort(saida_reser); 
			{ preciso de uma variavel que reserve a saida antes de fazer o comparativo do IF }
			saida:='';
   
		//função criada para encontrar a Letra "M"
			for h:=0 to 99 do Begin 
				if substr(saida_reser,h+1,1) = 'm' then begin 
					cont:= cont+1;
					palavra := substr(saida_reser,h+1,1);
				end;

				IF QTDBUSCA = 0 then begin
					if substr(saida_reser,h+1,1) = 'm' then begin
						QTDBUSCA := 1;
						break
					end else begin
						horizontal:=horizontal+1;
					end;
				END;
				
			end;

		//função criada para encontrar a Letra "A"
			for i:=0 to 99 do Begin 
				if substr(saida_reser,i+1,1) = 'a' then begin
					cont_1:= cont_1+1;
					palavra_1 := substr(saida_reser,i+1,1);
				end;

				IF QTDBUSCA1 = 0 then begin
					if substr(saida_reser,i+1,1) = 'a' then begin
						QTDBUSCA1 := 1;
						break
					end else begin
						horizontal1:=horizontal1+1;						
					end;
				END;
			end;
		
		//função criada para encontrar a Letra "R"
			for j:=0 to 99 do Begin 
				if substr(saida_reser,j+1,1) = 'r' then begin 
					cont_2:= cont_1+1;
					palavra_2 := substr(saida_reser,j+1,1);
				end;

				IF QTDBUSCA2 = 0 then begin
					if substr(saida_reser,j+1,1) = 'r' then begin
						QTDBUSCA2 := 1;
						break
					end else begin
						horizontal2:=horizontal2+1;
					end;
				END;
			end;
		//função criada para encontrar a Letra "C"
			for k:=0 to 99 do Begin 
				if substr(saida_reser,k+1,1) = 'c' then begin 
					cont_3:= cont_3+1;
					palavra_3 := substr(saida_reser,k+1,1);
				end;

				IF QTDBUSCA3 = 0 then begin
					if substr(saida_reser,k+1,1) = 'c' then begin
						QTDBUSCA3 := 1;
						break
					end else begin
						horizontal3:=horizontal3+1;
					end;
				END;
			end;
		//função criada para encontrar a Letra "o"
			for l:=0 to 99 do Begin 
				if substr(saida_reser,l+1,1) = 'o' then begin 
					cont_4:= cont_4+1;
					palavra_4 := substr(saida_reser,l+1,1);
				end;

				IF QTDBUSCA4 = 0 then begin
					if substr(saida_reser,l+1,1) = 'o' then begin
						QTDBUSCA4 := 1;
						break
					end else begin
						horizontal4:=horizontal4+1;
					end;
				END;
			end;
		//função criada para encontrar a Letra "s"			
			for m:=0 to 99 do Begin 
				if substr(saida_reser,m+1,1) = 's' then begin 
					cont_5:= cont_5+1;
					palavra_5 := substr(saida_reser,m+1,1);
				end;

				IF QTDBUSCA5 = 0 then begin
					if substr(saida_reser,m+1,1) = 's' then begin
						QTDBUSCA5 := 1;
						break
					end else begin
						horizontal5:=horizontal5+1;
					end;
				END;
			end;			
	end;
			//abort(FormatFloat(horizontal,'999'));
			{ no if necessito entender  }
			PAGE1.REC1.TESTE_1[1]:= 'Quantd - '+FormatFloat(cont,'99')+' / Letra - '+palavra+' / Posição horizontal - '+FormatFloat(horizontal,'99')+' / Linha Vertical - '+saida;
			PAGE1.REC1.TESTE_1[2]:= 'Quantd - '+FormatFloat(cont_1,'99')+' / Letra - '+palavra_1+' / Posição horizontal - '+FormatFloat(horizontal1,'99');
			PAGE1.REC1.TESTE_1[3]:= 'Quantd - '+FormatFloat(cont_2,'99')+' / Letra - '+palavra_2+' / Posição horizontal - '+FormatFloat(horizontal2,'99');
			PAGE1.REC1.TESTE_1[4]:= 'Quantd - '+FormatFloat(cont_3,'99')+' / Letra - '+palavra_3+' / Posição horizontal - '+FormatFloat(horizontal3,'99');
			PAGE1.REC1.TESTE_1[5]:= 'Quantd - '+FormatFloat(cont_4,'99')+' / Letra - '+palavra_4+' / Posição horizontal - '+FormatFloat(horizontal4,'99');
			PAGE1.REC1.TESTE_1[6]:= 'Quantd - '+FormatFloat(cont_5,'99')+' / Letra - '+palavra_5+' / Posição horizontal - '+FormatFloat(horizontal5,'99');
	
{  bom preciso que o IF faça uma busca de somente 1 letra, dentro da variavel saida, }
	//abort(formatfloat(cont,'9'));
			
WriteRecord(PAGE1,REC1);
EndPage(PAGE1);
