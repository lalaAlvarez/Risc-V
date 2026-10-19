.data 
	Vector_1: .word 1,2,3,4,5,6,7,8,9
	Vector_2: .word -1,2,-3,4,-5,6,-7,8,-9
	
.text

main:
	addi s0, zera, 0         
	addi s1, zero, 0      
	addi s4, zero, 9         
	la s2, Vector_1         
	la s3, Vector_2  


	