function datos_x()
  y = [];     
  
  for i = -5:5  
    y = horzcat(y,funcion(i));     # Agrego el valor en el array
  endfor
    
    y   # Muestro en pantalla el array
  endfunction