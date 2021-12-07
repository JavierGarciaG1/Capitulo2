@ Practicas C 4
@ Archivo tipo4.s
@ Nombre: garcia gomez javier Ernesto
@ Descripcion: programa utilizando un switch
@ Fecha: 6 diciembre 2021
.data
xd: .word 10
.global _start
_start:
mov r1, #10
 /* Aqui se evalua el caso 5 */
  case_5:             /* case 5 */
    cmp r1, #5        /*  r0 = 5  */
    bne case_10       /* si  r0 != 5 branch a  case_10 */
    mov r7,#1
    b terminar    /* break */

  case_10:            /* case 10 */
    cmp r1, #10       /*  r0 = 10  */
    bne case_default  /* If r0 != 10 branch a case_default */
    mov r7,#8
    b terminar    /* break */

  case_default:
    mov r7,#4
    
terminar:
