  � ***�DVENTURE �EMPLATE*** @
 � "�":� 53280,0:� 53281,0   T � �TART MESSAGE � � "*** �DVENTURE �EMPLATE ***�" �2 � "�AME START" �< � ***�ET VARIABLES -ROOM MATRIX, DESCRIOTIONS, ETC...*** �F LC�0 	P � NOW THIS IS THE MAP MATRIX (SEE ARCHITECTURE.TXT) I	Z � L%(2,3):L%(0,1)�3:L%(0,3)�2:L%(1,2)�1:L%(2,0)�1 n	_ � ***DESCRIPTION OF LOCATIONS*** z	d � D$(2) �	n D$(0)�"A CITY PARK. �T IS A BRIGHT DAY AND YOU CAN SEE PEOPLE ENJOYING THE PARK." 
x D$(1)�"A CORNER SHOP. �T SEEMS TO BE STOCKED WITH ALL SORTS OF ITEMS." 2
� D$(2)�"YOUR HOME." R
� � ***LOCATION OF OBJECTS*** ^
� � OB(2) k
� OB(0)�0  x
� OB(1)�0  �
� OB(2)�2  �
� � ***DESCRIPTION OF OBJECTS*** �
� � OD$(2) �
� OD$(0)�"AN OLD RED CANDLE." �
� OD$(1)�"AN EMPTY MILK BOTTLE." � OD$(2)�"A SHINNY GOLDEN KEY." 0� � ***MAIN LOOP*** 7� �  D� � ">";A$ Q� LE��(A$) `� I�1 � LE |� �(A$,I,1)�" " � � 290 �� �"W1$��(A$,I) �,W2$�"" �6� (I�LE)�1 � W2$��(A$,LE�I) �@� 220 ��� ***MOVE AROUND*** �� (W1$�"N" � W2$�"NORTH") � NL�L%(LC,1) 7�� (W1$�"S" � W2$�"SOUTH") � NL�L%(LC,2) b�� (W1$�"W" � W2$�"WEST") � NL�L%(LC,3) ��� (W1$�"E" � W2$�"EAST") � (LC��7 � LC��13)� NL�L%(LC,4) ��� NL�0 � � "YOU CAN'T GO THAT WAY" ��� NL��0 � LC�NL:� 900 ��� �� ***LOOK AT SURROUNDINGS*** �� DS(LC) �   