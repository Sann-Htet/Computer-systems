@5 // assgin 5 to A register
D=A // move the value in A register to D register
@0 // assign 0 to A register
M=D // set RAM[0] = value in D register
@4 // assign 4 to A register
D=A // move the value in A register to D register
@1 // assign 0 to A register
M=D // set RAM[1] = value in D register
@3 // assign 3 to A register
D=A // move the value in A register to D register
@2 // assign 2 to A register
M=D // set RAM[2] = value in D register
@2 // assign 2 to A register
D=A // move the value in A register to D register
@3 // assign 3 to A register
M=D // set RAM[3] = value in D register
@1 // assign 1 to A register
D=A // move the value in A register to D register
@4 // assign 4 to A register
M=D // set RAM[4] = value in D register
@0 // assign 0 to A register
D=A // move the value in A register to D register
@5 // assign 5 to A register 
M=D // set RAM[5] = value in D register
@0 // assign 0 to A register
D=A // move the value in A register to D register
@i // allocate the memory location for variable i
M=D // set M[i] = 0

(LOOP)
@i // assign the address for i in A register
D=M // move the value in 'i' variable to D register
@6 // assign 6 to A register 
D=D-A // subtract the value in A register from D register
@END 
D;JGE // if (D>=0) then goto END
@i
A=M // A register = RAM[i]
D=M // D register = M[A]
@IF
D;JEQ // if (D==0) then goto IF block 
@i
M=M+1 // increment 'i' variable
@LOOP 
0;JMP // goto LOOP block
(IF)
@5 
D=A // D=5
@i
A=M // A=RAM[i]
M=D // M[A]=D
@LOOP
0;JMP // goto LOOP
(END)
@END
0;JMP // Infinite loop
