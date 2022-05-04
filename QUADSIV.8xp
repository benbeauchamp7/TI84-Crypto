0→W
If F≠π
Then
    0→X:0→Y
    0→Ymin:0→Xmin
    265→Ymax:164→Xmax:9→Yscl:24→Xscl
    Disp "Check which in L₁ is B-smooth"
    Menu("Choose f=","x",XO,"x^2-N (pq)",PQ)

    Lbl XO
    Prompt B,N
    1→R
    1→W
    Goto DN

    Lbl PQ
    Disp "N=pq,R=len"
    Prompt B,N,R
    0→W

    Lbl DN

    ClrDraw
    DispGraph
End

int(√(N))→C
For(I,1,R)
    If W=0
    Then
        (C+I)^2-N→E
    Else
        N→E
    End
    E→V
    prgmZOUTNUM
    Text(X,Y,":")
    Y+int(0.8*Yscl)→Y
    prgmZOUTNUM
    E→K
    For(J,2,B)
        0→H
        While int(K/J)=K/J
            K/J→K
            1→H
        End

        Y→D
        X+12→X
        J→V
        prgmZOUTNUM
        max(X-12,0)→X
        Text(X,D,">")
        D+Yscl→Y

        If H=0
        Then
            TextColor(GREEN)
        Else
            TextColor(RED)
        End

        K→V
        prgmZOUTNUM

        TextColor(BLUE)
    End
    X+Xscl→X
    0→Y
End