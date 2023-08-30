//exercicio 04 - TP MULTVAR (novo-resumido)
Readln(s); {lê as variaveis declaradas abaixo }
imprimir    := 0;
linha_atual := '';
linha_pc    := 0;
fecha       := 0;
nome        := '';
sinal       := ' - ';
relatorio   := CreateFileLog('parcelas.txt');

readln(s); 
{le a primeira linha do programa é ja inicia}
    while true do begin
        { o programa ja inicia com a variavel nome vazia para fazer o comparativo com o if 1 = se nome for igual ao 'nome' E impri for IGUAL '1' então comece }
        if (nome <> getstring(s,2,0)) AND (imprimir = 1) then begin
                WritelnFileLog(relatorio,GetString(multlineItem(linha_atual,0),2,0)+' - '+FormatFloat(linha_pc,'9')+' PC');
				
                BeginPage(PAGE1);
                ClearFields(PAGE1,REC1);

                    PAGE1.REC1.CAMPO[1]:= GetString(multlineItem(linha_atual,0),2,0);
                    for i := 0 to 3 do begin
                        if GetString(multlineItem(linha_atual,0+i),2,0) = '' then break;
                        PAGE1.REC1.CAMPO[2+i]:= GetString(multlineItem(linha_atual,0+i),3,0)+sinal+GetString(multlineItem(linha_atual,0+i),4,0);
                    end;

                WriteRecord(PAGE1,REC1);
                EndPage(PAGE1);
                markup();
            
            linha_atual    := '';
            linha_pc  := 0;
            imprimir  := 0;
            CloseFileLog(relatorio);
        end;        

            linha_atual   := MultLineAdd(linha_atual,S);
            linha_pc      := MultLineCount(linha_atual);
            imprimir      := 1;        
            nome          := getstring(s,2,0);{ VARIAVEL RECEBEDORA DO CONTEUDO ANTERIOR  }
        
            if fecha = 1 then break;
            if ReadLn(S) = eof then fecha := 1;    
    End;
Convert(3,false,false,false,0,false);
