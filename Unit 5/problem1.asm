@5 //puts the constant 5 into A register
D=A // puts the constant 5 into D register
@j // puts RAM address of j in A register
M=D // assign D register to RAM[A]
@i
M=1
(LOOP)
@i
D=M // D=i
@5
D=D-A // D=i-5
@END
D;JGE // if (i-5)>=0 goto END
@i
D=M // D=i
@j
M=M-1 // j=j-1
@i
M=M+1 // i=i+1
@LOOP
0;JMP // goto LOOP
(END)
@END
0;JMP // infinite loop
