1 rem ***Adventure Template***
10 print "{clr}":poke 53280,0:poke 53281,0  
20 rem Start message
30 print "{lower case}{grn}{rght}{rght}{rght}{rght}{rght}{rght}{rght}*** Adventure Template ***{grn}{sret}"
50 print "Game start"
60 rem Set variables -room matrix, descriotions, etc... 
70 cat=0:btl=0:mny=20:scr=0
80 rem now this is the map matrix (see architecture.txt)
90 dim l%(2,3):l%(0,1)=3:l%(0,3)=2:l%(1,2)=1:l%(2,0)=1
100 dim d$(2)
110 d$(0)="a city park. It is a bright day and you can see people enjoying the park."
120 d$(1)="a corner shop. It seems to be stocked with all sorts of items."
130 d$(2)="your home."
140 dim ob(2)
150 ob(0)=0 
160 ob(1)=0 
170 ob(2)=2 
180 dim od$(2)
190	od$(0)="an old red candle."
200	od$(1)="an empty milk bottle."
210	od$(2)="a shinny golden key."
220 rem ***main loop***
230 print 
240 input ">";a$
250 for i=0 to 1: wd$(i)="": next: wd=1
260 for i=1 to len(a$)
270 if mid$(a$,i,1)=" " then goto 290
280 next
290 w1$=left$(a$,i)
300 w2$=right$(a$,len(a$)-i)
310 goto 220


