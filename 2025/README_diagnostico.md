# Actividad Diagnóstico

Vamos a utilizar el programa jupyter notebook en el MareNostrum 5 (MN5). Para ello, seguimos los siguientes pasos:

1. Abrimos el terminal y nos conectamos a nuestra cuenta.

```console
ssh <usuario>@glogin1.bsc.es
```

2. Copiamos la carpeta con la actividad y los datos a utilizar:

```console
cp -r /home/nct/nct00003/bojos_genomica .
```

3. Nos movemos al directorio que acabamos de copiar:

```console
cd bojos_genomica
```

4. Ejecutamos un job que nos permitirá conectarnos a los recursos computacionales del MN5:

```console
sbatch bojos_genomica_server.sh
```

Anotamos el nodo al que estamos conectados (en la tabla, columna NODELIST):

```console
squeue
```

5. Creamos un túnel para conectar nuestro usuario al nodo donde está nuestro job:

```console
ssh -L ./socket.sock:localhost:55000 <nodo>
```

6. Abrimos un nuevo terminal. Vamos a conectar nuestro ordenador al nodo del MN5:

```console
ssh -L 55000:/home/nct/<usuario>/bojos_genomica/socket.sock <usuario>@glogin1.bsc.es
```

7. Vamos a obtener la URL para poder ejecutar nuestro programa desde el navegador:

```console
grep URLs bojos_genomica/server_*.err -A 2
```

8. Copiar y pegar una de las URLs en el navegador.
