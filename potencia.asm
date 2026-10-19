.text
main:
    addi a0, zero, 6     
    addi a1, zero, 6        
    jal ra, Potencia 
    add s0, zero, a0 
    addi a7, zero, 10
    ecall

Potencia:
    addi sp, sp, -8 
    sw ra, 4(sp)      
    sw a0, 0(sp)     
    
    slti t0, a1, 1      
    beq t0, zero, else_branch 

    addi a0, zero, 1      
    jal zero, end_potencia

else_branch:
    addi a1, a1, -1  
    jal ra, Potencia    
    lw t1, 0(sp)       
    mul a0, t1, a0     

end_potencia:
    lw ra, 4(sp)       
    addi sp, sp, 8      
    jalr zero, ra, 0
