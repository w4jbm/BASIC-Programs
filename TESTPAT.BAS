10 REM Simple Output Test Pattern
20 REM
30 REM by Jim McClanahan W4JBM (July 2020)
40 REM
50 W=72 : REM Width to Print
60 O=95 : REM Offset from first to last character
70 FOR I=32 TO 126
80 FOR J=I TO I+W
90 C=J:IF C>126 THEN C=C-O
100 PRINT CHR$(C);
110 NEXT J
120 PRINT
130 NEXT I
140 GOTO 70
