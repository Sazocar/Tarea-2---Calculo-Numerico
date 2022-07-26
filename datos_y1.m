function y = datos_y1(x1)
  y1 = [];
  
  for i = x1
    y1 = horzcat(y1, main_function(i));  # Array de muchas alturas
  endfor
  y = y1;
  endfunction