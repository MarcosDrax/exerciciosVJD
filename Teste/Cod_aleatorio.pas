// +-----------------------------------+
// | Desenvolvedor: MARCOS - versão_02 |
// | Atualização:  11/09/2023- 09:32am |
// | Programa:exercicio 09 - TP_ALEAT  |
// +-----------------------------------+
//variaveis declaradas------------------------+
letras     := 'abcdefghijklmnopqrstuvxz';
saida      := '';
saida_reser:= '';
horizontal := 0;
BUSCA      := 0;
BUSCA1     := 0;
BUSCA2     := 0;
BUSCA3     := 0;
BUSCA4     := 0;
BUSCA5     := 0;
cont       := 1;
cont1      := 1;
cont2      := 1;
cont3      := 1;
cont4      := 1;
cont5      := 1;
linha      := '';
linha1     := '';
linha2     := '';
linha3     := '';
linha4     := '';
linha5     := '';
linha      := '';

//-----------------------------------------------+
BeginPage(PAGE1);
ClearFields(PAGE1,REC1);

 
	For linhas := 0 to 9 do begin  { looping vertical com a quantidade de 10 loop's,   }
		for aleatorias := 0 to 29 do begin  { looping horizontal com a quantidade de 30 loop's, este for esta gerando as letras aleatorias de cada coluna vertical   }		
			saida:= saida+''+substr(letras,random(24)+1,1);
			PAGE1.REC1.CAMPO[linhas+1]:= saida;			
			saida_reser:= saida;	 
		end;			
			saida:=''; { preciso de uma variavel que reserve a saida antes de fazer o comparativo do IF }
			
		//função criada para encontrar a primeira Letra.
			for h:= 0 to 29 do Begin 			
				IF BUSCA = 0 then begin
					if substr(saida_reser,h+1,1) = 'm' then begin
						BUSCA := 1;
						linha:= FormatFloat(linhas,'99');												
						break						
					end else begin
						cont:=cont+1;
						if cont = 30 then begin
						cont:=0;
						end;						
					end;
				END;	
			end;
		//função criada para encontrar a segunda Letra.
			for i:= 0 to 29 do Begin 			
				IF BUSCA1 = 0 then begin
					if substr(saida_reser,i+1,1) = 'a' then begin
						BUSCA1 := 1;
						linha1:= FormatFloat(linhas,'99');												
						break						
					end else begin
						cont1:=cont1+1; 
						if cont1 = 30 then begin
						cont1:=0;
						end;						
					end;
				END;	
			end;
		//função criada para encontrar a terceira Letra.			
			for j:= 0 to 29 do Begin 			
				IF BUSCA2 = 0 then begin
					if substr(saida_reser,j+1,1) = 'r' then begin
						BUSCA2 := 1;
						linha2:= FormatFloat(linhas,'99');												
						break						
					end else begin
						cont2:=cont2+1;
						if cont2 = 30 then begin
						cont2:=0;
						end;						
					end;
				END;	
			end;
		//função criada para encontrar a quarta Letra.			
			for k:= 0 to 29 do Begin 			
				IF BUSCA3 = 0 then begin
					if substr(saida_reser,k+1,1) = 'c' then begin
						BUSCA3 := 1;
						linha3:= FormatFloat(linhas,'99');												
						break						
					end else begin
						cont3:=cont3+1;
						if cont3 = 30 then begin
						cont3:=0;
						end;						
					end;
				END;	
			end;
		//função criada para encontrar a quinta Letra.			
			for l:= 0 to 29 do Begin 			
				IF BUSCA4 = 0 then begin
					if substr(saida_reser,l+1,1) = 'o' then begin
						BUSCA4 := 1;
						linha4:= FormatFloat(linhas,'99');												
						break						
					end else begin
						cont4:=cont4+1;
						if cont4 = 30 then begin
						cont4:=0;
						end;						
					end;
				END;	
			end;
		//função criada para encontrar a sexta Letra.			
			for m:= 0 to 29 do Begin 			
				IF BUSCA5 = 0 then begin
					if substr(saida_reser,m+1,1) = 's' then begin
						BUSCA5 := 1;
						linha5:= FormatFloat(linhas,'99');												
						break						
					end else begin
						cont5:=cont5+1;
						if cont5 = 30 then begin
						cont5:=0;
						end;						
					end;
				END;	
			end;			
	end;
//		

			PAGE1.REC1.TESTE[1]:= 'Posição Linha - '+linha+' / Posição letra - '+FormatFloat(cont,'99');	
			PAGE1.REC1.TESTE[2]:= 'Posição Linha - '+linha1+' / Posição letra - '+FormatFloat(cont1,'99');	
			PAGE1.REC1.TESTE[3]:= 'Posição Linha - '+linha2+' / Posição letra - '+FormatFloat(cont2,'99');	
			PAGE1.REC1.TESTE[4]:= 'Posição Linha - '+linha3+' / Posição letra - '+FormatFloat(cont3,'99');	
			PAGE1.REC1.TESTE[5]:= 'Posição Linha - '+linha4+' / Posição letra - '+FormatFloat(cont4,'99');	
			PAGE1.REC1.TESTE[6]:= 'Posição Linha - '+linha5+' / Posição letra - '+FormatFloat(cont5,'99');
			
WriteRecord(PAGE1,REC1);
EndPage(PAGE1);

