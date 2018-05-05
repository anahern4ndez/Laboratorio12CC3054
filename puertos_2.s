@ Laboratorio #12 - mostrando el numero ingresado por teclado en binario en tres leds
@ Se tomo como programa base el ejemplo puertos_2 subido a canvas
@ Funciona con cualquier puerto, utilizando biblioteca gpio0_2.s
@ Maria Fernanda Lopez 17160 y Ana Lucia Hernandez 17138

/* el pin 16 sera para el menos significa y el 21 para el más significativo */

 .text
 .align 2
   .global main
main:
    @@ grabar registro de enlace en la pila
    stmfd    sp!, {lr}

	@utilizando la biblioteca GPIO (gpio0.s)
	bl GetGpioAddress @solo se llama una vez
		
	@GPIO para escritura puerto 16
	mov r0,#16
	mov r1,#1
	bl SetGpioFunction
	
	@GPIO para escritura puerto 20
	mov r0,#20
	mov r1,#1
	bl SetGpioFunction

	@GPIO para escritura puerto 21
	mov r0,#21
	mov r1,#1
	bl SetGpioFunction

programa:
	bl off

	ldr r0,=mes
	bl puts
	
	ldr r0,=formato
	ldr r1,=dato
	bl scanf

    ldr r3,=dato
    ldr r3, [r3]
	cmp r3,#1
	bleq uno
	cmp r3,#2
	bleq dos
	cmp r3,#3
	bleq tres
	cmp r3,#4
	bleq cuatro
	cmp r3,#5
	bleq cinco
	cmp r3,#6
	bleq seis
	cmp r3,#7
	bleq siete

    @@ r0, r3 <- 0 como senal de no error al sistema operativo
    mov    r3, #0
    mov    r0, r3

    @ colocar registro de enlace para desactivar la pila y retorna al SO
    ldmfd    sp!, {lr}
    bx    lr

.data
.align 2
.global myloc

dato:	.word 0
formato:	.asciz "%d"
mes:	.asciz "Numero? "
myloc:
.word 0

.end

