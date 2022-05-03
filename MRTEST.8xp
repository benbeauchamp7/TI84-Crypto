If F≠π
Then
0→Y:0→X
0→Ymin:0→Xmin
265→Ymax:164→Xmax:9→Yscl:15→Xscl
TextColor(BLUE)
Disp "Check if A is a"
Disp "Miller Rabin witness"
Disp "of N's compositeness"
Prompt N,A
End
A→U
A→P

N-1→θ
0→K
Repeat remainder(θ,2)
θ/2→θ
K+1→K
End
(N-1)/2^K→Q

ClrDraw
DispGraph

N-1→V
prgmZOUTNUM
Text(X,Y,"=")
Y+Yscl→Y
Q→V
prgmZOUTNUM
Text(X,Y,"*2^")
Y+3*Yscl→Y
K→V
prgmZOUTNUM

0→Y
X+Xscl+5→X
Text(X,Y,"0≤i≤k-1  |  a^q(2^i)")
0→Y
X+Xscl→X

For(J,0,K-1)
    Text(X,Y,"i=")
    Y+2*Yscl→Y
    J→V
    prgmZOUTNUM
    5*Yscl→Y
    Text(X,Y,"|")
    Y+Yscl→Y

    P→V
    prgmZOUTNUM
    Text(X,Y,"^")
    Y+Yscl→Y
    If J=0
    Then
        Q→V
        prgmZOUTNUM
        Text(X,Y,"=")
        Y+Yscl→Y

        π→S
        If F=π
        Then
            U→G
            Q→A
            prgmFASTPOW
        Else
            π→F
            U→G
            Q→A
            prgmFASTPOW
            0→F
        End
        0→S

    Else
        2→V
        prgmZOUTNUM
        Text(X,Y,"=")
        Y+Yscl→Y

        π→S
        If F=π
        Then
            P→G
            2→A
            prgmFASTPOW
        Else
            π→F
            P→G
            2→A
            prgmFASTPOW
            0→F
        End
        0→S

    End

    R→P
    P→V
    If J=0
    Then
        If R=1 or R=(N-1)
        Then
            TextColor(RED)
            prgmZOUTNUM
            Text(X,Y,"=+-1 (FAIL)")
            TextColor(BLUE)
            Return
        Else
            TextColor(GREEN)
            prgmZOUTNUM
            Text(X,Y,"≠+-1")
            TextColor(BLUE)
        End
    Else
        If R=(N-1)
        Then
            TextColor(RED)
            prgmZOUTNUM
            Text(X,Y,"=-1 (FAIL)")
            TextColor(BLUE)
            Return
        Else
            TextColor(GREEN)
            prgmZOUTNUM
            Text(X,Y,"≠-1")
            TextColor(BLUE)
        End
    End

    0→Y
    X+Xscl→X
End