If F≠π
Then
    0→X:0→Y
    0→Ymin:0→Xmin
    265→Ymax:164→Xmax:9→Yscl:15→Xscl
    L₄→L₃
    Disp "g^x=h mod p"
    Prompt G,H,P
    Disp "start at"
    Prompt I
    If I=0
    Then
        ClrList L₄
        {0,1,1,0,0,0,0}→L₄
    End
    ClrDraw
    DispGraph
End

Text(X,Y,"i   |   xi   |   yi   |   ai   |   Bi   |   ci   |   Di")
X+Xscl→X

For(J,1,dim(L₄))
    L₄(J)→V
    prgmZOUTNUM

    If J<dim(L₄)
    Then
        Text(X,Y,"|")
        Y+Yscl→Y
    End
End
0→Y
X+Xscl→X


For(I,I+1,P-1)
    I→L₄(1)

    If remainder(L₄(2),P)<(P/3)
    Then
        remainder(L₄(4)+1,P-1)→L₄(4)
    Else
        If remainder(L₄(2),P)<(2*P/3)
        Then
            remainder(L₄(4)*2,P-1)→L₄(4)
            remainder(L₄(5)*2,P-1)→L₄(5)
        Else
            remainder(L₄(5)+1,P-1)→L₄(5)
        End
    End

    remainder(piecewise(G*L₄(2),remainder(L₄(2),P)<(P/3),L₄(2)*L₄(2),remainder(L₄(2),P)<(2*P/3),H*L₄(2),remainder(L₄(2),P)<(P)),P)→L₄(2)

    For(K,1,2)
        If remainder(L₄(3),P)<(P/3)
        Then
            remainder(L₄(6)+1,P-1)→L₄(6)
        Else
            If remainder(L₄(3),P)<(2*P/3)
            Then
                remainder(L₄(6)*2,P-1)→L₄(6)
                remainder(L₄(7)*2,P-1)→L₄(7)
            Else
                remainder(L₄(7)+1,P-1)→L₄(7)
            End
        End

        Lbl B

        remainder(piecewise(G*L₄(3),remainder(L₄(3),P)<(P/3),L₄(3)*L₄(3),remainder(L₄(3),P)<(2*P/3),H*L₄(3),remainder(L₄(3),P)<(P)),P)→L₄(3)
    End

    If L₄(2)=L₄(3)
    Then
    TextColor(GREEN)
    1→S
    End

    For(J,1,dim(L₄))
        L₄(J)→V
        prgmZOUTNUM

        If J<dim(L₄)
        Then
            Text(X,Y,"|")
            Y+Yscl→Y
        End
    End
    0→Y
    X+Xscl→X

    If S=1
    Return
End
    