#!/bin/bash
read -p "[+] Busque un usuario, y si no existe le creo una página Web:  " user
esta=$(cat /etc/passwd | cut -f1 -d:| grep -w $user)
    if [ "$esta" ]
        then
        echo "este usuario ya existe"
        else
            adduser $user
            mkdir /home/$user/public_html
            mkdir /tmp/$user
            wget -i https://thispersondoesnotexist.com/ -P /tmp/$user
            mv /tmp/$user/image /home/$user/public_html/foto.jpeg
            echo "<html><head><title>$user Webpage</title></head>">/home/$user/public_html/index.html
            echo "<body><h1>Bienvenido a la pagina de $user</h1><img src="foto.jpeg"></body></html>" >> /home/$user/public_html/index.html
            chown -R $usu : usuweb /home/$user
    fi
firefox http://localhost~$user
