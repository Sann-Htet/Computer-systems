(WHILE)
@i 
D=M // set D=RAM[i]
@END
D;JNE // if (D!=0) then goto END
@j
M=M+1 // increment j variable
@j 
D=M // set D=RAM[j]
@5
D=D-A // set D=RAM[j]-5
@WHILE
D;JNE // if (D!=0) then goto WHILE
@j
D=M // set D=RAM[j]
@i
M=D // set RAM[j]=D
@WHILE
0;JMP // goto WHILE
(END)
@END
0;JMP // infinite loop
