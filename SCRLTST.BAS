100 REM Classic Scrolling Test Pattern (SCRLTST.BAS)
110 REM Printed to the default console
120 REM
130 REM by Jim McClanahan W4JBM (July 2020)
140 REM
150 REM It is rare, but...
160 REM things like the Hazeltine 1500 could use the Tilde insted of Escape
170 REM for the lead-in to control codes, so we might need to skip it.
180 REM In that case, change the 127 to 126 in the two places it is used.
190 REM
200 REM Define some constants...
210 REM
220 W%=72 : REM Width to Print
230 O%=95 : REM Offset from first to last character
240 D1%=10:D2%=100 : REM Delay constants
250 REM
260 REM Start Printing
270 REM
280 FOR I%=32 TO 127
290 FOR J%=I% TO I%+W%
300 C%=J%:IF C%>127 THEN C%=C%-O%
310 PRINT CHR$(C%);
320 FOR D%=1 TO D1%:NEXT D%
330 NEXT J%
340 PRINT
350 A$=INKEY$
360 IF LEN(A$)<>0 THEN 400
370 FOR D%=1 TO D2%:NEXT D%
380 NEXT I%
390 GOTO 280
400 END
