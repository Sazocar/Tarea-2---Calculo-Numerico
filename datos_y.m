function datos = datos_y(n)
  nodos = nodos_igualmente_espaciados(n)
  y = [];
  value = 0;
  
  for i = 1:n+1
    value = nodos(i)
    y = horzcat(y,funcion(value));     # Agrego el valor en el array
  endfor
    
    datos = y;
  endfunction