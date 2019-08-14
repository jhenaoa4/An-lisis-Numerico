%%App 6
format long
running=true;
%%while(running==true)
    %%Crear M�quina
    fprintf('CREA TU PROPIA pitufiM�QUINA \n Esta m�quina tiene 17 bits en total \n Distiribuidos de la siguiente forma: SignoMantisa|SignoExponente|BitsExponente|BitsMantisa');
    bits = 17;
    mantisa = input('Primero determine la cantidad de bits correspondientes para la mantisa y el exponente (tenga en cuenta que 2 bits est�n reservados para los signos y que la m�quina trabaja con un bit impl�cito)\n Primero ingrese los bits de la mantisa \n');
    while mantisa >14
        mantisa = input('Ingrese un numero v�lido para la mantisa');
    end
    exponente = input('Ahora ingrese los bits para el exponente \n');
    while mantisa+exponente > 14
        exponente = input('Ingrese un numero v�lido para el exponente \n');
    end
    
    maquina= pitufiMaquina;
    maquina.crearMaquina(mantisa+1,exponente);
    
    %% Calcular maximo numero positivo
     maquina.maxNumber();
    
    %% el numero entero mas peque�o
    maquina.minNumber();
    %%Epsilon de la maquina
    maquina.epsilonMaquina();
    maquina.epsilon;
    fprintf('Tu pitufiM�quina ha sido creada con �xito \nTiene %i bits para la matisa y %i bits para el exponente \n', mantisa, maquina.exponente);
    fprintf('El m�ximo n�mero positivo que puede almacenar esta m�quina es: %i (de este n�mero en adelante se tomar� como infinito)', maquina.max);
    fprintf('\nEl n�mero positivo m�s peque�o que puede almacenar esta m�quina es: %i', maquina.min);
    fprintf('\nEl �psilon de la m�quina es: %i', maquina.epsilon);
    
    %% Operaciones a realizar con la m�quina creada
    empezar=1;
    while(empezar~=0)
    opcion = input('\n�Qu� quieres hacer con tu pitufiM�quina? (Introduzca el n�mero correspondiente a la funci�n que desea realizar) \n 1. Hallar el n�mero m�quina (cadena de bits) correspondiente a un n�mero base 10 \n 2. Hallar n�mero base 10 correspondiente a un n�mero m�quina \n 3. Sumar, restar, multiplicar o dividir dos n�meros \n Oprima otro n�mero para salir de la aplicaci�n y funci�n sorpresa');
    if opcion == 1
        num = input('Ingrese el n�mero que desea convertir');
        a = maquina.numToMaqu(num);
        fprintf('El n�mero m�quina (cadena de bits) correspondiente a tu n�mero en base 10 es: %s',a);
        empezar=input('\n�Quieres hacer otra operaci�n? \n Oprime 1 para S� y 0 para No \n Ten en cuenta que al oprimir 0 sales de la aplicaci�n');
    elseif opcion == 2
           num = input('Ingrese el n�mero que desea convertir entre comillas');
           while (contains(num,"2")==1||contains(num,"3")==1||contains(num,"4")==1||contains(num,"5")==1||contains(num,"6")==1||contains(num,"7")==1||contains(num,"8")==1||contains(num,"9")==1)
           num = input('Ingrese un n�mero binario v�lido entre comillas');
           end
           a=maquina.maquToDec(num);
           fprintf('El n�mero decimal del n�mero m�quina que ingresaste es: %i',a);
           empezar=input('\n�Quieres hacer otra operaci�n? \n Oprime 1 para S� y 0 para No \n Ten en cuenta que al oprimir 0 sales de la aplicaci�n');
    elseif opcion == 3
        opera = input('\n�Quieres sumar, restar, multiplicar o dividir? \n 1. Sumar n�meros decimales \n 2. Sumar n�meros m�quina \n 3. Restar n�meros decimales \n 4. Restar n�meros m�quina \n 5. Multiplicar n�meros decimales \n 6. Mutipicar n�meros m�quina \n 7. Dividir n�meros decimales \n 8. Dividir n�meros maquina');
        if opera == 1
            num1 = input('Ingrese el primer n�mero');
            num2 = input('Ingrese el segundo n�mero');
            a =maquina.sumDec(num1,num2);
            fprintf('La suma de los n�meros es: %i',a);
            empezar=input('\n�Quieres hacer otra operaci�n? \n Oprime 1 para S� y 0 para No \n Ten en cuenta que al oprimir 0 sales de la aplicaci�n');
        elseif opera ==2
            num1 = input('Ingrese el primer n�mero entre comillas');
            while (contains(num1,"2")==1||contains(num1,"3")==1||contains(num1,"4")==1||contains(num1,"5")==1||contains(num1,"6")==1||contains(num1,"7")==1||contains(num1,"8")==1||contains(num1,"9")==1)
                num1 = input('Ingrese un n�mero binario v�lido entre comillas');
            end
            num2 = input('Ingrese el segundo n�mero entre comillas');
            while (contains(num2,"2")==1||contains(num2,"3")==1||contains(num2,"4")==1||contains(num2,"5")==1||contains(num2,"6")==1||contains(num2,"7")==1||contains(num2,"8")==1||contains(num2,"9")==1)
                num2 = input('Ingrese un n�mero binario v�lido entre comillas');
            end
            a = maquina.sumMaqu(num1,num2);
            fprintf('La suma de los n�meros es: %i',a);
            empezar=input('\n�Quieres hacer otra operaci�n? \n Oprime 1 para S� y 0 para No \n Ten en cuenta que al oprimir 0 sales de la aplicaci�n');
        elseif opera ==3
            num1 = input('Ingrese el primer n�mero');
            num2 = input('Ingrese el segundo n�mero');
            a = maquina.restaDec(num1,num2);
        fprintf('La resta de los n�meros es: %i',a);
            empezar=input('\n�Quieres hacer otra operaci�n? \n Oprime 1 para S� y 0 para No \n Ten en cuenta que al oprimir 0 sales de la aplicaci�n');
        elseif opera ==4
            num1 = input('Ingrese el primer n�mero entre comillas');
            while (contains(num1,"2")==1||contains(num1,"3")==1||contains(num1,"4")==1||contains(num1,"5")==1||contains(num1,"6")==1||contains(num1,"7")==1||contains(num1,"8")==1||contains(num1,"9")==1)
                num1 = input('Ingrese un n�mero binario v�lido entre comillas');
            end
            num2 = input('Ingrese el segundo n�mero entre comillas');
            while (contains(num2,"2")==1||contains(num2,"3")==1||contains(num2,"4")==1||contains(num2,"5")==1||contains(num2,"6")==1||contains(num2,"7")==1||contains(num2,"8")==1||contains(num2,"9")==1)
                num2 = input('Ingrese un n�mero binario v�lido entre comillas');
            end
            a = maquina.restaMaqu(num1,num2);
        fprintf('La resta de los n�meros es: %i',a);
            empezar=input('\n�Quieres hacer otra operaci�n? \n Oprime 1 para S� y 0 para No \n Ten en cuenta que al oprimir 0 sales de la aplicaci�n');
        elseif opera ==5
            num1 = input('Ingrese el primer n�mero');
            num2 = input('Ingrese el segundo n�mero');
            a = maquina.multiplicacionDec(num1,num2);
        fprintf('La multiplicaci�n de los n�meros es: %i',a);
            empezar=input('\n�Quieres hacer otra operaci�n? \n Oprime 1 para S� y 0 para No \n Ten en cuenta que al oprimir 0 sales de la aplicaci�n');
        elseif opera ==6
            num1 = input('Ingrese el primer n�mero entre comillas');
            while (contains(num1,"2")==1||contains(num1,"3")==1||contains(num1,"4")==1||contains(num1,"5")==1||contains(num1,"6")==1||contains(num1,"7")==1||contains(num1,"8")==1||contains(num1,"9")==1)
                num1 = input('Ingrese un n�mero binario v�lido entre comillas');
            end
            num2 = input('Ingrese el segundo n�mero entre comillas');
            while (contains(num2,"2")==1||contains(num2,"3")==1||contains(num2,"4")==1||contains(num2,"5")==1||contains(num2,"6")==1||contains(num2,"7")==1||contains(num2,"8")==1||contains(num2,"9")==1)
                num2 = input('Ingrese un n�mero binario v�lido entre comillas');
            end
            a= maquina.multiplicacionMaqu(num1,num2);
            fprintf('La multiplicaci�n de los n�meros es: %i',a);
            empezar=input('\n�Quieres hacer otra operaci�n? \n Oprime 1 para S� y 0 para No \n Ten en cuenta que al oprimir 0 sales de la aplicaci�n');
        elseif opera ==7
            num1 = input('Ingrese el primer n�mero');
            num2 = input('Ingrese el segundo n�mero');
            a= maquina.divisionDec(num1,num2);
            fprintf('La divisi�n de los n�meros es: %i',a);
            empezar=input('\n�Quieres hacer otra operaci�n? \n Oprime 1 para S� y 0 para No \n Ten en cuenta que al oprimir 0 sales de la aplicaci�n');
        else
            num1 = input('Ingrese el primer n�mero entre comillas');
            while (contains(num1,"2")==1||contains(num1,"3")==1||contains(num1,"4")==1||contains(num1,"5")==1||contains(num1,"6")==1||contains(num1,"7")==1||contains(num1,"8")==1||contains(num1,"9")==1)
                num1 = input('Ingrese un n�mero binario v�lido entre comillas');
            end
            num2 = input('Ingrese el segundo n�mero entre comillas');
            while (contains(num2,"2")==1||contains(num2,"3")==1||contains(num2,"4")==1||contains(num2,"5")==1||contains(num2,"6")==1||contains(num2,"7")==1||contains(num2,"8")==1||contains(num2,"9")==1)
                num2 = input('Ingrese un n�mero binario v�lido entre comillas');
            end
            a= maquina.divisionMaqu(num1,num2);
            fprintf('La divisi�n de los n�meros es: %i',a);
            empezar=input('\n�Quieres hacer otra operaci�n? \n Oprime 1 para S� y 0 para No \n Ten en cuenta que al oprimir 0 sales de la aplicaci�n');
        end
    else
       chiste = 1;
       while (chiste ~= 0)
       chiste = input('�Sabes que es una nariz? \n 1 para si, 0 para no');
       end
       fprintf('Algo muy sonado');
       empezar=0;
    end
    end
    
% end