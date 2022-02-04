#!/bin/bash
echo "[+] Opcion 0: Salir"
echo "[+] Opcion 1: Cambio de nivel INIT"
echo "[+] Opcion 2: ejecute un binario simple"
echo "[+] Opcion 3: añade a un usuario"
read -p "Seleccione una opción" opcion
while [ $opcion -ne 0 ]
    do
        if [ $opcion -eq 1 ]
            then
                echo "Se va a cambiar de nivel INIT:"
                sleep 2
                echo "[+] INIT 0: Halt (Parada del sistema)"
                echo "[+] INIT 1: Modo monousuario"
                echo "[+] INIT 2: No se utiliza (definible por el usuario)"
                echo "[+] INIT 3: Modo multiusuario completo."
                echo "[+] INIT 4: No se utiliza (definible por el usuario)"
                echo "[+] INIT 5: Modo multiusuario completo (con login gráfico basado en X)"
                echo "[+] INIT 6: Reboot (Reiniciar el sistema)"
                read -p ">>>" initi
                init $initi
            elif [ $opcion -eq 2 ]
                then
                    echo "Ha seleccionado la ejecucion de un Binario"
                    sleep 1
                    ls -l /usr/bin
                    read -p "Que binario desea? : " binario
                    /usr/bin/$binario
            elif [ $opcion -eq 3 ]
                then
                    echo "[-] en mantenimiento puto"
                    sleep 2
                    clear
            else
                echo "Opcion incorrecta"
                sleep 1 
                echo " Introduzca una opcion correcta"
        fi
    echo "[+] Opcion 0: Salir"
    echo "[+] Opcion 1: Cambio de nivel INIT"
    echo "[+] Opcion 2: ejecute un binario simple"
    echo "[+] Opcion 3: añade a un usuario"
    read -p "Seleccione una opción" opcion
    done