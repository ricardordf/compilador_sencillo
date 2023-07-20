# Compiladores y Lenguajes Formales

## Grupo 1
- Ricardo Delgado Fernández
- Jorge Díaz-Maroto Merino
- Carlos Vega González

## Directivas de compilación

El proceso de generación del compilador requerirá cumplir con ciertos requisitos previos antes de su ejecución. Es imprescindible contar con la herramienta MinGW instalada en el equipo. Asimismo, será necesario haber instalado el software MARS, una herramienta de simulación y depuración de ensamblador MIPS.
Una vez se hayan cumplido estos requisitos, se debe seguir un proceso específico para generar ejecutar el compilador. Para comenzar, será necesario abrir la consola de comandos "msys" y asegurarse de estar ubicado en la ruta correcta donde se encuentran los archivos del compilador.

A continuación, se deben ejecutar las siguientes instrucciones en el orden indicado:

> bison -d -v gramatica_latino.y
     
> flex -o latino.lex.c lexico_latino.flex

> gcc -o COMPILADO gramatica_latino.tab.c latino.lex.c

Durante la ejecución de estos comandos, aparecen mensajes de advertencia (warnings). Estos avisos, aunque no se tomarán en cuenta en este momento, pueden ser útiles durante el desarrollo del compilador para identificar problemas o mejoras en el código.
Una vez completados estos pasos, se habrá obtenido el archivo ejecutable "COMPILADO.exe". Este archivo será utilizado para traducir código en lenguaje latino a lenguaje ensamblador MIPS.
Todas las directivas de compilación se pueden ejecutar directamente a través de un script llamado “compilar.sh”. Este archivo contiene en su interior todos los comandos anteriormente mencionados y que serán ejecutados por orden de línea.


