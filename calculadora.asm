.text
main:
	addi s0, zero, 0 # int selector = 0
	addi s1, zero, 5 # int a = 5
	addi s2, zero, 3 # int b = 3
	addi s3, zero, 0 # int c = 0
	
	add a0, zero, s1 # a y b pero para funciones
	add a1, zero, s2
	
	addi a7, zero, 10
	ecall

	# parte del switch
	addi t0, zero, 1
	beq s0, t0, caso_1 # si el selector es igual a 1 va a el caso 1
	
	addi t0, zero, 2
	beq s0, t0, caso_2 # si el selector es igual a 2 va a el caso 2
	
	addi t0, zero, 3
	beq s0, t0, caso_3  # si el selector es igual a 3 va a el caso 3
	
	jal zero, default # y si no es ninguno ps se va al default

caso_1:
	jal ra, suma # c = suma (a, b)
	jal zero, fin_switch #break
	
caso_2:
	jal ra, resta # c = resta(a,b)
	jal zero, fin_switch #break

caso_3:
	jal ra, multi # c = multiplicacion(a, b)
	jal zero, fin_switch #break

default:
	jal ra, andBitwise # c = andBitwise(a,b)
	
fin_switch:
	add s3, zero, a0 # nuestro valor final
	addi a7, zero, 10 # se finaliza el programa
	ecall # Con esto ya se detiene la ejecucion del programa

suma:
    add a0, a0, a1 # c = a + b
    jalr x0, ra, 0 # return c   

resta:
    sub a0, a0, a1 # c = a - b 
    jalr x0, ra, 0 # return c

multi:
    mul a0, a0, a1 # c = a * b     
    jalr x0, ra, 0   # return c

andBitwise:
    and a0, a0, a1 # c = a & b 
    jalr x0, ra, 0   # return c