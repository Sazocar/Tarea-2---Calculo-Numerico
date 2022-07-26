function nodos = nodos_igualmente_espaciados(n)
 
  x_inicial = 0;
  vector = [];
  b = 5;
  a = -5;
  h = (b-a)/n;
  
  for j = 0:n
    xj = x_inicial + j*h
    
    vector = horzcat(vector, xj);
  endfor
  
  nodos = vector;
  
  endfunction