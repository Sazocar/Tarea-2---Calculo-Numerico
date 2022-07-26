function datos = datos_y(n)
  nodos = nodos_igualmente_espaciados(n);
  y = [];
  
  for i = 1:n+1
    value = nodos(i);
    y = horzcat(y,main_function(value));     # Agrego el valor en el array
  endfor
    
    datos = y;
  endfunction