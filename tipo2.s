@ Practicas c 2
@ Archivo tipo2.s
@ Nombre: Garcia Gomez Javier Ernesto
@ Descripcion: if simple
@ Fecha: 6 diciembre 2021

.data		//constante a y c
a: .word  5
c: .word 10
 .global _start
    _start:	//empieza el programa
ldr r1, =a	
ldr r2, =c
cmp r1, r2	//compara r1 y r2
bne sino	//si no es va a etiqueta sino
entonces:
mov r1, #40	//se mueve 40 a r1
b final		//salta a el final
sino:
mov r2, #50	//se mueve 50 a r2
final: 	
