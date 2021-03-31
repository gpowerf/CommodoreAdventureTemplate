1 rem ***Adventure Template***
10 print "{clr}":poke 53280,0:poke 53281,0  
20 rem Start message
30 print "{lower case}{grn}{rght}{rght}{rght}{rght}{rght}{rght}{rght}{rght}{rght}*** Adventure Template ***{grn}{sret}"
50 print "Game start"
60 rem Set variables -room matrix, objects matrix, score, money, etc... 
65 rem keep variable names to two characters. Longer names used here for clarity.
70 cat=0:btl=0:mny=20:scr=0
80 rem now this is the map matrix (see architecture.txt)
90 dim l%(2,3):l%(0,1)=3:l%(0,3)=2:l%(1,2)=1:l%(2,0)=1


