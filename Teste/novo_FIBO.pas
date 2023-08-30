// fibonacci
A1:= -1;
B1:= 1;
C1:= 0;
resultado:= '';
result:= '';
inicial:= 1;
Final:='';

relatorio:=CreateFileLog('Fibonacci_12.txt');

//FORMULA PARA GERAR OS NUMEROS ANTECESSORES
	For i:= inicial to 99999 do begin
			C1:= A1+B1; 
			A1:= B1;
			B1:= C1;
			resultado:=  resultado+','+formatfloat(C1,'9');	
		if fibo <= c1 then begin 
			break;
		end;	
	end;
	
//ABORT(formatfloat(A1,'9')+' A1 - 13'+formatfloat(B1,'9')+' B1 - 21'+formatfloat(c1,'9')+' C1 - 21');
//ABORT(resultado);

 
	For J:=INICIAL TO QTD-1 do begin	
		fibo:= A1+b1;
		A1:=B1;
		B1:=Fibo;
	    result:=  result+','+formatfloat(FIBO,'9');	
	end;

Final := formatfloat(C1,'9')+''+result;

//ABORT(formatfloat(FIBO,'9'));
ABORT(Final);	
WritelnFileLog(relatorio,resultado);
	


