If F≠π
Then
    0→Y:0→X
    0→Ymin:0→Xmin
    265→Ymax:164→Xmax:9→Yscl:15→Xscl
    TextColor(BLUE)
    Disp "N=pq, factor w/A"
    Prompt N,A
    ClrDraw
    DispGraph

    Text(X,Y,"let an=")
    Y+6*Yscl→Y
    A→V
    prgmZOUTNUM
    Text(X,Y,"^(n!)   mod ")
    Y+8*Yscl→Y
    N→V
    prgmZOUTNUM
    Yscl→Y
    X+Xscl→X
    Text(X,Y,">gcd(a_n-1,")
    Y+10*Yscl→Y
    N→V
    prgmZOUTNUM
    Text(X,Y,")")
    0→Y
    X+Xscl→X
    Text(X,Y,"a0=")
    Y+3*Yscl→Y
    A→V
    prgmZOUTNUM
    0→Y
    X+Xscl→X
End

1→J
While 1
    Text(X,Y,"a")
    Y+Yscl→Y
    J→V
    prgmZOUTNUM
    Text(X,Y,"=")
    Y+Yscl→Y
    π→S
    π→F
        A→G
        J→A
        prgmFASTPOW
        TextColor(BLUE)
        R→A
    0→S
    0→F
    A→V
    prgmZOUTNUM
    Y+Yscl→Y
    Text(X,Y,"(")
    Y+Yscl→Y
    N→V
    prgmZOUTNUM
    Text(X,Y,") >")
    0→Y
    X+Xscl→X

    Text(X,Y,"gcd(")
    Y+4*Yscl→Y
    A-1→V
    prgmZOUTNUM
    Text(X,Y,",N)=")
    Y+4*Yscl→Y
    gcd(A-1,N)→V
    If V=1 or V=N
    Then
        TextColor(RED)
        prgmZOUTNUM
    Else
        TextColor(GREEN)
        prgmZOUTNUM

        0→Y
        X+Xscl→X
        Text(X,Y,"N=pq=")
        Y+5*Yscl→Y
        prgmZOUTNUM
        Text(X,Y,"*")
        Y+Yscl→Y
        V→R
        N/V→V
        prgmZOUTNUM
        Return
    End
    TextColor(BLUE)

    1+J→J
    0→Y
    X+Xscl→X
End
