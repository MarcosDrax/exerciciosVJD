//exercicio 03 - TIPO FIBONACCI
v1 := 0;
v3 := 0;
v2 := 1;
fibonacci:='';
fibo_1:='';
log:= CreateFileLog('Fibonacci.txt');//RELATORIO


	BeginPage(PAGE1);
	ClearFields(PAGE1,REC1);
		For j:= 0 to 9 Do Begin
			fibonacci:=inttostr(v1);
			v3:= v1+v2;
			v1:=v2;
			v2:=v3;
			fibo_1:= (fibo_1 + fibonacci+',');
			//if fibo = ',' then begin
			//end;
			PAGE1.REC1.CAMPO[1]:=  fibo_1;
		End;
	       WritelnFileLog(log,fibo_1);
	WriteRecord(PAGE1,REC1);
	EndPage(PAGE1);

	CloseFileLog(log);
Convert(1,false,false,false,0,false);