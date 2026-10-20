.data 
	Vector_1: .word 1,2,3,4,5,6,7,8,9
	Vector_2: .word -1,2,-3,4,-5,6,-7,8,-9
	
.text

main:
	addi s0, zero, 0         
	addi s1, zero, 0      
	addi s4, zero, 9         
	la s2, Vector_1         
	la s3, Vector_2  

for:
	bge s1, s4, end_for
	slli t0, s1, 2
	add t1, s2, t0
	lw a0, 0(t1)           

	add t2, s3, t0         
	lw a1, 0(t2)          
	
	jal ra, funcionProd 
	add s0, s0, a0         
	    
	addi s1, s1, 1         
	jal x0, for

end_for:
	addi a7, zero, 10
	ecall

funcionProd:
	mul a0, a0, a1
	jalr zero, ra, 0
   
	