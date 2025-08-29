1 rem ***Adventure Template***
10 print "{clr}":poke 53280,0:poke 53281,0  
20 rem Start message
30 print "{lower case}{grn}{rght}{rght}{rght}{rght}{rght}{rght}{rght}*** Adventure Template ***"
50 print "{sret}Game start"
60 rem ***Set variables -room matrix, descriotions, etc...***
70 lc=0:o=2
80 rem now this is the map matrix (see architecture.txt)
85 dim l%(2,3)
90 l%(0,0)=-1:l%(0,1)=2:l%(0,2)=-1:l%(0,3)=1
92 l%(1,0)=-1:l%(1,1)=-1:l%(1,2)=0:l%(1,3)=-1
94 l%(2,0)=0:l%(2,1)=-1:l%(2,2)=-1:l%(2,3)=-1
95 rem ***description of locations***
100 dim d$(2)
110 d$(0)="a city park. It is a bright day and you can see people enjoying the park." 
120 d$(1)="a corner shop. It seems to be stocked with all sorts of items." 
130 d$(2)="your home."
135 rem ***location of objects***
140 dim ob(2)
150 ob(0)=0 
160 ob(1)=0 
170 ob(2)=2 
175 rem ***objects, description, locations***
180 dim ob$(2,1)
190	ob$(0,0)="candle":ob$(0,1)="An old red candle."
200 ob$(1,0)="bottle":ob$(1,1)="An empty milk bottle."
210	ob$(2,0)="key":ob$(2,1)="A shinny golden key."
215 dim ol%(2):ol%(0)=0:ol%(1)=0:ol%(2)=2
220 gosub 500
230 rem ***main loop***
240 input "{sret}>";a$
250 le=len(a$)
260 for i=1 to le
270 if mid$(a$,i,1)=" " then goto 290
280 next
290 w1$=left$(a$,i-1)
300 w2$=""
310 if (i-le)<1 then w2$=right$(a$,le-i)
315 cf=0 : rem command found flag
320 if w1$="n" or w1$="s" or w1$="e" or w1$="w" or w1$="go" then gosub 400:cf=1
330 if w1$="look" then gosub 500:cf=1
340 if w1$="examine" then gosub 700:cf=1
350 if w1$="get" then gosub 800:cf=1
360 if w1$="inv" or w1$="inventory" then gosub 900:cf=1
370 if w1$="drop" then gosub 1000:cf=1
372 if w1$="save" then gosub 2000:cf=1
374 if w1$="load" then gosub 2100:cf=1
380 if w1$="quit" then print "{sret}come back soon!":end
385 if cf=0 then print "{sret}i don't understand that."
390 goto 230
400 rem ***move around***
405 nl=-1
410 if (w1$="n" or w2$="north") then nl=l%(lc,0)
420 if (w1$="s" or w2$="south") then nl=l%(lc,1)
430 if (w1$="w" or w2$="west") then nl=l%(lc,2)
440 if (w1$="e" or w2$="east") then nl=l%(lc,3)
450 if nl=-1 then print "{sret}you can't go that way"
460 if nl<>-1 then lc=nl: gosub 500:print 
480 return
500 rem ***look at surroundings***
510 print "{sret}You can see ";
520 print d$(lc)
530 print "{sret}Exits to the: ";
540 if l%(lc,0)<>-1 then print "north ";
550 if l%(lc,1)<>-1 then print "south ";
560 if l%(lc,2)<>-1 then print "west ";
570 if l%(lc,3)<>-1 then print "east ";
580 rem***look at objects***
590 print "{sret}{sret}You can also see the following objects:"
600 for i=0 to o
610 if ol%(i)=lc then print ob$(i,0);:print " ";
620 next
630 print 
640 return
700 rem ***examine objects***
710 print "{sret}"
720 for i=0 to o
730 if ob$(i,0)=w2$ and (ol%(i)=lc or ol%(i)=-1) then goto 770
740 next 
760 print "you can't examine that":return
770 print ob$(i,1)
780 return
800 rem ***get object***
810 print "{sret}"
820 for i=0 to o
830 if ob$(i,0)=w2$ and (ol%(i)=lc) then goto 860
840 next
850 if i>o then print "I can't do that.":return
860 ol%(i)=-1:print "Got the ";:print w2$
870 return
900 rem ***inventory***
910 print "{sret}You have the the following items:"
920 for i=0 to o
930 if ol%(i)=-1 then print ob$(i,0);:print " ";
940 next
950 print 
960 return 
1000 rem ***drop object***
1010 print "{sret}"
1020 for i=0 to o
1030 if ob$(i,0)=w2$ and (ol%(i)=-1) then goto 1050
1040 next
1050 if i>o then print "I can't do that.":return
1060 ol%(i)=lc:print "Dropped the ";:print w2$
1070 return
2000 rem *** save game ***
2010 print "{sret}saving game..."
2020 open 1,8,2,"0:savegame,s,w"
2030 print#1,lc
2040 for i=0 to o
2050 print#1,ol%(i)
2060 next i
2070 close 1
2080 print "game saved."
2090 return
2100 rem *** load game ***
2110 print "{sret}loading game..."
2120 open 1,8,2,"0:savegame,s,r"
2130 input#1,lc
2140 for i=0 to o
2150 input#1,ol%(i)
2160 next i
2170 close 1
2180 print "game loaded."
2190 gosub 500
2200 return
