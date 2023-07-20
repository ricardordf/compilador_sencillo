        
#-------------- Declaracion de variables --------------
.data 
saltoLinea: .asciiz "\n"
zero: .float 0.0
var_0: .float 8.400
var_1: .float 2.500
var_2: .float 10.000
var_3: .float 2.000

#--------------------- Ejecuciones ---------------------
.text
lwc1 $f31, zero
lwc1 $f0, var_0
lwc1 $f1, var_1
add.s $f2, $f0, $f1
li $v0, 2
add.s $f12, $f31, $f2
mov.s $f30, $f12  #Movemos el registro 12 al 30 iniciado a false
syscall #Llamada al sistema
li $v0, 4
la $a0, saltoLinea
syscall #Llamada al sistema
lwc1 $f6, var_2
lwc1 $f7, var_3
sub.s $f8, $f6, $f7
li $v0, 2
add.s $f12, $f31, $f8
mov.s $f30, $f12  #Movemos el registro 12 al 30 iniciado a false
syscall #Llamada al sistema
li $v0, 4
la $a0, saltoLinea
syscall #Llamada al sistema
