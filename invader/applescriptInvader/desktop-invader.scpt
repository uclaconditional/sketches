FasdUAS 1.101.10   ��   ��    k             l     ��  ��    * $ AppleScript invader by John Brumley     � 	 	 H   A p p l e S c r i p t   i n v a d e r   b y   J o h n   B r u m l e y   
�� 
 l   � ����  O    �    k   �       l   ��������  ��  ��        l   ��  ��      Setup     �      S e t u p      l   ��  ��       Retrieve width and height     �   4   R e t r i e v e   w i d t h   a n d   h e i g h t      r        n         1   	 ��
�� 
pbnd   n    	 ! " ! m    	��
�� 
cwin " 1    ��
�� 
desk  o      ���� $0 thedesktopbounds theDesktopBounds   # $ # r     % & % n     ' ( ' 4    �� )
�� 
cobj ) m    ����  ( o    ���� $0 thedesktopbounds theDesktopBounds & o      ���� 0 thewidth theWidth $  * + * r     , - , n     . / . 4    �� 0
�� 
cobj 0 m    ����  / o    ���� $0 thedesktopbounds theDesktopBounds - o      ���� 0 	theheight 	theHeight +  1 2 1 l   �� 3 4��   3 . ( Retrieve a list of items on the desktop    4 � 5 5 P   R e t r i e v e   a   l i s t   o f   i t e m s   o n   t h e   d e s k t o p 2  6 7 6 r    # 8 9 8 n    ! : ; : 2    !��
�� 
cobj ; 1    ��
�� 
desk 9 o      ���� "0 thedesktopitems theDesktopItems 7  < = < l  $ $�� > ?��   >   store positions    ? � @ @     s t o r e   p o s i t i o n s =  A B A r   $ ( C D C J   $ &����   D o      ���� &0 originalpositions originalPositions B  E F E X   ) D G�� H G r   9 ? I J I n   9 < K L K 1   : <��
�� 
dpos L o   9 :���� 0 originalfile originalFile J n       M N M  ;   = > N o   < =���� &0 originalpositions originalPositions�� 0 originalfile originalFile H o   , -���� "0 thedesktopitems theDesktopItems F  O P O l  E E��������  ��  ��   P  Q R Q r   E L S T S I  E J�� U��
�� .corecnte****       **** U o   E F���� "0 thedesktopitems theDesktopItems��   T o      ���� ,0 numberofdesktopitems numberOfDesktopItems R  V W V r   M R X Y X m   M N����  Y o      ���� ,0 minimumnumberoficons minimumNumberOfIcons W  Z [ Z l  S S�� \ ]��   \ G A check if there are enough desktop icons to draw the picture (30)    ] � ^ ^ �   c h e c k   i f   t h e r e   a r e   e n o u g h   d e s k t o p   i c o n s   t o   d r a w   t h e   p i c t u r e   ( 3 0 ) [  _ ` _ l  S S�� a b��   a 1 + if not, create more until there are enough    b � c c V   i f   n o t ,   c r e a t e   m o r e   u n t i l   t h e r e   a r e   e n o u g h `  d e d r   S Y f g f J   S U����   g o      ���� 0 
extrafiles 
extraFiles e  h i h V   Z j k j k   d l l  m n m l  d d�� o p��   o   random name clock pool    p � q q .   r a n d o m   n a m e   c l o c k   p o o l n  r s r r   d � t u t J   d � v v  w x w m   d g y y � z z �=�[ x  { | { m   g j } } � ~ ~ �=�g |   �  m   j m � � � � � �=�P �  � � � m   m p � � � � � �=�\ �  � � � m   p s � � � � � �=�Q �  � � � m   s v � � � � � �=�] �  � � � m   v y � � � � � �=�R �  � � � m   y | � � � � � �=�^ �  � � � m   |  � � � � � �=�S �  � � � m    � � � � � � �=�_ �  � � � m   � � � � � � � �=�T �  � � � m   � � � � � � � �=�` �  � � � m   � � � � � � � �=�U �  � � � m   � � � � � � � �=�V �  � � � m   � � � � � � � �=�W �  � � � m   � � � � � � � �=�X �  � � � m   � � � � � � � �=�Y �  � � � m   � � � � � � � �=�Z �  � � � m   � � � � � � � �=�a �  � � � m   � � � � � � � �=�b �  � � � m   � � � � � � � �=�c �  � � � m   � � � � � � � �=�d �  � � � m   � � � � � � � �=�e �  ��� � m   � � � � � � � �=�f��   u o      ���� 0 ji   s  � � � r   � � � � � n   � � � � � 3   � ���
�� 
cobj � o   � ����� 0 ji   � o      ���� 0 newfilename newFileName �  � � � U   � � � � � r   � � � � � b   � � � � � o   � ����� 0 newfilename newFileName � n   � � � � � 3   � ���
�� 
cobj � o   � ����� 0 ji   � o      ���� 0 newfilename newFileName � m   � �����  �  � � � l  � ��� � ���   � . ( create file and save for deletion lat8r    � � � � P   c r e a t e   f i l e   a n d   s a v e   f o r   d e l e t i o n   l a t 8 r �  � � � r   � � � � � I  � ����� �
�� .corecrel****      � null��   � �� � �
�� 
kocl � m   � ���
�� 
file � �� � �
�� 
insh � 1   � ���
�� 
desk � �� ���
�� 
prdt � K   � � � � �� ���
�� 
pnam � o   � ����� 0 newfilename newFileName��  ��   � n       � � �  ;   � � � o   � ����� 0 
extrafiles 
extraFiles �  � � � l  � ��� � ���   �   update variables'sed    � � � � *   u p d a t e   v a r i a b l e s ' s e d �  � � � r   �   n   � 2   ��
�� 
cobj 1   � ��
�� 
desk o      ���� "0 thedesktopitems theDesktopItems � �� r   I 
����
�� .corecnte****       **** o  ���� "0 thedesktopitems theDesktopItems��   o      ���� ,0 numberofdesktopitems numberOfDesktopItems��   k A  ^ c	 o   ^ _���� ,0 numberofdesktopitems numberOfDesktopItems	 o   _ b���� ,0 minimumnumberoficons minimumNumberOfIcons i 

 l ��������  ��  ��    l ��������  ��  ��    r   ^   o  ���� 0 thewidth theWidth m  ����  o      ���� 0 u    l ! r  ! m  ����  o      ���� 0 i   / ) iterator for selecting consecutive icons    � R   i t e r a t o r   f o r   s e l e c t i n g   c o n s e c u t i v e   i c o n s  l ""��������  ��  ��    r  "0 !  J  ","" #$# m  "%���� d$ %��% \  %*&'& o  %&���� 0 	theheight 	theHeight' m  &)���� d��  ! o      ����  0 hiddenposition hiddenPosition ()( r  1>*+* \  1:,-, ^  14./. o  12���� 0 thewidth theWidth/ m  23���� - ]  49010 o  47���� 0 u  1 m  78���� + o      ����  0 startingpointx startingPointX) 232 r  ?N454 [  ?J676 o  ?B����  0 startingpointx startingPointX7 ]  BI898 o  BE���� 0 u  9 m  EH���� 5 o      ���� 0 endingpointx endingPointX3 :;: r  O\<=< \  OX>?> ^  OR@A@ o  OP���� 0 	theheight 	theHeightA m  PQ���� ? ]  RWBCB o  RU���� 0 u  C m  UV���� = o      ����  0 startingpointy startingPointY; DED l ]]��������  ��  ��  E FGF l ]]��HI��  H - ' put extra files in the hidden position   I �JJ N   p u t   e x t r a   f i l e s   i n   t h e   h i d d e n   p o s i t i o nG KLK Z  ]�MN����M ? ]bOPO o  ]^���� ,0 numberofdesktopitems numberOfDesktopItemsP o  ^a���� ,0 minimumnumberoficons minimumNumberOfIconsN Y  e�Q��RS��Q r  s}TUT o  sv����  0 hiddenposition hiddenPositionU n      VWV 1  z|��
�� 
dposW n  vzXYX 4  wz��Z
�� 
cobjZ o  xy�� 0 f  Y o  vw�~�~ "0 thedesktopitems theDesktopItems�� 0 f  R [  hm[\[ o  hk�}�} ,0 minimumnumberoficons minimumNumberOfIcons\ m  kl�|�| S o  mn�{�{ ,0 numberofdesktopitems numberOfDesktopItems��  ��  ��  L ]^] l ���z�y�x�z  �y  �x  ^ _`_ l ���wab�w  a  
 draw loop   b �cc    d r a w   l o o p` ded U  �rfgf k  �mhh iji Y  �ak�vlm�uk Y  �\n�top�sn k  �Wqq rsr r  ��tut n  ��vwv 4  ���rx
�r 
cobjx o  ���q�q 0 i  w o  ���p�p "0 thedesktopitems theDesktopItemsu o      �o�o 0 myicon myIcons yzy r  ��{|{ n  ��}~} 4  ���n
�n 
cobj l ����m�l� [  ����� o  ���k�k 0 i  � m  ���j�j �m  �l  ~ o  ���i�i "0 thedesktopitems theDesktopItems| o      �h�h 0 
mirroricon 
mirrorIconz ��� l ���g�f�e�g  �f  �e  � ��� r  ����� n  ����� 1  ���d
�d 
dpos� o  ���c�c 0 myicon myIcon� o      �b�b 0 newposition newPosition� ��� r  ����� n  ����� 1  ���a
�a 
dpos� o  ���`�` 0 
mirroricon 
mirrorIcon� o      �_�_  0 mirrorposition mirrorPosition� ��� Z  �7���^�� A ����� l ����]�\� I ���[�Z�
�[ .sysorandnmbr    ��� nmbr�Z  � �Y��
�Y 
from� m  ����         � �X��W
�X 
to  � m  ���� ?�      �W  �]  �\  � m  ���� ?�      � k  �%�� ��� l ���V���V  �   set icon position   � ��� $   s e t   i c o n   p o s i t i o n� ��� r  ���� J  ���� ��� [  ����� ]  ����� o  ���U�U 0 u  � o  ���T�T 0 x  � o  ���S�S  0 startingpointx startingPointX� ��R� [  ����� ]  ����� o  ���Q�Q 0 u  � o  ���P�P 0 y  � o  ���O�O  0 startingpointy startingPointY�R  � o      �N�N 0 newposition newPosition� ��M� r  %��� J  !�� ��� \  ��� l ��L�K� \  ��� l ��J�I� \  ��� o  �H�H 0 endingpointx endingPointX� ]  ��� o  	�G�G 0 u  � m  	
�F�F �J  �I  � ]  ��� o  �E�E 0 x  � o  �D�D 0 u  �L  �K  � o  �C�C 0 u  � ��B� [  ��� ]  ��� o  �A�A 0 u  � o  �@�@ 0 y  � o  �?�?  0 startingpointy startingPointY�B  � o      �>�>  0 mirrorposition mirrorPosition�M  �^  � k  (7�� ��� l ((�=���=  � "  put the icon somewhere else   � ��� 8   p u t   t h e   i c o n   s o m e w h e r e   e l s e� ��� r  (/��� o  (+�<�<  0 hiddenposition hiddenPosition� o      �;�; 0 newposition newPosition� ��:� r  07��� o  03�9�9  0 hiddenposition hiddenPosition� o      �8�8  0 mirrorposition mirrorPosition�:  � ��� l 88�7�6�5�7  �6  �5  � ��� r  8A��� o  8;�4�4 0 newposition newPosition� n      ��� 1  >@�3
�3 
dpos� o  ;>�2�2 0 myicon myIcon� ��� r  BK��� o  BE�1�1  0 mirrorposition mirrorPosition� n      ��� 1  HJ�0
�0 
dpos� o  EH�/�/ 0 
mirroricon 
mirrorIcon� ��� r  LU��� [  LQ��� o  LO�.�. 0 i  � m  OP�-�- � o      �,�, 0 i  � ��+� l VV�*�)�(�*  �)  �(  �+  �t 0 y  o m  ���'�'  p m  ���&�& �s  �v 0 x  l m  ���%�%  m m  ���$�$ �u  j ��� r  bg��� m  bc�#�# � o      �"�" 0 i  � ��!� I hm� ��
�  .sysodelanull��� ��� nmbr� m  hi�� �  �!  g m  ���� 
e ��� l ss����  �  �  � ��� l ss����  �   cleanup   � ���    c l e a n u p� ��� X  s����� I ��� �
� .coredeloobj        obj   o  ���� 0 	extrafile 	extraFile�  � 0 	extrafile 	extraFile� o  vy�� 0 
extrafiles 
extraFiles�  l ����     update variable    �     u p d a t e   v a r i a b l e  r  ��	 n  ��

 2  ���
� 
cobj 1  ���
� 
desk	 o      �� "0 thedesktopitems theDesktopItems  l ����     restore positions    � $   r e s t o r e   p o s i t i o n s  r  �� m  ����  o      �� 0 i    X  ��� k  ��  r  �� o  ���� $0 originalposition originalPosition n       1  ���

�
 
dpos n  �� !  4  ���	"
�	 
cobj" o  ���� 0 i  ! o  ���� "0 thedesktopitems theDesktopItems #�# r  ��$%$ [  ��&'& o  ���� 0 i  ' m  ���� % o      �� 0 i  �  � $0 originalposition originalPosition o  ���� &0 originalpositions originalPositions (�( l ��� �����   ��  ��  �    m     ))�                                                                                  MACS  alis    t  Macintosh HD               ��pH+     �
Finder.app                                                      �����w        ����  	                CoreServices    �R�      ��o�       �   �   �  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��  ��       ��*+��  * ��
�� .aevtoappnull  �   � ****+ ��,����-.��
�� .aevtoappnull  �   � ****, k    �//  
����  ��  ��  - �������������� 0 originalfile originalFile�� 0 f  �� 0 x  �� 0 y  �� 0 	extrafile 	extraFile�� $0 originalposition originalPosition. J)���������������������������������� y } � � � � � � � � � � � � � � � � � � � � � ��������������������������������������������������������������
�� 
desk
�� 
cwin
�� 
pbnd�� $0 thedesktopbounds theDesktopBounds
�� 
cobj�� 0 thewidth theWidth�� �� 0 	theheight 	theHeight�� "0 thedesktopitems theDesktopItems�� &0 originalpositions originalPositions
�� 
kocl
�� .corecnte****       ****
�� 
dpos�� ,0 numberofdesktopitems numberOfDesktopItems�� �� ,0 minimumnumberoficons minimumNumberOfIcons�� 0 
extrafiles 
extraFiles�� �� 0 ji  �� 0 newfilename newFileName�� 
�� 
file
�� 
insh
�� 
prdt
�� 
pnam
�� .corecrel****      � null�� �� 0 u  �� 0 i  �� d��  0 hiddenposition hiddenPosition��  0 startingpointx startingPointX�� �� 0 endingpointx endingPointX��  0 startingpointy startingPointY�� 
�� 0 myicon myIcon�� �� 0 
mirroricon 
mirrorIcon�� 0 newposition newPosition��  0 mirrorposition mirrorPosition
�� 
from
�� 
to  
�� .sysorandnmbr    ��� nmbr
�� .sysodelanull��� ��� nmbr
�� .coredeloobj        obj �����*�,�,�,E�O��m/E�O���/E�O*�,�-E�OjvE�O �[��l kh  ��,�6F[OY��O�j E�O�E` OjvE` O �h�_ a a a a a a a a a a a a a a a  a !a "a #a $a %a &a 'a (a )a *vE` +O_ +�.E` ,O a -kh_ ,_ +�.%E` ,[OY��O*�a .a /*�,a 0a 1_ ,la - 2_ 6FO*�,�-E�O�j E�[OY�OO�a 3!E` 4OkE` 5Oa 6�a 6lvE` 7O�l!_ 4l E` 8O_ 8_ 4a 9 E` :O�l!_ 4l E` ;O�_  " _ k�kh _ 7��/�,F[OY��Y hO �a <kh �jlkh  �j�kh ��_ 5/E` =O��_ 5a >/E` ?O_ =�,E` @O_ ?�,E` AO*a Ba Ca Da E� Fa G @_ 4� _ 8_ 4� _ ;lvE` @O_ :_ 4l �_ 4 _ 4_ 4� _ ;lvE` AY _ 7E` @O_ 7E` AO_ @_ =�,FO_ A_ ?�,FO_ 5kE` 5OP[OY�G[OY�8OkE` 5Okj H[OY�O _ [��l kh �j I[OY��O*�,�-E�OkE` 5O (�[��l kh ���_ 5/�,FO_ 5kE` 5[OY��OPUascr  ��ޭ