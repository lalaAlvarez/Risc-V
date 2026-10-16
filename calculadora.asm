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