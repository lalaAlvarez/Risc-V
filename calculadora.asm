.text
main:
	addi s0, zero, 0 # selector
	addi s1, zero, 5 # a
	addi s2, zero, 3 #b
	addi s3, zero, 0 # c
	
	add a0, zero, s1 # a y b pero para fucniones
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

case_1:
	# Falta funcion
	jal zero, end_switch
case_2:
	# Falta funcion
	jal zero, end_switch
case_3:
	# Falta funcion
	jal zero, end_switch
default:
	# Falta funcion
	
end_switch:
	add s3, zero, a0
	addi a7, zero, 10
	ecall