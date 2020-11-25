# BASIC Programs

My first computer was an Ohio Scientific (OSI) C1P and the first langauge I worked with was BASIC. (The second was hand assembling 6502 code.)

Although much maligned these days, I still believe BASIC was an important part of the emergence of the personal computer. The fact is that for most of the generation that was born in the 1960s and 1970s, it is likely that BASIC was the first (or at least one of the first) programming languages that they were exposed to. Some of my other thoughts on using BASIC for learning and problem solving can be found on my blog at:

https://w4jbm.wordpress.com/2018/05/28/the-kolakoski-sequence-in-basic/

These pages capture some of the tinkering I've done with BASIC.

## BLACKBOX

I first came across the "black box" in Ahl's More BASIC Computer Games. Out of the two books of games by Ahl, it was one of the three (along with Four in a Row and Hunt the Wampus) that I enjoyed the most.

The program (with a few minor modifications as I struggled with debugging) is pretty much the same. I did start with the 'text recognition' version of thing from archive.org. The biggest problem I had was that many of the number 6s were 'recognized' as 4s. I caught many of them the first time through, but missed the mixup in line numbers 360 (which was shown as 340) and 460 (which was shown as 440). Because of the way I was importing to code, these simply replaced the right lines 340 and 440 and led to the omission of lines 360 and 460. It took me a while to catch on.

That has helped me revise the way I troubleshoot BASIC programs I enter. Now I will usually also capture the results of the LIST command and at least make sure I have the number of lines I expected.


## ECHO.BAS

This program is designed to be compiled using MS's BASCOM under CP/M. Once compiled, it become a "typical" command file and can be launched from the CP/M command prompt followed by an "argument". This argument is echoed back to the console. At this time, no special character handling exists for control characters, etc..

This was meant to be more of a proof-of-concept for passing arguments than anything particularly useful.


## HYPODATE

Lee Bradley in the Not Just Tiny-C programming group on Facebook showed a program originally written by T A Gibson that calculated "hypotenuse" dates. These are dates where they month and date could form a right triange with a hypotenuse equal to the year. For example, the classic 3/4/5 right triange could match to a date of March 4, 2005. (I do know that US dates tend to take the format mm/dd/yyyy while Eurpoean dates tend to take the format dd/mm/yyyy. I have stuck with US formating, although both 3/4/5 and 4/3/5 (and some other pairs) are hypotenuse dates in either format.)

I ran this in Chipmunk BASIC originally and it ran in a simplified version. When I ran it under Microsoft MBASIC-80 on an Altair 8800 clone, I encountered errors with some stray "noise" in the numbers. I introduced the variable Q and look at that to be "close to zero" to make things work consistently on the Altair.

We can also simplify the range of years with a bit of thinking. January 1st would need a hypotenuse of the square root of 2 (1.4142), so we can start with YEAR=2. Also, December 31st would yield a hypotenuse of 33.2415 so we can end with YEAR=33.

If you are interested in the results but don't want to have to run the program, here are the hypotonuse dates for the early 21st century:

- 3/4/05
- 4/3/05
- 6/8/10
- 8/6/10
- 5/12/13
- 12/5/13
- 9/12/15
- 12/9/15
- 8/15/17
- 12/16/20
- 7/24/25
- 10/24/26


## KOLALSEQ

The Kolakoski Sequence was one of the things that caught my interest and led to me starting to tinker more in BASIC a while back.

Details on the sequence can be found various places, but the simplified version paraphrased from Wikipedia is, "The Kolakoski sequence is an infinite sequence of symbols {1,2} that is its own run-length encoded value. It was initially named after the William Kolakoski (1944–97) who discussed it in 1965, but subsequent research has revealed that it first appeared in a paper by Rufus Oldenburger in 1939."

Run-length encoding simply means that the value represent how long or how many instances of a particular value lasts or exist in a series.

So let’s look at the start of the sequence:

1,2,2,1,1,2,1,2,2,1,2,2,1,1,2,1,1,2,2,1,…

Now for some simple run-length encoding, how many 1s in a row, how many 2s in a row, how many 1s (for a second time) in a row, and how many 2s (for a second time) in a row? That would be:

1,2,2,1,…

When we run-length encode the first six digits of the sequence, they yield the first four digits of the sequence.

We can “unencode” our four digit series by saying the first number represents how many times 1 is repeated, the second number represents how many times 2 is repeated, the third digit goes back to the number of times 1 is repeated, and the fourth digit goes back to how many time 2 is repeated. So our 1,2,2,1,… becomes:

1,2,2,1,1,2,…

Using this general approach we can write a simple program that will "unencode" or "expand" the series starting with nothing more than the first two digits. This was originally written for the Brandy BASIC interpreter, but with the exception of the SWAP command should be fairly easy to port to any other vintage version of BASIC.

My original write up on this is here:

https://w4jbm.wordpress.com/2018/05/28/the-kolakoski-sequence-in-basic/


## PRIMES

This is a common (but not necessarily rigerous) benchmark program that was used by InterFace Age Magazine.


## SCRLTST.BAS and TESTPAT.BAS

Simple program to print a test pattern to the terminal. Does not make use of strings because of limitations on string length under CP/M in MBASIC. SCRLTST is better suited to being compiled using BASCOM.


## SWAP.BAS

This is a simple program that shows how the values of two variable can be swapped without the need for a third variable. I've seen the approach used since my first exposure to computer programming (back in 1980), so it has been around a while. If you are using floating point math on some older BASICs it can behave a bit strange, but for small integers it generally is reliable.


## WAVEDEMO

This is a simple one-liner that I used to type into any computer I'd come across in stores that allowed me to type something in:

10 A=A+.25:PRINT TAB(40+SIN(A)*35);"\*":GOTO 10

It is also fairly easy to adjust for different screen widths (the 40 is roughly the center of the screen and the 35 is the width of the 'wave' divided by 2).

It is more fun on slower terminals (300 baud or even teleprinters) because the time required to print characters causes it to speed up (on shorter line) and slow down (on longer lines). (At 300 baud, it can take two seconds or so to print a "wide" line while several "short" lines print in the same amount of time. With a teletype, it was espcially noticable. But that was the 1970s and early 1980s.)

On modern machines, it may need a timing loop to keep it from scrolling to quickly.

You can also replace the asterisk with text (like "HI!" or maybe a shortened store name depending where I was) if you want to.

It will eventually hit a point where it stops adding because the value for A gets too large, but I've never been patient enough to let it get there. Having it reset to zero at some point could be done in a simple two line program.


## And the fine print...
The copyright for some of these files may be held by others and subject to various terms and conditions. I have tried to recognize those involved and have left any notices or attribution in place with the files used.

These are intended for personal use only. Any material will be removed at the request of the copyright holder or those holding other rights to it.

To the extent applicable, any original work herein is:

Copyright 2018 by James McClanahan and made available under the terms of The MIT License.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
