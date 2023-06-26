//Execicio 03: tp_multip

inicio   := 0;
quant    := 3;
multip   := 2;
fim      := 4:
	BeginPage(PAGE1);
	ClearFields(PAGE1,REC1);
		while inicio < quant do begin
			if inicio > fim then begin		
				break;
			end else begin
				PAGE1.REC1.CAMPO[inicio+1]:= FormatFloat((inicio*multip),'9999');
			end;
			inicio:= inicio+1;
		end;		
	WriteRecord(PAGE1,REC1);
	EndPage(PAGE1);


//Execicio 03: tp_multip_vs_01 - utilizando "MOD", para comparar como verdadeiro ou falso o resultado do resto

inicio    := 0;
quant     := 5;
multip    := 2;
fim       := 4;
multiplica:= '';
resultado := '';

	BeginPage(PAGE1);
	ClearFields(PAGE1,REC1);
		while inicio < quant do begin
			if inicio > fim then begin		
				break;
			end else begin
				multiplica:= FormatFloat((inicio*multip),'9999');
			end;
			inicio:= inicio+1;

			if (inicio mod multip) <> 0 then begin		
				resultado:= 'Verdadeiro';
			end else begin
				resultado:= 'Falso';
			end;

		PAGE1.REC1.CAMPO[inicio+1]:= multiplica +' '+ resultado;
		end;
	WriteRecord(PAGE1,REC1);
	EndPage(PAGE1);

//Execicio 03: tp_multip_vs_02 - utilizando "MOD"
inicio:= 0;
	BeginPage(PAGE1);
	ClearFields(PAGE1,REC1);
		while inicio <= 4 do begin
			if (inicio mod 2) = 0 then 					
				PAGE1.REC1.CAMPO[inicio+1]:= FormatFloat(inicio,'9');
			
		inicio:= inicio+1;	
		end;
	WriteRecord(PAGE1,REC1);
	EndPage(PAGE1);