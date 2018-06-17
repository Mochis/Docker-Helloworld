# Seleccionamos como imagen padre la de jdk de java 8
FROM openjdk:8u171-jdk-slim-stretch

# Copiamos el fichero java que se quiere ejecutar en el contenedor
COPY Helloworld.java .

# Compilacion de .java a .class
RUN javac Helloworld.java

# Ejecución de la aplicacion java
CMD ["java", "Helloworld"]