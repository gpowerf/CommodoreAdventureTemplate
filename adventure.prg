  � ***�DVENTURE �EMPLATE*** @
 � "�":� 53280,0:� 53281,0   T � �TART MESSAGE � � "*** �DVENTURE �EMPLATE ***�" �2 � "�AME START" �< � �ET VARIABLES -ROOM MATRIX, DESCRIOTIONS, ETC...  �F CAT�0:BTL�0:MNY�20:SCR�0 "	P � NOW THIS IS THE MAP MATRIX (SEE ARCHITECTURE.TXT) X	Z � L%(2,3):L%(0,1)�3:L%(0,3)�2:L%(1,2)�1:L%(2,0)�1 d	d � D$(2) �	n D$(0)�"A CITY PARK. �T IS A BRIGHT DAY AND YOU CAN SEE PEOPLE ENJOYING THE PARK." 
x D$(1)�"A CORNER SHOP. �T SEEMS TO BE STOCKED WITH ALL SORTS OF ITEMS." 
� D$(2)�"YOUR HOME." (
� � OB(2) 5
� OB(0)�0  B
� OB(1)�0  O
� OB(2)�2  \
� � OD$(2) |
� OD$(0)�"AN OLD RED CANDLE." �
� OD$(1)�"AN EMPTY MILK BOTTLE." �
� OD$(2)�"A SHINNY GOLDEN KEY." �
� � ***MAIN LOOP*** �
� �  �
� � ">";A$ � � I�0 � 1: WD$(I)�"": �: WD�1 � I�1 � �(A$) ;� �(A$,I,1)�" " � � 290 A� Q"W1$��(A$,I) g,W2$��(A$,�(A$)�I) q6� 220   