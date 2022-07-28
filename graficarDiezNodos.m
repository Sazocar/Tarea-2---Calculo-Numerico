function graficarDiezNodos(x1,p1,y1,error)
  
  # Graficamos la funcion usando plot
  plot(x1,p1,'c',x1,y1,'m', x1,error, 'b')
  titulo = title ("Polinomio con n+1 nodos de interpolacion ");
  xlabel ("x");
  ylabel ("f(x)");
  texto = text (-1, -2, "n = 10");
  h = legend ("p1", "y1", "error");
  set (h, "fontsize", 20);
  set (texto, "fontsize", 20); 
  set (titulo, "fontsize", 15); 
  texto;
  titulo;
  legend (h, "location", "north");
  
  
  endfunction