@4 // puts the constant 4 into A register
D=A // puts the constant 4 into D register
@i // puts RAM address of i in A register
M=D // assign D register to RAM[i]
@i
D=M // D=i
@5
D=D-A // D=i-5
@ELSE
D;JGE // if (i-5)>=0 goto else
@3 // puts constant 3 into A register
D=A // puts the constant 3 into D register
@j
M=D // set j's value in RAM[j]=3
@END
0;JMP // goto end
(ELSE)
@2 
D=A // assign 2 in D register
@j
M=D // set RAM[j]=3
(END)
@END
0;JMP // infinite loop
