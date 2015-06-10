function salida = neville(t,x,y)
	n=length(x);
	z=zeros(n,n+1);
	z(:,1);
	z(:,1)=x';
	z(:,2)=y';
	a=0;
	for i=3:1:n+1
		for j=i-1:1:n
			z(j,i)=z(j,i-1)+((z(j,1)-t)/(z(j,1)-z(j-1-a,1)))*(z(j-1,i-1)-z(j,i-1));
		endfor
		a=a+1;
	endfor
	z
	salida = z(n, n+1)
endfunction
