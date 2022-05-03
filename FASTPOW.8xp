If F≠π
Then
0→G:0→A:0→N:0→R
0→X:0→Y
0→Ymin:0→Xmin
265→Ymax:164→Xmax:9→Yscl:15→Xscl
ClrList L₁
ClrHome
Disp "g^A (mod N)"
Prompt G,A,N
DispGraph
End

A→θ
prgmZTOBIN
For(I,1,dim(L₆))
G→L₁(I)
remainder(G*G,N)→G
End

1→R
For(I,1,dim(L₆))

If L₆(I)
Then
TextColor(GREEN)
remainder(R*L₁(I),N)→R
Else
TextColor(RED)
End

If S≠π
Then
L₁(I)→V
prgmZOUTNUM
Y+Yscl→Y
End

End

TextColor(BLUE)
If S≠π
Then
R→V
X+Xscl→X
Yscl→Y
prgmZOUTNUM
Text(X,Y,"(mod ")
Y+5*Yscl→Y
N→V
prgmZOUTNUM
Text(X,Y,")")
End