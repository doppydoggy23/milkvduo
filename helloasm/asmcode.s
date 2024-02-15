
.section .text
.globl sumfunc, powfunc, add10func


# sum function, adds two numbers
sumfunc:
    add a0, a0, a1
    ret

# power function, elevates a0 to the a1 power
powfunc:
    #
pow1:
    mv t0, a0
    addi t1, a1, -1
pow1loop:
    #
    mv t3, t0
    addi t4, a0, -1
mult1loop:
    add t0, t0, t3
    addi t4, t4, -1
    bgt t4, zero, mult1loop    
    #
    addi t1, t1, -1
    bgt t1, zero, pow1loop
    mv a0, t0
    ret

#adds 10 to a variable. a0=pointer to variable
add10func:
    ld t0, 0(a0)
    addi t0, t0, 10
    sd t0, 0(a0)
    ret
