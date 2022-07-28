I = [-5:1:5];        # Intervalo desde [-5,5]

x1 = [-5:0.001:5];  # Valores muy pequenos
y1 = datos_y1(x1);  # Valores pequenos evaluados en f(x)

q = false;
while (q != true)
  printf("  Programa Elaborado por: \n")
  printf("  Simon Azocar\n")
  printf("  Angel Hernandez\n")
  printf("  Carlos Ortega\n")
  printf("\n")
  printf("\n")
  printf("\n")
  printf("  Indique la operacion que quiere realizar :\n")
  printf("\n")
  printf("     1 -> Construccion del Interpolador Polinomial\n")
  printf("     2 -> Minimos Cuadrados Discreto\n")
  printf("     3 -> Link VIDIO LUCES \n")
  printf("     4 -> Salir\n")
  printf("\n")
  pregunta = input("      Opcion -> ");
  switch (pregunta)
  case 1
      clc()
      w = false;
      while (w != true)
        printf("\n")
        printf("\n")
        printf("\n")
        printf("\n")
        printf("  Indique la operacion que quiere realizar :\n")
        printf("     1 -> n = 5\n")
        printf("     2 -> n = 10\n")
        printf("     3 -> n = 20\n")
        printf("     4 -> Volver\n")
        pregunta1 = input("       Opcion -> ");
        switch (pregunta1)
        case 1
            clc()
            printf("\n")
            printf("\n")
            printf("\n")
            printf("\n")
            # ---  Codigo para n = 5  ---
            n = 5
            cinco_datos_x = nodos_igualmente_espaciados(n)     # 6 nodos (n+1)

            cinco_datos_y = datos_y(n)   # n+1 datos

            p = polyfit(cinco_datos_x,cinco_datos_y,n);

            p1 = polyval(p, x1);
            error = abs(y1-p1);
            max_error = max(error);

            showMaxError(max_error)      # Mostramos el maximo error en pantalla
            mostrarGrafica(x1, p1, y1, error, -4, -0.5, "n=5","northeast")

            e = false;
            while(e != true)
              printf("\n")
              printf("\n")
              printf("\n")
              printf("     1 -> Volver\n")
              pregunta1 = input("         Opcion -> ");
              switch (pregunta1)
                case 1
                  clc()
                  e = true;
              endswitch
            endwhile
        case 2
            clc()
            printf("\n")
            printf("\n")
            printf("\n")
            printf("\n")
            # ---  Codigo para n = 10 ---
            n = 10     # <-- El mismo valor que le pediste al usuario
            diez_datos_x  = nodos_igualmente_espaciados(n)    #11 nodos

            diez_datos_y = datos_y(n)

            p = polyfit(diez_datos_x,diez_datos_y,n);

            p1 = polyval(p, x1);
            error = abs(y1-p1);
            max_error = max(error);

            showMaxError(max_error)      # Mostramos el maximo error en pantalla
            mostrarGrafica(x1, p1, y1, error, -1, -2, "n=10","north")

            e = false;
            while(e != true)
              printf("\n")
              printf("\n")
              printf("\n")
              printf("     1 -> Volver\n")
              pregunta1 = input("         Opcion -> ");
              switch (pregunta1)
                case 1
                  clc()
                  e = true;
              endswitch
            endwhile
        case 3
            clc()
            printf("\n")
            printf("\n")
            printf("\n")
            printf("\n")
            #  --- Codigo para n = 20 ---
            n = 20
            veinte_datos_x = nodos_igualmente_espaciados(n)   #21 nodos

            veinte_datos_y = datos_y(n)

            p = polyfit(veinte_datos_x,veinte_datos_y,n);

            p1 = polyval(p, x1);
            error = abs(y1-p1);
            max_error = max(error);

            showMaxError(max_error)      # Mostramos el maximo error en pantalla
            mostrarGrafica(x1, p1, y1, error, -1, -1000, "n=20","north")   # Graficamos p1, y1 y error

            e = false;
            while(e != true)
              printf("\n")
              printf("\n")
              printf("\n")
              printf("     1 -> Volver\n")
              pregunta1 = input("         Opcion -> ");
              switch (pregunta1)
                case 1
                  clc()
                  e = true;
              endswitch
            endwhile
        case 4
          clc()
          w = true;
        endswitch
      endwhile
      clc()
  case 2
     clc()
      w = false;
      while (w != true)
        printf("\n")
        printf("\n")
        printf("\n")
        printf("\n")
        printf("  Con que desea realizar el ajuste de Minimos Cuadrados? :\n")
        printf("\n")
        printf("     1 -> Una recta\n")
        printf("     2 -> Una parabola\n")
        printf("     3 -> Un polinomio de la forma P(x) = ax^3 + bx^2 + cx  + d\n")
        printf("     4 -> Volver\n")
        printf("\n")
        option = input("         Opcion -> ");
        switch (option)
        case 1
            clc()
            printf("\n")
            printf("\n")
            printf("\n")
            printf("\n")
            # ---  Para la recta  ---

            n = 20
            veinte_datos_x = nodos_igualmente_espaciados(n)   #21 nodos
            veinte_datos_y = datos_y(n)


            p = polyfit(veinte_datos_x,veinte_datos_y,option);    # <--- Aqui va la option del user

            p1 = polyval(p, x1);
            error = abs(y1-p1);
            max_error = max(error);

            showMaxError(max_error)      # Mostramos el maximo error en pantalla
            mostrarGrafica(x1, p1, y1, error, -5, 4, "n=20","northeast")   # Graficamos p1, y1 y error
         

            e = false;
            while(e != true)
              printf("\n")
              printf("\n")
              printf("\n")
              printf("     1 -> Volver\n")
              option = input("         Opcion -> ");
              switch (option)
                case 1
                  clc()
                  e = true;
              endswitch
            endwhile
        case 2
            clc()
            printf("\n")
            printf("\n")
            printf("\n")
            printf("\n")
            # ---  Para la recta  ---

            n = 20
            veinte_datos_x = nodos_igualmente_espaciados(n)   #21 nodos
            veinte_datos_y = datos_y(n)


            p = polyfit(veinte_datos_x,veinte_datos_y,option);    # <--- Aqui va la option del user

            p1 = polyval(p, x1);
            error = abs(y1-p1);
            max_error = max(error);

            showMaxError(max_error)      # Mostramos el maximo error en pantalla
            mostrarGrafica(x1, p1, y1, error, -5, 4, "n=20","northeast")   # Graficamos p1, y1 y error

            e = false;
            while(e != true)
              printf("\n")
              printf("\n")
              printf("\n")
              printf("     1 -> Volver\n")
              opcion = input("         Opcion -> ");
              switch (opcion)
                case 1
                  clc()
                  e = true;
              endswitch
            endwhile

        case 3
            clc()
            printf("\n")
            printf("\n")
            printf("\n")
            printf("\n")
            # ---  Para la recta  ---

            n = 20
            veinte_datos_x = nodos_igualmente_espaciados(n)   #21 nodos
            veinte_datos_y = datos_y(n)


            p = polyfit(veinte_datos_x,veinte_datos_y,option);    # <--- Aqui va la option del user

            p1 = polyval(p, x1);
            error = abs(y1-p1);
            max_error = max(error);

            showMaxError(max_error)      # Mostramos el maximo error en pantalla
            mostrarGrafica(x1, p1, y1, error, -5, 4, "n=20","northeast")   # Graficamos p1, y1 y error

            e = false;
            while(e != true)
              printf("\n")
              printf("\n")
              printf("\n")
              printf("     1 -> Volver\n")
              option = input("         Opcion -> ");
              switch (option)
                case 1
                  clc()
                  e = true;
              endswitch
            endwhile
        case 4
          clc()
          w = true;
        endswitch
      endwhile
      clc()
  case 3
    clc()
    printf("Link del vidio de luces:\n")
    printf("\n")
    printf("\n")
    printf("\n")
    printf("Haga click aca ---> https://youtu.be/EZm2SiurlZc\n")
    e = false;
    while(e != true)
      printf("\n")
      printf("\n")
      printf("\n")
      printf("     1 -> Volver\n")
      opcion = input("         Opcion -> ");
      switch (opcion)
        case 1
          clc()
          e = true;
      endswitch
    endwhile
  case 4
    clc()
    q = true;
  endswitch
endwhile
