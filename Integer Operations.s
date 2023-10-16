.section .data
/* Prompt message */
prompt: .asciz "Please enter two signed integers: "

/* Response message */
response: .asciz "You entered %d and %d from the keyboard, now some operations on those values!\n"

/* Format pattern for scanf */
pattern: .asciz "%d %d"

/* Where scanf will store the numbers read */
value_read1: .word 0
value_read2: .word 0

.section .program

run:

    @ Display prompt message
    ldr r0, =prompt
    ldr r1, =%d
    ldr r2, =%d
    printf

    @ Read integers
    ldr r0, =pattern
    ldr r1, =value_read1
    ldr r2, =value_read2
    scanf

    @ operations
    ldr r0, =response
    ldr r1, [r1]
    ldr r2, [r2]
    printf

    @ sum
    add r3, r1, r2
    printf

    @ product
    mul r3, r1, r2
    printf

    @ AND
    and r3, r1, r2
    printf

    @ OR
    or r3, r1, r2
    printf

    @ end program
    kill