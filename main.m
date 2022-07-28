I = [-5:1:5]        # Intervalo desde [-5,5]

x1 = [-5:0.001:5];  # Valores muy pequenos

# ---  Codigo para n = 5  ---

cinco_datos_x = nodos_igualmente_espaciados(5)     # 6 nodos (n+1)

cinco_datos_y = datos_y(5)   # n+1 datos

p = polyfit(cinco_datos_x,cinco_datos_y,5);

y1 = datos_y1(x1);

p1 = polyval(p, x1);
error = abs(y1-p1);
max_error = max(error);


showMaxError(max_error)      # Mostramos el maximo error en pantalla
graficarCincoNodos(x1, p1, y1, error)   # Graficamos p1, y1 y error
hold on;


# ---  Codigo para n = 10 ---

diez_datos_x  = nodos_igualmente_espaciados(10)    #11 nodos

diez_datos_y = datos_y(10)

p = polyfit(cinco_datos_x,cinco_datos_y,5);

y1 = datos_y1(x1);

p1 = polyval(p, x1);
error = abs(y1-p1);
max_error = max(error);


showMaxError(max_error)      # Mostramos el maximo error en pantalla
graficarCincoNodos(x1, p1, y1, error)   # Graficamos p1, y1 y error
hold on;






#veinte_datos_x = nodos_igualmente_espaciados(20)   #21 nodos

#veinte_datos_y = datos_y(20)



#plot(cinco_datos_x, p);

#p = polyfit(diez_datos_x, diez_datos_y, 10)

#plot(diez_datos_x, p)

#p = polyfit(veinte_datos_x,veinte_datos_y,20);

#plot(veinte_datos_x, p);


#plot(x1, error)    # Usamos p1? error? y1? En el segundo parametro de plot?

#p2 = polyfit(x1, y1, length(x1));
#plot(x1,p1,'c',x1,y1,'m', x1,error, 'b')
