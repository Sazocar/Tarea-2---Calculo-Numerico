I = [-5:1:5]        # Intervalo desde [-5,5]

x1 = [-5:0.001:5];  # Valores muy pequenos
y1 = datos_y1(x1);  # Valores pequenos evaluados en f(x)

# ---  Codigo para n = 5  ---

n = 5   #<-- !!! Usa este valor introducido por el usuario para que sea mas facil
            # Recuerda pedirle nada mas 5, 10 o 20
            
            
cinco_datos_x = nodos_igualmente_espaciados(n)     # 6 nodos (n+1)

cinco_datos_y = datos_y(n)   # n+1 datos

p = polyfit(cinco_datos_x,cinco_datos_y,n);

p1 = polyval(p, x1);
error = abs(y1-p1);
max_error = max(error);


showMaxError(max_error)      # Mostramos el maximo error en pantalla
graficarCincoNodos(x1, p1, y1, error)   # Graficamos p1, y1 y error
hold on;


# ---  Codigo para n = 10 ---

#n = 10     # <-- El mismo valor que le pediste al usuario 
#diez_datos_x  = nodos_igualmente_espaciados(n)    #11 nodos

#diez_datos_y = datos_y(n)

#p = polyfit(diez_datos_x,diez_datos_y,n);

#p1 = polyval(p, x1);
#error = abs(y1-p1);
#max_error = max(error);

#showMaxError(max_error)      # Mostramos el maximo error en pantalla
#graficarDiezNodos(x1, p1, y1, error)   # Graficamos p1, y1 y error
#hold on;




#  --- Codigo para n = 20 ---

#n = 20
#veinte_datos_x = nodos_igualmente_espaciados(n)   #21 nodos
#veinte_datos_y = datos_y(n)


#p = polyfit(veinte_datos_x,veinte_datos_y,n);

#p1 = polyval(p, x1);
#error = abs(y1-p1);
#max_error = max(error);

#showMaxError(max_error)      # Mostramos el maximo error en pantalla
#graficarVeinteNodos(x1, p1, y1, error)   # Graficamos p1, y1 y error
#hold on;


# --- Codigo para la parte 3 ---  (De momento da error)

#option = 1    # ANGELITO, aqui el usuario ingresa 1, 2 o 3

                # Si es 1, es la recta
                # Si es 2, es la parabola
                # Si es 3, es el polinomio cubico

#n = 20;
#x = nodos_igualmente_espaciados(n);   #21 nodos
#y = datos_y(n);


#p = polyfit(x,y,1)    # La recta
#plot(x,p) 



