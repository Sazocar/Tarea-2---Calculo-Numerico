function datos = datos_y()
  y = [];     
  
  for i = -5:5  
    y = horzcat(y,funcion(i));     # Agrego el valor en el array
  endfor
    
    datos = y;
  endfunction