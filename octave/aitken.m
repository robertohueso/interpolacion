function salida = aitken(t,x,y)
	n=length(y);
	Z=zeros(n);
	Z(1,:)=y;
	aux=zeros(1,length(t));
	for k=1:1:length(t)
		for j=1:n-1
			for i=j+1:n
				Z(j+1,i)=(Z(j,i)*(t(k)-x(j))-Z(j,j)
								*(t(k)-x(i)))/(x(i)-x(j));
			endfor
		endfor
		aux(k)=Z(n,n);
	endfor
	Z'
	salida=aux
endfunction
