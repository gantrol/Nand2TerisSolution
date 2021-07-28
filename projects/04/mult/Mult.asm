// RAM[2]=RAM[0]*RAM[1]
// ASSUME all input are larger than 0, and the result is less than 36K

// n = 0
@n
M=0
// result = 0
@result
M=0

(LOOP)
    // if (R0 == n) goto STOP
    @n
    D=M
    @R0
    D=M-D
    @STOP
    D;JEQ

    // result = result + R1
    // Why not @R1 D=M  @result M=D+M?
    @result
    D=M
    @R1
    D=D+M
    @result
    M=D
    // n = n + 1
    @n
    M=M+1
    // goto LOOP
    @LOOP
    0;JMP
(STOP)
    // R1 = result

    @result
    D=M
    @R2
    M=D
(END)
    @END
    0;JMP
