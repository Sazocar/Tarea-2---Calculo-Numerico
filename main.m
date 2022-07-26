I = [-5:1:5]        # Intervalo desde [-5,5]

#p= polyfit(-5, 5, 6)

#for i = -5:5
#y = polyval(p, i)
#end;

evaluacion = funcion(2);

cinco_datos_y = datos_y(5)

cinco_nodos = nodos_igualmente_espaciados(5)     #6 nodos
diez_nodos  = nodos_igualmente_espaciados(10)    #11 nodos
veinte_nodos = nodos_igualmente_espaciados(20)   #21 nodos


p = polyfit(cinco_nodos,cinco_datos_y,5)

#plot(p)