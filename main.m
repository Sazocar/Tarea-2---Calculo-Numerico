I = [-5:1:5]        # Intervalo desde [-5,5]

x1 = [-5:0.001:5];  # Valores muy pequenos

cinco_datos_x = nodos_igualmente_espaciados(5)     # 6 nodos (n+1)

cinco_datos_y = datos_y(5)   # n+1 datos


#diez_datos_x  = nodos_igualmente_espaciados(10)    #11 nodos

#diez_datos_y = datos_y(10)

#veinte_datos_x = nodos_igualmente_espaciados(20)   #21 nodos

#veinte_datos_y = datos_y(20)


p = polyfit(cinco_datos_x,cinco_datos_y,5);

#plot(cinco_datos_x, p);

#p = polyfit(diez_datos_x, diez_datos_y, 10)

#plot(diez_datos_x, p)

#p = polyfit(veinte_datos_x,veinte_datos_y,20);

#plot(veinte_datos_x, p);

y1 = datos_y1(x1);

p1 = polyval(p, x1);
error = abs(y1-p1);

#plot(x1, error)    # Usamos p1? error? y1? En el segundo parametro de plot?

#p2 = polyfit(x1, y1, length(x1));
plot(x1,p1,'c',x1,y1,'m', x1,error, 'b')
max(error)



