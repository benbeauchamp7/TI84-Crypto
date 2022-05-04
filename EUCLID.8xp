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

If S≠π
Then
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
End

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

    int(A/B)→L₂(I+1)
    If S≠π
    Then
        prgmZCHKOVER

        A→V
        L₁(1)→M
        prgmZOUTNUM

        Text(X,Y,"=")
        Y+Yscl→Y

        int(A/B)→V
        3→M
        prgmZOUTNUM

        Text(X,Y,"*")
        Y+Yscl→Y

        B→V
        L₁(2)→M
        prgmZOUTNUM

        Text(X,Y,"+")
        Y+Yscl→Y
    End

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
    If S≠π
    Then
        R→V
        prgmZOUTNUM
    End
    R→A

    0→Y
    X+Xscl→X
    I+1→I
End


If S≠π
Then
    X→T
    X+Xscl→X
    prgmZCHKOVER
    If X-2=T
        T→X

    gcd(A,B)
    Text(X,0,"Ans=")
    Text(X,4*Yscl,Ans)
End

0→M
{1,0}→L₁
For(I,3,dim(L₂)+1)
    L₁(I-2)-L₂(I-2)*L₁(I-1)→L₁(I)
End

If S≠π
Then
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
End

{0,1}→L₁
For(I,3,dim(L₂)+1)
    L₁(I-2)-L₂(I-2)*L₁(I-1)→L₁(I)
End

If S=π
    Return

X+Xscl→X
0→Y
Text(X,Y,"B:")
Y+2*Yscl→Y
For(I,1,dim(L₁))
    L₁(I)→V
    prgmZOUTNUM
    Y+Yscl→Y
End