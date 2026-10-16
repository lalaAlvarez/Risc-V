.text
main:
	addi s0, zero, 0 # selector
	addi s1, zero, 5 # a
	addi s2, zero, 3 #b
	addi s3, zero, 0 # c
	
	add a0, zero, s1 # a y b pero para funciones
	add a1, zero, s2
	
	addi a7, zero, 10
	ecall

	# parte del switch
	addi t0, zero, 1
	beq s0, t0, caso_1
	
	addi t0, zero, 2
	beq s0, t0, caso_2
	
	addi t0, zero, 3
	beq s0, t0, caso_3
	
	jal zero, default

caso_1:
	jal ra, suma
	jal zero, fin_switch
	
caso_2:
	jal ra, resta
	jal zero, fin_switch

caso_3:
	jal ra, multi
	jal zero, fin_switch

default:
	jal ra, andBitwise
	
fin_switch:
	add s3, zero, a0
	addi a7, zero, 10
	ecall

suma:
    add a0, a0, a1    
    jalr x0, ra, 0    

resta:
    sub a0, a0, a1     
    jalr x0, ra, 0     

multi:
    mul a0, a0, a1     
    jalr x0, ra, 0   

andBitwise:
    and a0, a0, a1     
    jalr x0, ra, 0   