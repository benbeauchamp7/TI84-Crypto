Disp "g^-1 (mod N)"
Prompt G,N
π→F
G→B
N→A
N→P
prgmEUCLID
P→N


X+Xscl→X
0→Y

TextColor(GREEN)
G→V
prgmZOUTNUM
Text(X,Y,"^-1=")
Y+4*Yscl→Y

L₁(dim(L₁))→θ
prgmMOD
Ans→V
prgmZOUTNUM

Text(X,Y,"(mod ")
Y+5*Yscl→Y
N→V
prgmZOUTNUM
Text(X,Y,")")

X+Xscl→X
0→Y

G→V
prgmZOUTNUM
Text(X,Y,"*")
Y+Yscl→Y
L₁(dim(L₁))→V
prgmZOUTNUM
Text(X,Y,"=")
Y+Yscl→Y

G*L₁(dim(L₁))→θ
prgmMOD
Ans→V
prgmZOUTNUM

Text(X,Y," (mod ")
Y+5*Yscl→Y
N→V
prgmZOUTNUM
Text(X,Y,")")

TextColor(BLUE)