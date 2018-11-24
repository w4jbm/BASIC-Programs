# BASIC Programs

My first computer was an Ohio Scientific (OSI) C1P and the first langauge I worked with was BASIC. (The second was hand assembling 6502 code.)

Although much maligned these days, I still believe BASIC was an important part of the emergence of the personal computer. The fact is that for most of the generation that was born in the 1960s and 1970s, it is likely that BASIC was their first (or at least one of the first) programming languages that they were exposed to. Some of my other thoughts on using BASIC for learning and problem solving can be found on my blog at:

https://w4jbm.wordpress.com/2018/05/28/the-kolakoski-sequence-in-basic/

These pages capture some of the tinkering I've done with BASIC.

## BLACKBOX.BAS

I first came across the "black box" in Ahl's More BASIC Computer Games. Out of the two books of games by Ahl, it was one of the three (along with Four in a Row and Hunt the Wampus) that I enjoyed the most.

The program (with a few minor modifications as I struggled with debugging) is pretty much the same. I did start with the 'text recognition' version of thing from archive.org. The biggest problem I had was that many of the number 6s were 'recognized' as 4s. I caught many of them the first time through, but missed the mixup in line numbers 360 (which was shown as 340) and 460 (which was shown as 440). Because of the way I was importing to code, these simply replaced the right lines 340 and 440 and led to the omission of lines 360 and 460. It took me a while to catch on.

That has helped me revise the way I troubleshoot BASIC programs I enter. Now I will usually also capture the results of the LIST command and at least make sure I have the number of lines I expected.
