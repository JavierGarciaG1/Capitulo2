@ Practicas C 2
@ Archivo tipo1.s
@ Nombre: garcia gomez javier Ernesto
@ Fecha: 6 diciembre 2021
.global _start
_start:
mov r1, #1
mov r2, #2
bl nivel1
mov r5, #5 /* Siguiente instrucción */
nivel1: push {lr} /*push a lr */
mov r3, #3   /* 3 a r3*/
bl nivel2   /*se hace salto a nivel2*/
pop {lr}   /*pop a lr*/
bx lr		
nivel2: mov r4, #4
bx lr
