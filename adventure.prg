  � ***�DVENTURE �EMPLATE*** @
 � "�":� 53280,0:� 53281,0   T � �TART MESSAGE � � "*** �DVENTURE �EMPLATE ***" �2 � "�AME START" �< � ***�ET VARIABLES -ROOM MATRIX, DESCRIOTIONS, ETC...*** �F LC�0 	P � NOW THIS IS THE MAP MATRIX (SEE ARCHITECTURE.TXT) 	U � L%(2,3) M	Z L%(0,0)��1:L%(0,1)�2:L%(0,2)��1:L%(0,3)�1 }	\ L%(1,0)��1:L%(1,1)��1:L%(1,2)��0:L%(1,3)��1 �	^ L%(2,0)��0:L%(2,1)��1:L%(2,2)��1:L%(2,3)��1 �	_ � ***DESCRIPTION OF LOCATIONS*** �	d � D$(2) 4
n D$(0)�"A CITY PARK. �T IS A BRIGHT DAY AND YOU CAN SEE PEOPLE ENJOYING THE PARK." 
x D$(1)�"A CORNER SHOP. �T SEEMS TO BE STOCKED WITH ALL SORTS OF ITEMS." �
� D$(2)�"YOUR HOME." �
� � ***LOCATION OF OBJECTS*** �
� � OB(2) �
� OB(0)�0  �
� OB(1)�0  �
� OB(2)�2  � � ***OBJECTS & DESCRIPTION*** � � OD$(2,1) N� OD$(0,0)�"CANDLE":OD$(0,1)�"AN OLD RED CANDLE." �� OD$(1,0)�"BOTTLE":OD$(1,1)�"AN EMPTY MILK BOTTLE." �� OD$(2,0)�"KEY":OD$(2,1)�"A SHINNY GOLDEN KEY." �� � ***MAIN LOOP*** �� � 500:�  �� � ">";A$ �� LE��(A$) � I�1 � LE  � �(A$,I,1)�" " � � 290 &� 8"W1$��(A$,I�1) C,W2$�"" c6� (I�LE)�1 � W2$��(A$,LE�I) �@� W1$�"N" � W1$�"S" � W1$�"E" � W1$�"W" � W1$�"GO" � � 400:LF�1 �J� W1$�"LOOK" � � 500 �J� 220 ��� ***MOVE AROUND*** �� (W1$�"N" � W2$�"NORTH") � NL�L%(LC,0) :�� (W1$�"S" � W2$�"SOUTH") � NL�L%(LC,1) e�� (W1$�"W" � W2$�"WEST") � NL�L%(LC,2) ��� (W1$�"E" � W2$�"EAST") � NL�L%(LC,3) ��� NL��1 � � "YOU CAN'T GO THAT WAY" ��� NL���1 � LC�NL ��� ��� ***LOOK AT SURROUNDINGS*** �� "��OU CAN SEE "; � D$(LC) 1� "��XITS TO THE: "; R� L%(LC,0)���1 � � "NORTH "; s&� L%(LC,1)���1 � � "SOUTH "; �0� L%(LC,2)���1 � � "WEST "; �:� L%(LC,3)���1 � � "EAST "; �D� �N� �X�***GET OBJECT***   