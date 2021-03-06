If F≠π
Then
    0→X:0→Y
    0→Ymin:0→Xmin
    265→Ymax:164→Xmax:9→Yscl:15→Xscl
    Disp "g^x=h (p)"
    Disp "N=ord_p(g)"
    Prompt G,H,P,N
    ClrDraw
    DispGraph
End

int(√(N))+1→N
ClrList L₃
G→L₃(1)
H→L₃(2)
P→L₃(3)
N→L₃(4)
π→F
π→S
    P→N
    prgmINVERT
    L₁(dim(L₁))→G

    L₃(4)→A
    P→N
    prgmFASTPOW
    R→K
0→F
0→S
L₃(1)→G
L₃(2)→H
L₃(3)→P
L₃(4)→N

0→Y
0→X
ClrList L₁
TextColor(BLUE)
Text(X,Y,"g^i (p):")
Y+6*Yscl→Y
For(I,0,N)
    remainder(G^I,P)→L₁(I+1)

    L₁(I+1)→V
    prgmZOUTNUM

    If I<N
    Then
        Text(X,Y,"|")
        Y+Yscl→Y
    End
End
0→Y
X+Xscl→X

Text(X,Y,"hg^(-ni) (p):")
Y+10*Yscl→Y
For(I,0,N)
    If I>0
        remainder(H*K,P)→H

    For(J,1,dim(L₁))
        If L₁(J)=H
            TextColor(GREEN)
    End

    H→V
    prgmZOUTNUM

    TextColor(BLUE)

    If I<N
    Then
        Text(X,Y,"|")
        Y+Yscl→Y
    End
End
X+Xscl→X
0→Y
Text(X,Y,"x=i+nj")