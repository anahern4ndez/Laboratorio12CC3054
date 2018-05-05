@Programa que contiene las subrutinas para encender los leds de acuerdo a que numero se ingreso
@4/05/2018 - Laboratorio #12
@Maria Fernanda Lopez y Ana Lucia Hernandez

.global uno, dos, tres, cuatro, cinco, seis, siete, off

uno:

	@GPIO 16 enciende el led (enciende puerto>directa)
	mov r0,#16
	mov r1,#0
    push {lr}
	bl SetGpio
	pop {lr}
	mov pc,lr

dos:

	@GPIO 20 enciende el led (enciende puerto>directa)
	mov r0,#20
	mov r1,#0
    push {lr}
	bl SetGpio
	pop {lr}
	mov pc,lr

tres:

	@GPIO 16 enciende el led (enciende puerto>directa)
	mov r0,#16
	mov r1,#0
    push {lr}
	bl SetGpio
	pop {lr}

	@GPIO 20 enciende el led (enciende puerto>directa)
	mov r0,#20
	mov r1,#0
    push {lr}
	bl SetGpio

	pop {lr}
	mov pc,lr
cuatro:
	@GPIO 16 enciende el led (enciende puerto>directa)
	mov r0,#21
	mov r1,#0

    push {lr}
	bl SetGpio
	pop {lr}
	mov pc,lr
cinco:
	
	@GPIO 16 enciende el led (enciende puerto>directa)
	mov r0,#16
	mov r1,#0

    push {lr}
	bl SetGpio
	pop {lr}

	@GPIO 16 enciende el led (enciende puerto>directa)
	mov r0,#21
	mov r1,#0
    push {lr}
	bl SetGpio
	pop {lr}

	mov pc,lr

seis:
	@GPIO 16 enciende el led (enciende puerto>directa)
	mov r0,#20
	mov r1,#0
    push {lr}
	bl SetGpio
	pop {lr}

	@GPIO 16 enciende el led (enciende puerto>directa)
	mov r0,#21
	mov r1,#0
    push {lr}
	bl SetGpio
	pop {lr}

	mov pc,lr

siete:

	push {lr}
	@GPIO 16 offel led 
	mov r0,#16
	mov r1,#0
	bl SetGpio
	pop {lr}
    push {lr}
	@GPIO 20 off el led 
	mov r0,#20
	mov r1,#0
    push {lr}
	bl SetGpio
	pop {lr}

	@GPIO 20 enciende el led 
	mov r0,#21
	mov r1,#0
    push {lr}
	bl SetGpio

	pop {lr}
	mov pc,lr	

off: /* rutina que apaga todos los leds */
	@GPIO 16 off el led
	mov r0,#16
	mov r1,#1
    push {lr}
	bl SetGpio
    pop {lr}

	@GPIO 20 off el led 
	mov r0,#20
	mov r1,#1
    push {lr}
	bl SetGpio
    pop {lr}

	@GPIO 21 off el led
	mov r0,#21
	mov r1,#1
    push {lr}
	bl SetGpio
    pop {lr}

	mov pc,lr	

