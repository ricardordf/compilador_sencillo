// ----------------------------- DECLARACION DE VARIABLES Y ESTRUCTURAS --------------------------------------------

typedef struct {  //typedef para definir al final de la estructura el nombre tSimbolos
    int numerico;           //valor int
    float numericoDecimal;  //valor float
    char* texto;            //valor char
    char *nombre;
    char *tipo;
    int registro;           //posicion  
} tSimbolos;

//Declaramos un array tabla con un tamaño por defecto de 256
tSimbolos tabla[256];
int indice = 0;

//-----------------------------------------------  METODO -------------------------------------------------------

/* METODO "buscarTabla", metodo que realizar una búsqueda en la tabla de simbolos
definida en la gramatica e inicializada a 256 por defecto
- Devuelve el valor -1 si no se encuentra en la tabla de símbolos
- Devuelve la posicion si se encuentra dentro de la tabla */

int buscarTabla(int indice, char *nombre, tSimbolos tabla[]) {
    int resultado = -1; //En el caso de no encontrar el simbolo devolvemos -1
    int posicion = 0;
    while (posicion < indice) {
        
        //Compara si el simbolo esta contenido en la tabla, mirando solo los ocupados
        if (strcmp(tabla[posicion].nombre, nombre) == 0) {
            resultado = posicion;
        }
        posicion++;
    }
    printf("[tSimbolos] Primera posicion libre: %d\n", posicion); //Imprime la posicion libre
    return resultado;
}