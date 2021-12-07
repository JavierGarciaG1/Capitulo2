@ Practicas c 5
@ Archivo tipo5.s
@ Nombre: Garcia Gomez Javier Ernesto
@ Descripcion: suma de vectores
@ Fecha: 6 diciembre 2021
.data
var1: .asciz "La suma es %d\n"
var2: .word 32, 120, 90, -50, 70
.text
.global _start /* Empieza programa */
_start: push {r5, lr} /* Se  apuntan variables  r4 a var2 */
mov r5, #0
mov r3, #5
ldr r4, =var2 /* Bucle de suma */
bucle: ldr r4, [r3], #4
add r2, r2, r4		/*suma a r2*/
subs r1, r1, #1
bne bucle		/*repite el buvle*/
ldr r1, =var1		/* imprimimos */
bl printf
pop {r5, lr}
bx lr			/*recupera registros*/
