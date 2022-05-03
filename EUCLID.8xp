0→Y:0→X:0→I
1→R
0→Ymin:0→Xmin
265→Ymax:164→Xmax:9→Yscl:15→Xscl
ClrList L₁
ClrList L₂
If F≠π
Prompt A,B

ClrDraw
DispGraph

If B>A
Then
A→R
B→A
R→B
End

Text(X,Y,"A:")
Y+2*Yscl→Y
A→V
prgmZOUTNUM

Text(X,Y,"B:")
Y+2*Yscl→Y
B→V
prgmZOUTNUM
X+Xscl→X

0→Y

A→θ
prgmZGETLEN
L→L₁(1)

B→θ
prgmZGETLEN
L→L₁(2)

While R
If B>A
Then
A→R
B→A
R→B
End

prgmZCHKOVER

A→V
L₁(1)→M
prgmZOUTNUM

Text(X,Y,"=")
Y+Yscl→Y

int(A/B)→V
V→L₂(I+1)
3→M
prgmZOUTNUM

Text(X,Y,"*")
Y+Yscl→Y

B→V
L₁(2)→M
prgmZOUTNUM

Text(X,Y,"+")
Y+Yscl→Y

A→θ
B→N
If π=F
Then
prgmMOD
Ans→θ
Else
π→F
prgmMOD
Ans→θ
0→F
End
θ→R
R→V
prgmZOUTNUM
R→A

0→Y
X+Xscl→X
I+1→I
End

X→T
X+Xscl→X
prgmZCHKOVER
If X-2=T
T→X

gcd(A,B)
Text(X,0,"Ans=")
Text(X,4*Yscl,Ans)

0→M
{1,0}→L₁
For(I,3,dim(L₂)+1)
L₁(I-2)-L₂(I-2)*L₁(I-1)→L₁(I)
End

X+Xscl→X
prgmZCHKOVER

0→Y
Text(X,Y,"A:")
Y+2*Yscl→Y
For(I,1,dim(L₁))
L₁(I)→V
prgmZOUTNUM
Y+Yscl→Y
End

{0,1}→L₁
For(I,3,dim(L₂)+1)
L₁(I-2)-L₂(I-2)*L₁(I-1)→L₁(I)
End

X+Xscl→X
0→Y
Text(X,Y,"B:")
Y+2*Yscl→Y
For(I,1,dim(L₁))
L₁(I)→V
prgmZOUTNUM
Y+Yscl→Y
End