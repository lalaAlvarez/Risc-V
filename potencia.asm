.text
main:
    addi a0, zero, 6     
    addi a1, zero, 6        
    jal ra, Potencia 
    add s0, zero, a0 
    addi a7, zero, 10
    ecall

Potencia:
    
    slti t0, a1, 1      
    beq t0, zero, else_branch 

    addi a0, zero, 1      
    jal zero, end_potencia

else_branch:
    #Falta lo recursivo

end_potencia:
    jalr zero, ra, 0