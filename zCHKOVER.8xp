If X>Xmax-2*Xscl
Then
Text(X,0,"Continue...")
Repeat getKey
End
ClrDraw
Xmin→X
End

If Y>Ymax
Then
X+Xscl→X
Ymin+Yscl→Y
End