function nodos = nodos_igualmente_espaciados(n)


  vector = [];
  b = 5;
  a = -5;
  h = (b-a)/n;
   x_inicial = a;

  for j = 1:n+1
    xj = x_inicial + (j-1)*h;

    vector = horzcat(vector, xj);
  endfor

  nodos = vector;

  endfunction
