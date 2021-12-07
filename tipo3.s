@ Practicas C 3
@ Archivo tipo3.s
@ Nombre: garcia gomez javier Ernesto
@ descripcion: programa utilizando un for
@ Fecha: 6 diciembre 2021

.data
var1: .asciz " %d\012"
.text
.global _start
_start:
mov r0, #1 //i=1
push	{r0, r5, r6, lr} // Iniciamos la pila en r4, r5 y r6
startloop: 
cmp r0, #10 //compara r0 a 10
bgt  endloop //si es mayor va a endloop
mov	r1, r4 // Movemos al registro 1
mov	r7, r5 //Movemos al registro 0
add	r4, r4 //#1 @ Aumentamos en 1
movne	r7, r6 // Movemos al registro 0
bl	printf // Imprimimos el mesaje
add r0,r0,#1 //1++
b startloop
endloop: 
