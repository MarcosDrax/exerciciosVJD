//Exercicio 03: fibonacci
vlr_1    := 0;
vlr_2    := 1;
vlr_3    := 0;
fibonacci:='';
fibo     :='';

log:= CreateFileLog('Fibonacci.txt');

		For j:= 0 to 9 Do Begin
			 
			vlr_3:= vlr_1+vlr_2;
			vlr_1:=vlr_2;
			vlr_2:=vlr_3;
			fibo:= (fibo + fibonacci+',');
		End;
		
	BeginPage(PAGE1);
	ClearFields(PAGE1,REC1);
		PAGE1.REC1.CAMPO[1]:=  fibo;
		WritelnFileLog(log,fibo);
	WriteRecord(PAGE1,REC1);
	EndPage(PAGE1);
	
CloseFileLog(log);
Convert(1,false,false,false,0,false);
