1 rem ***Adventure Template***
10 print "{clr}":poke 53280,0:poke 53281,0  
20 rem Start message
30 print "{lower case}{grn}{rght}{rght}{rght}{rght}{rght}{rght}{rght}*** Adventure Template ***"
50 print "{sret}Game start"
60 rem ***Set variables -room matrix, descriotions, etc...***
70 lc=0
80 rem now this is the map matrix (see architecture.txt)
85 dim l%(2,3)
90 l%(0,0)=-1:l%(0,1)=2:l%(0,2)=-1:l%(0,3)=1
92 l%(1,0)=-1:l%(1,1)=-1:l%(1,2)=-0:l%(1,3)=-1
94 l%(2,0)=-0:l%(2,1)=-1:l%(2,2)=-1:l%(2,3)=-1
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
175 rem ***objects & description***
180 dim ob$(2,2)
190	ob$(0,0)=" 0":ob$(0,1)="candle":ob$(0,2)="an old red candle."
200	ob$(1,0)=" 0":ob$(1,1)="bottle":ob$(1,2)="an empty milk bottle."
210	ob$(2,0)=" 2":ob$(2,1)="key":ob$(2,2)="a shinny golden key."
220 rem ***main loop***
230 gosub 500:print 
240 input "{sret}>";a$
250 le=len(a$)
260 for i=1 to le
270 if mid$(a$,i,1)=" " then goto 290
280 next
290 w1$=left$(a$,i-1)
300 w2$=""
310 if (i-le)<1 then w2$=right$(a$,le-i)
320 if w1$="n" or w1$="s" or w1$="e" or w1$="w" or w1$="go" then gosub 400:lf=1
330 if w1$="look" then gosub 500
330 goto 220
400 rem ***move around***
410 if (w1$="n" or w2$="north") then nl=l%(lc,0)
420 if (w1$="s" or w2$="south") then nl=l%(lc,1)
430 if (w1$="w" or w2$="west") then nl=l%(lc,2)
440 if (w1$="e" or w2$="east") then nl=l%(lc,3)
450 if nl=-1 then print "you can't go that way"
460 if nl<>-1 then lc=nl
470 return
500 rem ***look at surroundings***
510 print "{sret}You can see ";
520 print d$(lc)
530 print "{sret}Exits to the: ";
540 if l%(lc,0)<>-1 then print "north ";
550 if l%(lc,1)<>-1 then print "south ";
560 if l%(lc,2)<>-1 then print "west ";
570 if l%(lc,3)<>-1 then print "east ";
580 print
600 rem***look at objecta***
610 print "{sret}You can also see the following objects:"
620 for i=0 to 2
630 if ob$(i,0)=str$(lc) then print ob$(i,1);:print " ";
640 next
650 return


