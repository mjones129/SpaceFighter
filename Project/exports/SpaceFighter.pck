GDPC                                                                               @   res://.import/Player.png-3b381e068d1d74cc2895fb9be41402b0.stex  �      �      �N�z�<t��A$'�P�@   res://.import/boom.ogg-5f7442b21a265c05fa68730a6f4efa7b.oggstr  0      -      �3�Bgj����Ay��p@   res://.import/bullet.png-ff1424653e10246c11e3724e402c519e.stex  pL      �       �(P�v�{IHY|L�*@   res://.import/enemy.png-f7d9f81714867a24a08e299bb600e611.stex   PP      �      q�6��<����lG�J�D   res://.import/explosion.png-730076d88b39dbfd5c22ad71f1135b01.stex   �U      �      Yr|�� �{�҄!F9<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stexg      U      -��`�0��x�5�[@   res://.import/shoot.ogg-f56457668e0bc642d16a3835d064d8a5.oggstr �~      O      |�dM�a{��a���4   res://Bullet.gd.remap   0�      !       טdZ�=���B!��q'5   res://Bullet.gdc       v      �a�5�%P҉��n�`�   res://Bullet.tscn   �      !	      ��o)�!#ռ]�3�2�   res://Enemy.gd.remap`�              � G>��A_WWng4��   res://Enemy.gdc �      �      �X���v��� ��v��   res://Enemy.tscnP      �      L�7Ö0@���l�>�   res://Player.pngК      P      �-Jzrϕ�vAp0X��U   res://Player.png.import �      �      ]=<�����.%#h��   res://boom.ogg.import   PK            S������kUP�{:�6   res://bullet.png.import M      �      (p6>�tP�Z[�e%   res://default_env.tres  �O      �       um�`�N��<*ỳ�8   res://enemy.png.import   S      �      &dW�fB�I�~{��   res://explosion.png.import  �d      �      �8�	�vF-I�]���   res://icon.png.import   pt      �      �����%��(#AB�   res://player.gd.remap   ��      !       �ؿk�5s0n��;P   res://player.gdc�v      �      Ȭ��6�) D�fVN   res://player.tscn   �{      �      MW)P#d��/ ��	�   res://project.binary �      .      fK
�����<z�J�7   res://shoot.ogg.import  �            ��$@�Ԡz)��"A�!�   res://world.gd.remap��               !��*(�۩����n   res://world.gdc 0�      �      ��nwdb�`��r�2�   res://world.tscnГ      ^      1����c��\Ь��            GDSC            �      ���ׄ�   �������϶���   �����϶�   �������Ŷ���   ����׶��   �������ض���   ���������������������¶�   ���������Ӷ�   ����������������������Ҷ   ���׶���   �������Ӷ���   �����Ӷ�   ������Ӷ   �������������Ӷ�   ��������Ҷ��   ���϶���(   ������������������������������������Ҷ��          ,        Enemy                                                                    	   #   
   )      *      +      ,      2      6      7      8      ?      I      O      V      _      f      m      t      u      v      |      �      3YY;�  �  PR�  QYY0�  PQV�  -�  Y0�  P�  QV�  �  �  �  �  �  �  �  YYY0�  PQV�  �  PQYYY0�  P�	  QV�  &�	  T�
  PQ�  V�  �	  T�  PQ�  W�  T�  �  �  �  �  PRQ�  W�  T�  �  �  W�  T�  PQ�  W�  T�  PQYYY0�  PQV�  �  PQY`          [gd_scene load_steps=15 format=2]

[ext_resource path="res://bullet.png" type="Texture" id=1]
[ext_resource path="res://Bullet.gd" type="Script" id=2]
[ext_resource path="res://explosion.png" type="Texture" id=3]
[ext_resource path="res://boom.ogg" type="AudioStream" id=4]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 0.970226, 6.69126 )

[sub_resource type="AtlasTexture" id=2]
atlas = ExtResource( 3 )
region = Rect2( 0, 0, 48, 48 )

[sub_resource type="AtlasTexture" id=3]
atlas = ExtResource( 3 )
region = Rect2( 48, 0, 48, 48 )

[sub_resource type="AtlasTexture" id=4]
atlas = ExtResource( 3 )
region = Rect2( 96, 0, 48, 48 )

[sub_resource type="AtlasTexture" id=5]
atlas = ExtResource( 3 )
region = Rect2( 144, 0, 48, 48 )

[sub_resource type="AtlasTexture" id=6]
atlas = ExtResource( 3 )
region = Rect2( 192, 0, 48, 48 )

[sub_resource type="AtlasTexture" id=7]
atlas = ExtResource( 3 )
region = Rect2( 240, 0, 48, 48 )

[sub_resource type="AtlasTexture" id=8]
atlas = ExtResource( 3 )
region = Rect2( 288, 0, 48, 48 )

[sub_resource type="AtlasTexture" id=9]
atlas = ExtResource( 3 )
region = Rect2( 336, 0, 48, 48 )

[sub_resource type="SpriteFrames" id=10]
animations = [ {
"frames": [ SubResource( 2 ), SubResource( 3 ), SubResource( 4 ), SubResource( 5 ), SubResource( 6 ), SubResource( 7 ), SubResource( 8 ), SubResource( 9 ) ],
"loop": false,
"name": "explode",
"speed": 10.0
} ]

[node name="Bullet" type="Node2D"]

[node name="Bullet" type="Area2D" parent="."]
script = ExtResource( 2 )

[node name="Sprite" type="Sprite" parent="Bullet"]
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="Bullet"]
shape = SubResource( 1 )

[node name="BulletTime" type="Timer" parent="Bullet"]
wait_time = 2.0
autostart = true

[node name="AnimatedSprite" type="AnimatedSprite" parent="Bullet"]
visible = false
frames = SubResource( 10 )
animation = "explode"

[node name="boomSound" type="AudioStreamPlayer2D" parent="Bullet"]
stream = ExtResource( 4 )
[connection signal="area_entered" from="Bullet" to="Bullet" method="_on_Bullet_area_entered"]
[connection signal="timeout" from="Bullet/BulletTime" to="Bullet" method="_on_BulletTime_timeout"]
[connection signal="animation_finished" from="Bullet/AnimatedSprite" to="Bullet" method="_on_AnimatedSprite_animation_finished"]
               GDSC            1      ���ׄ�   �����϶�   �������Ŷ���   ����׶��   �������ض���   ϶��   ����������������¶��   ���������Ӷ�     @?                                                 	   	   
   
                                 !      "      #      $      %      +      /      3YYYYYYYYY0�  PQV�  -YYY0�  P�  QV�  �  T�  �  YYYY0�  PQV�  �  PQY`          [gd_scene load_steps=4 format=2]

[ext_resource path="res://enemy.png" type="Texture" id=1]
[ext_resource path="res://Enemy.gd" type="Script" id=2]

[sub_resource type="CapsuleShape2D" id=1]

[node name="Enemy" type="Node2D"]

[node name="Enemy" type="Area2D" parent="."]
script = ExtResource( 2 )

[node name="Enemy" type="Sprite" parent="Enemy"]
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="Enemy"]
shape = SubResource( 1 )

[node name="Timer" type="Timer" parent="Enemy"]
wait_time = 30.0
autostart = true
[connection signal="timeout" from="Enemy/Timer" to="Enemy" method="_on_Timer_timeout"]
               GDST0   0            �  PNG �PNG

   IHDR   0   0   W��   sRGB ���  NIDATh�홡nA���TU!$M}��&�ZP�'8�空'@�U`+H���v+�k��fgg��@���ݝ��ffY�����������K�(�/���l�DD_W1��A��$�&]2���5p�P��0�Ƥ���Wx�>5�l�Ĩ|��7 6��|[���im�b6r����x�-_��E��)��l�4T�p��#�(?��4~�*<�4�� ��j+���t(�gv�(1��=.1ۥJ�5'��-!�雇�5�/�5��^Mb��E�X�
̷����a��F�6��� �@�����
���yWV]�Az���R�Jc��{ ��H5Oc��o7�s
�x�����P�������	 7�[�ﶵ@(���wà |�d�&��r��H��)�в�TBtON-$ֶ@6�&dk󉡴�{����2�#468�\'�sr���;��ZF�k�B�"(T<W�I��SּM��Ri�+�B��Y��{�S�_�&���[�`�Zז�w�x@�;@�mfBDs�&G\��d�Dʀ%<H4�bo,�����4��Z\���ҶL*��4^C��������4�.���:    IEND�B`�            [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Player.png-3b381e068d1d74cc2895fb9be41402b0.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Player.png"
dest_files=[ "res://.import/Player.png-3b381e068d1d74cc2895fb9be41402b0.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
         RSRC                    AudioStreamOGGVorbis                                                                       resource_local_to_scene    resource_name    data    loop    loop_offset    script        
   local://1 �          AudioStreamOGGVorbis          �+  OggS         ��q    ���vorbis    D�      �8     �OggS          ��q   �tA�������������vorbis   Lavf57.83.100       encoder=Lavc57.107.100 libvorbisvorbis"BCV @  $s*F�s�BP�B�k�BL�2L[�%s�!��B�[(�АU  @  �Ax��A!�%=X��'=!��9x�iA!�B!�B!�E9h��'A��08��8��E9X�'A� �B����9!�$5HP�9���,(���0��5(���0�ԃB���I5��gAx�iA!�$AH��A��FAX��9���A��*9� 4d �  ��(��(
�
 �  @Q�qɑɱY     �H��H��H�$Y�%Y�%Y�扪,˲,˲,�2�
 H  PQEqY d  �8��X��h�爎��� �    4CS<G�D�TU׶m۶m۶m۶m۶m[�eY @  �if��0BCV   ��0ĀАU  @  �J�	�9ߜ�Y�J�9�H�y����9�s���1�9眢�Y�	�9�ĠY
�	�9�'�yК*�9�q��`��9�&�y����9��i��K�9�H�yR�K�9�s�9�s�9������9眨������9�O��ޜ�9�s�9�s�9� 4d   @��a�)��h Fb2�A��0	��B���h��:%�qRJ'Y   @!�RH!�RH!�b�!�r�)���J*����2�,��2�,��:쬳;1�C+��RSm5�Xk�9皃�VZk��RJ)��R
BCV    Bd�QH!�b�)��r
*��АU    �    O��������%Q%Q-�25�SEUueזuY�}[؅]�}��}��uaX�eY�eY�eY�eY�eY� 4d     �BH!�RH)�s�9�$�Y      pGqɑI�$K�$��,O�4O=QE�4U�]Q7mQ6e�5]S6]UVmW�m[�uۗe��}��}��}��}��}]BCV   :�#)�")��8�$I@h�* @ @  ��(��8�$I�%i�gy����陞*�@h�*   @      ��x��x��x�舒h�����+ʦ캮뺮뺮뺮뺮뺮뺮뺮뺮뺮뺮뺮��� $  t$Gr$GR$ER$Gr�АU � �  �1$Er,��4O�4O=�=�SEWt�АU    �      ɰ��M%�R-US-�RE�SUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUM�4MY	   �Zs̭��A謗�(���N9���(���1c��R1CƖA��BCV Q  �1�1�r�I�$E�9*��9G���QJ��Z;J��Tk㜣�Q�(�ZK��Tk��  �  � �А@  �R
)��b�)�R�9�b�9��c�9(���9'��)��c�)眔�I朓�I(   �  �B(4dE ' �pM�4M%MEO]�EՕ4�45QTUMM�TUYMU�%M3MMUSEUUS�MU�e�4m�TU�Uնe[�}W�u�3M�UնMU�uW�u]�mݗ4�45QTUMU�TU�6Uն5Qt]QUeYTUYv]Y�UW�}MU�SM�UU�U��eU�u_tU�V]��UY�}�օ_�}¨��nʮ������.����I�LSEU�DQUMW�mSum[E�UՖESueU�}_ue��D�uEU�eQUeY�e]weW�EU�mUv}�t]]�u]Xf[���uu]�e�WeY�e]��u��LӶM��u�Uu��u�m��EU�uU��_�e�ׅ�yn��QUuݔ]_WeYn_7ھn<�mc�>��#G��,]�6��M�u��C�7�4Ӵm�Uu�t]_�u�h�PTU]We��UW�}[����}�U��UY�Ֆ�a�}���U����u�m]X~����2tu[h뺱̾�<�qt�>    L(��� � ��CLA��BH)��R���9)sRB)��RR���9&%sNJ(��PJK���B)��RZl�՚Z�5��Z(��PJ���[k5F�AȜ��9'���Z(���9*���:)��Z,)�X9'%��J!��JL%�C*���b,)��Zl�Řs(�ŒJl%�X[L9�s���9'%sNJ(��RRk�sR:)eJ*)�XJJ1sNJ!�BJ%�SJ��Rb+)�XJj�ŘsK1�PR�%�KJ1�sn���Ah-�c(%�c���C)���b,)�c��Řs(%ƒJ�%�X[���sN��Z����km���sЩ�ZSL��s��Ys�Z(��PJ���Z[�9�Rb+)�XJ��Řsk��PJ�%�XKJ5�k�5��Z��Řkj��s�1��Sk5�kN��Zs���c    &��BCV Q  !J1�A�1�41朔�1� �R1��R2� ��R��RR
���Rk��RRj�  � � 4%(4d% �
 `p��<Q4U�v,��D�4Uն��<Q4MU�m��D�4U�uu��<Q4UUu]]�DQ5U�ueY�=Q4UUu]Y�}�TU�ueY��_4UWu]Y�e�X]�ueY�u[V�u]Y�m[7�[�u���a9:�n�����;�  � �VG8),4d% � @��AH!�RH!�RJ	  p  0�� �  �RJ)��RJ)��RJ)��B!�B!�B!�B!�B!�B!�B �O8 �?ؠ)�8@�!+�p  ���r:	)5�9���Rj�a�1���ZK�sJI���b���PRJ��c!��Z��֚;)�k�9�Ji-�Xsν��Rk1�Zsｗ�b�5�܃´c����{�)�Zk�=� �P��Zs�A!��1�܃�=!\�9����a  w� D��3�$��� 	  b�1眃B�R�9��B(%R�1眃B%d�9��B(���1眃B	���9��B(��R2砃B	��RJ��B��RJ頃B	��RJ)!�B	��RJ)%�B	��RJ)��J(��RJ)��B)��RJ)��B(��RJ)���B)��RJ)��RR(��RJ)��RJ	��RJ)���RI  8  A'Ua�	�BCV @  �VS��A�1g�!1��BJ)�1C� �)S
!�!s�!��VK�    	 0@P0 >A'@p� Bd�H4,�� 1 $&(�@��E��t��.�:B��� 
H��	7<�'����R    p    ��F��G��HH     � � �!DD4��������                 OggS P�      ��q   4��2*++#,+��$%& .,-����������������������Ľ���þ��Ʊ��d�(�'{�u�4 ����Z�	�K����$�����/��Qf�_�5�~_�$�H� ���"��c1fxk����e;��W�C��_�'�{sb m8�r.�S���x_���X{����/2��������P��W�M� �3Am�� }�Ԣ� �b������݀���z	�T��l�w�:���f��f��ɰOЄ7*a�R���0T��)�����N ��K߳K߃���}V����?��ں��v�!���� Z�U��E�����������O���٣;�sz�{bI`���Kx������H,e�ܚf��n���iZ�@�w3dq퟾�Z0=�%�T�l�[ C�?;�h���u�!H��S��)�2�  ��w7?�_���H�0F�6 ju����b����ܻ��V��?�	�y)/��ɇ�w�ں����o���
�&5�x��Wߟ?eO~���L���k���2	���=��!ؓE�ѳ���P�?�u'�n�����ը*P�F;�(S�=�ڻW�]wM�a@�ǻ�?Ν�/��E  �׳���u���� �Vv�?2��Q�8�:�m�F� 6VI���j ��[�=2
gm\ ��W~p�_uF%�=g��n�b �!+���@����< l_>"
���F�˭�	�cN~w��],I��Ǚ��t�� �^`�#q�Kaڷ�g��Z@�9D�Ί��� l]Z"�򍒃E���M�*����C ��/p��֬)�[viW�L �\f�C�hџDߠ�/�%�IF"�_��⯞^r�� � Sa�L�g�4����a?m��7�2Mbř݀ d�P*���lJ`�0f��:�6�{+�Y�>$�����߲|����`	����fe���/���ص�b�n櫝+�����ʘ �ڵ�"&2x/y����i]ƫ�Wd��� ,}�m�3`GXv���"~$˪�k]go"<���9�(�e��1��E���%sE5��"p�{���}�-
�Z�7ܵ���!rw *N�o�)��]�؂6�̳��5�*����i�_���c R�ο�\p�l�-�&>�I����@ބ�k�
$����y����~��C?��;�'���]F�∘�̲r��46�`��YSɹ�5o.��/���=��1��v����(w��e�L��^���b�v����.nA9v h����|�7g� �u/d݋�m�� w�Uyt�S� 2�������b�����MrU�����v{t���,0/��"Bu�a�a^�����ٺ�Z�5�8����	[���D�����l�|W�4/�`d
�G	 �- � , #��`�Z{�C���ƌ��&�^���Q7#����F��+J�W�
�2���`��t�桗}�y&\/���H��7�a1 `�O�`���)B 	%u-���3�r�
�q�S
D�z� ��?�؋Y2�N����O��S���͚��������/ 2��<��g}C-��Ae�W^v8A?���0p�Kq�r����z ���1(WS�,w�u��_��g6�ԫWO�US���A���7n�ج((W��K�V�}�ȃ�lT"��=���QQ��f�����|�Oz����L���x+����h�p�w�|��$^��88�v8P����/�H�0~-��7i2�Eр�����(�YP��p�-�6H��-UnqI���D��D��*�|�zuk�F�.C��el�  ܌j�����S=��v�/i�0�����d:�r�-kmCް�7�NJ�5c�Ġ�M^��Ah �R�p��鯯p�H%�߽��5��p������i����H�I`B0l���Q�@�ptq�
��%�f H��i�6�.5N7�����{��F%6�Bl���;T��j ß�6�WJ� ��ݙ �oD��U�;m>vu�n6�#�g7&��kbҝ�c�qO5��+!\� z�E�
�U�����d�a��D+��=Xm��v� ��e���bR�S�|+{���RIS�dc ��W�qj��M ���Y�st�q�*,��~�����d	`�i��^5��{6�G��P��$��.��;y��['��P�7 �u�,9��a#t#����~�=�<��'m�����n��)����>F�
��]�}�����cF?��8��x�'�k�=�������z;����k	�F�����\�n��D֪�u�4��4Z] Hf�d����v{���n_׷���dN�6h����w�C�m7�J�n�w���9�Dvä:�����J���44ۻ���hBp���m��=����߼��ذ��9$+��w|e90s���Z:��݂߳�,á�a-^1���့��^욳o�����V��0�؇��'u�7om4`�B�P~jt� �!������e4f�r���׿��$�(7��" �X`��cp"'� �(����̟Ѥ V01y*�v� ����.
 �_��-i �����#;�k�|8*;��cN!�h9FM�����[m�h�UG ����ߘ�q�M=�[�#�%ŧ[����Z�΄\t��'Rw&xq��O���7�ו�O�:�E	^7{��:t C��
u����=X0��u���������LF· p|{�@����g�  ���Gʜ
��|_�}��Mr�`wδ�)B�Q�6��K��	>2�L �u,�~/��\)��˨9ٱ}q�H@f� ���:��-9[N���}�NΒ����{f������su1�^\\��4��Q�91�^�#��%�(���QDJk�{���ry�?�&�e=�"^��`�1n|Q�����VY���޹��z���  F�U=
&V-7%�W^Q;}�2Q���l*]9��,J�![N>�9B�;���n��@ >�ո"��o�ʻǥ��ٺ�)" ��A�	l0��ҖV�i^;���X�sn�������ܪ���	�?�miy+:�G7����~[�p��+��������Z�Z3�53�	B��p���� `{�ʍ����.�s��� ����j7bK���^���2Kw�Hu�D�߆2�$1�+��������������f�{6b�StdD�'W`4�^�7�Vh9���޿z|3���&�) ���[��t�
S�o-f�2�L�O������mf\�Q���� ��t^~���O�g b�9�ւ����P�L^gI��ku��bxL�{/�ϱ3�Fm��i�����
�e��vy4�v.
[q?��z����FB3���F>g����t�ō���rծ|�(20"#�TG�D�Þ��F��h4�my���I��d���Jx��,��R�ۧ`:����*CAпJa�ytu~�x<ZB��
H2���ֆX=�����_�O�mm��
:fnY ������ߝ��� ػ���bH� %j�/�Ώ�4
@#��?�:
��y�|��F����*�'
vO���~k��	��F�܃ ��E�1t���@��b	��W�e��'ݛ	�4v�:���Kbr5Ȏe��*G�R��j�QiL�� s����{e��4�� ǳ7����+�: �4.�uȮ��� i��0Ň|�ܔ�������0� �2����2g�[,4�Ë� "�����Ez;����|��^�3 ��}��l��c�{��	J���-\�o���Jm�b��{)��GM$CY��s��ͤQ���2ͩœ�v�5��gp��A@	8�0@}pn4K@e/J�޹�L���2 ��?{�o������F" ��j���{�����u?�����������Oc0�����V��8�9o�����\A �P�>4�oϏ����[�Ӎ��Y�x\M�[Ÿ"�H�w�{U��upt�s#�����- ,�@  �k���M���}�r�����(���']Y�i<Vɻ���-��\/�#�C���{�y�Y�)�J��n8E���0MD�gwQ!! �a�r��V��s�!b�ո�X��t
�f�d�  ��or�����8��Cf�Klض�~���˅�ky��P?k���������	J�s�𕏅�Շ�;��9_�X�5 {�]�Dt��s�xU>kW���M����,T^"M�#�i����\c����X�ޟ�,������4��������b�}m�Y5i �\ܿy�އ붤�( ��ݢ��)������(- �߆�ˊ���/  ʜ�sz�m�j���Q�H݋���L; ##j-Jҍ �M2���Jr�[52"�3٫�7�}���1sD����{��� �����j�*�8D�Xr�]l��=���^�ߌ{�LH^����?s�n��|%�_qG}�ק�$�3<�&m��p��\�^���&7��fϑ�ɞ�xc�z���i<���ё����
�*�	k�n��[�~[�pҙ�酙
��&Z�b��֓���@�-e�eZ�OǞ�u&af?�E��f?X|{�!:�W���,�%h�{���6g���aϽh��ri�Qz	
Ö�8�T
�N�9_�����b�GtP[��1'���[#�!֟
�s�D��y-�>�f��
����Rm����Ի�s��-���,/�,k�z^4�/V���ܙ>�h�6��e�H�����O�g;��y���<���F(�^[mRc�9̇~����e���C6q`�{ �fS��h�ժ ����8!�r�C����⠕�4��ӸK��
R!���#E����Ϸq����U�1U,@3� �S����`F�G�# U���z`��w����E��zV�n=�ǫ� ���U�z㮜��"����~<�~����^Y���ȑV��d�l_O��Xo-�|]k�o_ ^��Z���{%�>��{�ϛ*�9u���@�1ңV�1��Y��,>�C�$��NOUp�1��k}&2S��<���r�\{�T�}�� C?��6囉�s�4 H�#����U�lZ�  #���6a8�>_ ʀ%�����y��q@�]�=0�����T0�~�rf&\��.��\�u����c�Z�w��q����I�� �;�9�b-d)���E������3 ����l�;��}w���A���w�r ��E˯���ȶ|j���cY�����I��9�q��9���!wF�%o(��TJ��O���V��Y{˩��&:�[��k�m�h������R�aĝ$���3��y3(FI�q������*����z\>�;��dGG�{_v���H�{�>|���m�-�ki%�ߝ&����Ǵ�"*��.`��G�]���x�1KR�Y�%
����~��`f� �+��4�9�|��a�,���qC����7c};$] ���I����   0�R���| � �=��G}pǲȽ��q ��rѩ�{�I�7e���z��m�(� ^+�8�T��veF�n�J��(Ŕt�BP���ƺ��s�76y���VR #U��d 9��ح'�Z�D�̤mn�c�b�ѫ�@��g p �0$��O���.��0��U���:��ZJ� ,�'	+>��X���E�u��wڱP���J����Y-3��/�t:#�X'U��,���gZ��� ^KM-A��`$��$�[�Oq��e��	t�}x�vJ`M�s��e��Tozt�қ�=hTen�v]1Q����� ��B�������R��U��a.
�M�i`�W�u�/
 �$���U?���B�Y��{��>�Ȭ�`��
 ؄�Oչ�ҍ  U2��m�P H%O�1m4����!�rd�t���
d9�,$틳�,��tc3'��t�
�;��aQo"E }4l8h�1�j�%P��$�9=u/����{��gS^�c{�b5ۛ�v{�jz.�2���r#���w ԁ���  K���:?��W�>  �P����GW�� �1����W�f6H;�\y����ɀl   x2[sE����e�{��$�y�{'���g��+y�����rdX)�<G����)(딥=0M�ﯨ7�Fv�nZNh	�f$  �Ծ �щ�!e[���4#r�qO�t��MT@��6Jo-û� P���];~�,  ���M��5yv��"hwy2�r�}d��{�U�=G<���rV  VY��k �H�U췬VN =���7�vPJ
�W��x^�`lko�e��ͦ~_}���;���4�f�������X=��%Z�>յm���Nzo#��ֹ��l�@�xDr�J�/6���4H8[�$�އ�'7��h�ܪ'K�˂40�5%��N��O0 0sk};�����E  `���=������Ś�?b�� �vm���,?#�^�\��B@���y� �m��ʮ�F  �RT��3X2��� ;� ��ӛ/t?矆{����M�JX ���ĥ�F#~��[�c�{��0	d�;��0�߈���z�oߒ�{<�Ry��\�Ї�%C�O����[����,�9�����-x�=�g�6�L��$  P;W�Ad_Sj��o2��k0���SnF ��}2���t ��i����  �������(����^d�@�T~�0��	e��� ~`�����t(�@u�����������{�123bs0F@�� ��F�� �w�L�zS �ђ������?"��N��M@8��5�[t�q�c��KǙ"���'F�B������� ��ϼ]q�k +�d��/�2 @�F-˪Vt\"��h��#V`�Dݳ���P�Aڽ�������]�Țv+Z�����rF~�ԭ��I�ｏL�>�p�K�=��i��8<p;���Ӓu��31a��1<��`�_xaܠf�W�wV�m�\O}I���@2�k�
:���cqh\s��V�	 ��gK5��60���/�9���I�����~�M��� ;��re"�	]G�8��� =Q�m ����Z��ի?�~�6� މd���Nw˙�����{���30��� �w��7v(��SNI��i�9�����*Lf��ѻ�7� 
�^���{�Z+�C�}�C�*  k=l��  ��)_���O�� ��?�ow-$�&��ٗ�aG����=��Cn4  0���Qs�ǯ��n=�yw�1�����`� �Hé/�Ӏ�>k䟣|qp� �i�)��C�u�[��=���6���3,0�a<�dF���3�_ح�Q&u	s L�H�kd��\���,�C����5�4���p9���{��6& ^�?��_9'��)x�U���Ǵ;d��~�RH=���2�aX&�GF��- �8Z�t��Wlh�}n�X���p
c9<7i�5�H�x��#��Zd<R����Y��n��yf# J��	A(V!���g�%*ݗ�z��� �`�r6�½�J`��O���� ��_�O �
�v�N{S�s�� d^E߳��y�s�&����K�y�_y�2�y�vd >��/��0�yJ8�l��@�`� 5@�����^L�wϴ2��m���dۿ`��i�m���f�c�Ќ%���M���?�\�y�`��:��l�t:0צ��a٫���J8�� �Û�z�]d��Vj�����͓ ��V;��/
�df��䅶 �o�-0?����4���wp���	p�f��esT�N �t}y- �`~� g� ɰ?���N��� xRSRC             [remap]

importer="ogg_vorbis"
type="AudioStreamOGGVorbis"
path="res://.import/boom.ogg-5f7442b21a265c05fa68730a6f4efa7b.oggstr"

[deps]

source_file="res://boom.ogg"
dest_files=[ "res://.import/boom.ogg-5f7442b21a265c05fa68730a6f4efa7b.oggstr" ]

[params]

loop=false
loop_offset=0
     GDST               |   PNG �PNG

   IHDR         ��a   sRGB ���   2IDAT8�cd@���g 022��L���b������X�3��� ��!��-    IEND�B`�        [remap]

importer="texture"
type="StreamTexture"
path="res://.import/bullet.png-ff1424653e10246c11e3724e402c519e.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://bullet.png"
dest_files=[ "res://.import/bullet.png-ff1424653e10246c11e3724e402c519e.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
         [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST0   0            �  PNG �PNG

   IHDR   0   0   W��   sRGB ���  GIDATh��Y;n�0� �� E��{��@Ρ<�n��!7H�D�,�?�NZ4(`Դ�)R������xT}pj���ܠ� E,t�y6�(�M�U�|El�#� yU��[����� 9��^�p p���?�?Ġ��㱈�����%����"ҩ$v�OF �B �8*!]ߚ�x�;@r�+�Ϯ@ �?�8��6�α�u_�D�K�����n��e�}}��OMs�B�o)m+8R�F�)�}�{�[s��e:���h׷�;��aa�Ē�c�A,��B�����/�>�A��E=�����"�6�R�,ȦP,��~�Y�j\P�梐�@J��E��XJ�3��nT� �);�1b�H�xVb+���D��� ��V<�e:�*v�������;;�-��%c�
0;�Sv	J��J��	mJ�0I4O쓒��E	����*�B �;LJ�'o�C��1��di� Y:��8�KI�b� �$��,�F{�`��i�`���D��� � �����3�Nj�3�j��ذ0dȨJ&U'��F��?����B��>�dM抰�L�3_�6�n    IEND�B`�   [remap]

importer="texture"
type="StreamTexture"
path="res://.import/enemy.png-f7d9f81714867a24a08e299bb600e611.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://enemy.png"
dest_files=[ "res://.import/enemy.png-f7d9f81714867a24a08e299bb600e611.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
            GDST�  0            �  PNG �PNG

   IHDR  �   0   z�~   sRGB ���  IDATx��]Mn�:>���01�l}/�c6���P�,+@oa=ΐ�DJt�b���H��@CCF�z}�~�v|�8�7t�￣����ǌ��H�N�.�!���?��������64  xOcCC����L��g���k�$jA ��r$+ 	5��?�v�"�u=�j�[!�=���zh��4�D8�����K�$��u�v�d	���i���P�i�#U8�����{7��)�qA7�(|���l�Ͽ�?��V	 �Rמ7'V�O��h@�@m<����^>  `�|��]=���sq��Y�/u��į��*�հm4�B"��q@r	�T!�� �s�vVh D���Z{_��R�y����롍hCq q\��+��>+�{�v�D�`�/����װvYy�v�\UK����[nS+,E`����h�Hn��@8j���p�S��Op��9��!B&� ���=n�|sb�k��p|B�i�3��Mc-���B�8c�4��t���8��r°�u/��3f���qҢ��a:�������J]_ 7��#v�X��*�tOj�u1���?��[v,!��1�h!4�	�Z�F�����x�U<'��������X@!��d����[�x��cq9�� �/���|گ	�����C>4�a0���N�@F� ��:p4m�b��X}����h�#�����Jp�3÷i�F�tZ��kMJ�͒n;��{v;��d	4��q9�����+}��m�{��dC�z�L�
�s�t�0��P�k羗�<�gK�S����
�n!I01Ԥ�WU'Q;� ��>�5Șfֽ|�|x�?�g$�T���ωZ6�A���h�8>�8��]�#�X� 
�5��t��=6!1��� �J�'���8SS����ۓJD���C�$���c` �⹿�M��'���.�=G���Ӵ�@ȕ����ښ�$���h�]��`��Fω�G��*�\A[%t<��AЄ������)�đS�OM�D�&�%�P
x��q ��>�h�P���
�w/�\���Qj�r<~��M�ASNI"[�J�v�O��,6 �X_�Ǐ���cխ� ���3e�z}�d�D�O5z`��"�r��3�;Ǽ��@�\}0QK���;	)5`�=����γT p�{i\�iG�g$T<�c%}�"�%2�;`ۀ�cJ;���w�}�fփ�@�D��x�L���J��,��i��d���.�A�E�HLXYs����+�-��$K�����4.� �B���J�ɶ�+j�$S�/�����F�.��@���Rj�m���y�Ɖ��
�z�c��Zۣ�}P��'?����~8�`1 �i��!���k����%��l ׭e�ɹ�pMr��4%��X9$��N�x��9�ž��>������
O�RL껽�,"c �����=*O��[��|�^��B����V�¹�骔"�dzp%.[K��G�қ�Ƚ��^W�e� �,�ŋPK��������lJ]�sߏD�V��|�,����,��l�  ��׏��"����c[����)00M&���X�m4ep�>�C�S&���F1�>be�7
$oR��?@J^0Ysue3����/�;�Nb�f��>��+�3���
1;�ڋ��à�B��(ѷsa����l��OEڷ�hq3�Q`�f&�*�!��:vw� ܉���Rm���_� ������N��ʵ�bA^�Y:n�so��p�:�י7L�`%mG���c��18O�@���]���z� �0�u�=������,(���WMfV���n`�o*I�\�KG��F��A���Ŧ���E�{c/R��@��EƜ���@R`�s����

 �.3|�������Q�bp��]��z]e�8�n���lv��m�)�pM��ݧ�p�:��E�!��Eco4?2��g���y��͗�dwwS �D'�HNU-��{��4�JtcѾ���MM	e�J�����)� qN�q�����v�� A�? ���R�I+���qE\V0����U��_|����PE�G S��0Y�vQ�-n���-[#�^zo!̈́�f�>8�������n+��):���RPM�f%qw�6�{�	�ÊZ�֒�qQW�m�U�Һ�>�w��8�ͅ`3���fp}(�F�V��_�N)���J��O��<@W�7^_Nڍ�Qr_�o4uo�V�!��cI����p��b>�D��c��~n{��m�������[)V0K
�[� XKN�z���l���#����gSX7oY�d >F��O��^����;+#�]���!�?P�?n�frg~N\j�mz�@0�F���O��>�Ñ���A_��pN��ȴk���ʃ��]��hF���C&`����Z��?ݜ�b�Z��Th��F�X��{$��h �@�B	�3Y{�9���|?�&�����e,�4�$v�����Dq;0��3a�_K�(�5h}�?�Q4l5���zM�P�Ix��]�(��|^�Ta`of�\a��8�S_wp3��\�����0B�
`��m��j�4�.!9���b���Sc)��Ϸg��}��4��6ͱ/�����,"��/�lD�ǂ���@=M(��ʮHg� �1�/�ck	��\�mK�����O��v9];k6r�U{��RM!@�{��K-���I�&�τy�eY%���NA]�(෍�Q����4�JI(���^ZH��vz�K�-Q%�/�a�D��y�����f��H��B��YV���	(�{/��o� ��J�R�@J�CA��po��qpO��~��J*y�s� ���T)�ư�t����k7�o5�9����<B^����6�L�|rj�n��8g�@W�MU#Vb]^j�ئ��K��Pj�α�~�:.ե:~)�q��+^V͇�2��E�&�\%<e�qѕ2A�(�e4��V�t�`�DzM)�-�=�ex���w�hIv�n��$���Fs�mۈx(�,p�47P 5Z2R�BpQQ_瘺�
�|����#�s�>�q�[Udo�uI���HY!�ň'��BEqd�]vܥ��!���u�g��磡��ְ�����3T#��LIC�锼
��tGq�HXq�sqQ!KH�9�T=��+o�5��Cm_��]C�W��u�{0fzI}w�o��u�?YQ��{1��=ˁ���K�Ι� ϭ�����G���x^d=���{��\�\Z�g%�T4����\DV�F!@���tc-�>�*�B̩�k�L~$Ԡ�7��b ���S�J_34��Z�\u�r5������?]_"���+�2i-A҆2h�����6��G���j8AR���T$a�w�i;(���HJ��!�i���k"�l���g�5<<$�P|�ᇠf���/�̮�Tx�(	��=��ko���h�a/���Q�*x<-�Wk`���Fm�x-���ϟ��=ix|4аR4~5�>��4�%n ��FR�Fް%Z��fD�6��U0H}�kh�m6ŊuN���-�*�_z�ӵkîh@C��V�A�C�e�j��54T�V�Ѱ;�>�KmDA�+=6eY�J
���T���Ɩ�'4ro�jh.���ţ�S�а7�b���3&(�    IEND�B`�           [remap]

importer="texture"
type="StreamTexture"
path="res://.import/explosion.png-730076d88b39dbfd5c22ad71f1135b01.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://explosion.png"
dest_files=[ "res://.import/explosion.png-730076d88b39dbfd5c22ad71f1135b01.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
GDST@   @           9  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx�ݜytTU��?��WK*�=���%�  F����0N��݂:���Q�v��{�[�����E�ӋH���:���B�� YHB*d_*�jyo�(*M�JR!h��S�T��w�߻���ro���� N�\���D�*]��c����z��D�R�[�
5Jg��9E�|JxF׵'�a���Q���BH�~���!����w�A�b
C1�dB�.-�#��ihn�����u��B��1YSB<%�������dA�����C�$+(�����]�BR���Qsu][`
�DV����у�1�G���j�G͕IY! L1�]��� +FS�IY!IP ��|�}��*A��H��R�tQq����D`TW���p\3���M���,�fQ����d��h�m7r�U��f������.��ik�>O�;��xm��'j�u�(o}�����Q�S�-��cBc��d��rI�Ϛ�$I|]�ơ�vJkZ�9>��f����@EuC�~�2�ym�ش��U�\�KAZ4��b�4������;�X婐����@Hg@���o��W�b�x�)����3]j_��V;K����7�u����;o�������;=|��Ŗ}5��0q�$�!?��9�|�5tv�C�sHPTX@t����w�nw��۝�8�=s�p��I}�DZ-̝�ǆ�'�;=����R�PR�ۥu���u��ǻC�sH`��>�p�P ���O3R�������۝�SZ7 �p��o�P!�
��� �l��ހmT�Ƴێ�gA��gm�j����iG���B� ܦ(��cX�}4ۻB��ao��"����� ����G�7���H���æ;,NW?��[��`�r~��w�kl�d4�������YT7�P��5lF�BEc��=<�����?�:]�������G�Μ�{������n�v��%���7�eoݪ��
�QX¬)�JKb����W�[�G ��P$��k�Y:;�����{���a��&�eפ�����O�5,;����yx�b>=fc�* �z��{�fr��7��p���Ôִ�P����t^�]͑�~zs.�3����4��<IG�w�e��e��ih�/ˆ�9�H��f�?����O��.O��;!��]���x�-$E�a1ɜ�u�+7Ȃ�w�md��5���C.��\��X��1?�Nغ/�� ��~��<:k?8��X���!���[���꩓��g��:��E����>��꩓�u��A���	iI4���^v:�^l/;MC��	iI��TM-$�X�;iLH���;iI1�Zm7����P~��G�&g�|BfqV#�M������%��TM��mB�/�)����f����~3m`��������m�Ȉ�Ƽq!cr�pc�8fd���Mۨkl�}P�Л�汻��3p�̤H�>+���1D��i�aۡz�
������Z�Lz|8��.ִQ��v@�1%&���͏�������m���KH�� �p8H�4�9����/*)�aa��g�r�w��F36���(���7�fw����P��&�c����{﹏E7-f�M�).���9��$F�f r �9'1��s2).��G��{���?,�
�G��p�µ�QU�UO�����>��/�g���,�M��5�ʖ�e˃�d����/�M`�=�y=�����f�ӫQU�k'��E�F�+ =΂���
l�&���%%�������F#KY����O7>��;w���l6***B�g)�#W�/�k2�������TJ�'����=!Q@mKYYYdg��$Ib��E�j6�U�,Z�鼌Uvv6YYYԶ��}( ���ߠ#x~�s,X0�����rY��yz�	|r�6l����cN��5ϑ��KBB���5ϡ#xq�7�`=4A�o�xds)�~wO�z�^��m���n�Ds�������e|�0�u��k�ٱ:��RN��w�/!�^�<�ͣ�K1d�F����:�������ˣ����%U�Ą������l{�y����)<�G�y�`}�t��y!��O@� A� Y��sv:K�J��ՎۣQ�܃��T6y�ǯ�Zi
��<�F��1>�	c#�Ǉ��i�L��D�� �u�awe1�e&')�_�Ǝ^V�i߀4�$G�:��r��>h�hݝ������t;)�� &�@zl�Ұր��V6�T�+����0q��L���[t���N&e��Z��ˆ/����(�i啝'i�R�����?:
P].L��S��E�݅�Á�.a6�WjY$F�9P�«����V^7���1Ȓ� �b6�(����0"�k�;�@MC���N�]7 �)Q|s����QfdI���5 ��.f��#1���G���z���>)�N�>�L0T�ۘ5}��Y[�W뿼mj���n���S?�v��ْ|.FE"=�ߑ��q����������p����3�¬8�T�GZ���4ݪ�0�L�Y��jRH��.X�&�v����#�t��7y_#�[�o��V�O����^�����paV�&J�V+V��QY����f+m��(�?/������{�X��:�!:5�G�x���I����HG�%�/�LZ\8/����yLf�Æ>�X�Єǣq���$E������E�Ǣ�����gێ��s�rxO��x孏Q]n���LH����98�i�0==���O$5��o^����>6�a� �*�)?^Ca��yv&���%�5>�n�bŜL:��y�w���/��o�褨A���y,[|=1�VZ�U>,?͑���w��u5d�#�K�b�D�&�:�����l~�S\���[CrTV�$����y��;#�������6�y��3ݸ5��.�V��K���{�,-ւ� k1aB���x���	LL� ����ңl۱������!U��0L�ϴ��O\t$Yi�D�Dm��]|�m���M�3���bT�
�N_����~uiIc��M�DZI���Wgkn����C��!xSv�Pt�F��kڨ��������OKh��L����Z&ip��
ޅ���U�C�[�6��p���;uW8<n'n��nͽQ�
�gԞ�+Z	���{���G�Ĭ� �t�]�p;躆 ��.�ۣ�������^��n�ut�L �W��+ ���hO��^�w�\i� ��:9>3�=��So�2v���U1z��.�^�ߋěN���,���� �f��V�    IEND�B`�           [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
GDSC      	   "   �      ������������τ�   ����Ҷ��   �������϶���   �����ⶶ   ��������¶��   ����¶��   ����������������Ҷ��   ζ��   ϶��   ���������Ҷ�   ���������������������Ҷ�   �����¶�   �������Ӷ���   �������Ӷ���   ��������Ҷ��   ��������������ض   �������؄�   ���������Ҷ�   ���϶���   ���������������Ŷ���   ����׶��   �������������Ӷ�   �         res://Bullet.tscn         ui_right            ui_left       ui_down       ui_up      	   ui_select         /root/world                                                     	       
   &      ,      5      ;      D      J      S      Y      b      h      r      s      |      �      �      �      �      �      �      �      �      �       �   !   �   "   3YY8P�  Q;�  YY;�  �  PQYY5;�  ?P�  QYYY0�  PQV�  �  �  PQ�  &�  T�  P�  QV�  �  T�  �  �  &�  T�  P�  QV�  �  T�  �  �  &�  T�  P�  QV�  �  T�  �  �  &�  T�  P�  QV�  �  T�  �  �  �  �  T�	  PQ�  �  �  &�  T�
  P�  QV�  ;�  �  T�  PQ�  �  P�  QT�  P�  Q�  �  T�  W�  T�  �  W�  T�  PQ�  �  �  Y0�  P�  QV�  �  PQ�  �  �  P�  Q�  Y`          [gd_scene load_steps=5 format=2]

[ext_resource path="res://Player.png" type="Texture" id=1]
[ext_resource path="res://player.gd" type="Script" id=2]
[ext_resource path="res://shoot.ogg" type="AudioStream" id=3]

[sub_resource type="CapsuleShape2D" id=1]
radius = 14.3768
height = 13.9154

[node name="player" type="KinematicBody2D"]
script = ExtResource( 2 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
rotation = 1.5708
shape = SubResource( 1 )

[node name="Sprite" type="Sprite" parent="."]
position = Vector2( 0, -4.95534 )
texture = ExtResource( 1 )

[node name="Position2D" type="Position2D" parent="."]
position = Vector2( 0, -21.37 )

[node name="shootSound" type="AudioStreamPlayer2D" parent="."]
stream = ExtResource( 3 )
             RSRC                    AudioStreamOGGVorbis                                                                       resource_local_to_scene    resource_name    data    loop    loop_offset    script        
   local://1 �          AudioStreamOGGVorbis          4  OggS         A���    �b�Hvorbis    D�      �8     �OggS          A���   ��DA�������������vorbis   Lavf57.83.100       encoder=Lavc57.107.100 libvorbisvorbis"BCV @  $s*F�s�BP�B�k�BL�2L[�%s�!��B�[(�АU  @  �Ax��A!�%=X��'=!��9x�iA!�B!�B!�E9h��'A��08��8��E9X�'A� �B����9!�$5HP�9���,(���0��5(���0�ԃB���I5��gAx�iA!�$AH��A��FAX��9���A��*9� 4d �  ��(��(
�
 �  @Q�qɑɱY     �H��H��H�$Y�%Y�%Y�扪,˲,˲,�2�
 H  PQEqY d  �8��X��h�爎��� �    4CS<G�D�TU׶m۶m۶m۶m۶m[�eY @  �if��0BCV   ��0ĀАU  @  �J�	�9ߜ�Y�J�9�H�y����9�s���1�9眢�Y�	�9�ĠY
�	�9�'�yК*�9�q��`��9�&�y����9��i��K�9�H�yR�K�9�s�9�s�9������9眨������9�O��ޜ�9�s�9�s�9� 4d   @��a�)��h Fb2�A��0	��B���h��:%�qRJ'Y   @!�RH!�RH!�b�!�r�)���J*����2�,��2�,��:쬳;1�C+��RSm5�Xk�9皃�VZk��RJ)��R
BCV    Bd�QH!�b�)��r
*��АU    �    O��������%Q%Q-�25�SEUueזuY�}[؅]�}��}��uaX�eY�eY�eY�eY�eY� 4d     �BH!�RH)�s�9�$�Y      pGqɑI�$K�$��,O�4O=QE�4U�]Q7mQ6e�5]S6]UVmW�m[�uۗe��}��}��}��}��}]BCV   :�#)�")��8�$I@h�* @ @  ��(��8�$I�%i�gy����陞*�@h�*   @      ��x��x��x�舒h�����+ʦ캮뺮뺮뺮뺮뺮뺮뺮뺮뺮뺮뺮��� $  t$Gr$GR$ER$Gr�АU � �  �1$Er,��4O�4O=�=�SEWt�АU    �      ɰ��M%�R-US-�RE�SUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUM�4MY	   �Zs̭��A謗�(���N9���(���1c��R1CƖA��BCV Q  �1�1�r�I�$E�9*��9G���QJ��Z;J��Tk㜣�Q�(�ZK��Tk��  �  � �А@  �R
)��b�)�R�9�b�9��c�9(���9'��)��c�)眔�I朓�I(   �  �B(4dE ' �pM�4M%MEO]�EՕ4�45QTUMM�TUYMU�%M3MMUSEUUS�MU�e�4m�TU�Uնe[�}W�u�3M�UնMU�uW�u]�mݗ4�45QTUMU�TU�6Uն5Qt]QUeYTUYv]Y�UW�}MU�SM�UU�U��eU�u_tU�V]��UY�}�օ_�}¨��nʮ������.����I�LSEU�DQUMW�mSum[E�UՖESueU�}_ue��D�uEU�eQUeY�e]weW�EU�mUv}�t]]�u]Xf[���uu]�e�WeY�e]��u��LӶM��u�Uu��u�m��EU�uU��_�e�ׅ�yn��QUuݔ]_WeYn_7ھn<�mc�>��#G��,]�6��M�u��C�7�4Ӵm�Uu�t]_�u�h�PTU]We��UW�}[����}�U��UY�Ֆ�a�}���U����u�m]X~����2tu[h뺱̾�<�qt�>    L(��� � ��CLA��BH)��R���9)sRB)��RR���9&%sNJ(��PJK���B)��RZl�՚Z�5��Z(��PJ���[k5F�AȜ��9'���Z(���9*���:)��Z,)�X9'%��J!��JL%�C*���b,)��Zl�Řs(�ŒJl%�X[L9�s���9'%sNJ(��RRk�sR:)eJ*)�XJJ1sNJ!�BJ%�SJ��Rb+)�XJj�ŘsK1�PR�%�KJ1�sn���Ah-�c(%�c���C)���b,)�c��Řs(%ƒJ�%�X[���sN��Z����km���sЩ�ZSL��s��Ys�Z(��PJ���Z[�9�Rb+)�XJ��Řsk��PJ�%�XKJ5�k�5��Z��Řkj��s�1��Sk5�kN��Zs���c    &��BCV Q  !J1�A�1�41朔�1� �R1��R2� ��R��RR
���Rk��RRj�  � � 4%(4d% �
 `p��<Q4U�v,��D�4Uն��<Q4MU�m��D�4U�uu��<Q4UUu]]�DQ5U�ueY�=Q4UUu]Y�}�TU�ueY��_4UWu]Y�e�X]�ueY�u[V�u]Y�m[7�[�u���a9:�n�����;�  � �VG8),4d% � @��AH!�RH!�RJ	  p  0�� �  �RJ)��RJ)��RJ)��B!�B!�B!�B!�B!�B!�B �O8 �?ؠ)�8@�!+�p  ���r:	)5�9���Rj�a�1���ZK�sJI���b���PRJ��c!��Z��֚;)�k�9�Ji-�Xsν��Rk1�Zsｗ�b�5�܃´c����{�)�Zk�=� �P��Zs�A!��1�܃�=!\�9����a  w� D��3�$��� 	  b�1眃B�R�9��B(%R�1眃B%d�9��B(���1眃B	���9��B(��R2砃B	��RJ��B��RJ頃B	��RJ)!�B	��RJ)%�B	��RJ)��J(��RJ)��B)��RJ)��B(��RJ)���B)��RJ)��RR(��RJ)��RJ	��RJ)���RI  8  A'Ua�	�BCV @  �VS��A�1g�!1��BJ)�1C� �)S
!�!s�!��VK�    	 0@P0 >A'@p� Bd�H4,�� 1 $&(�@��E��t��.�:B��� 
H��	7<�'����R    p    ��F��G��HH     � � �!DD4��������                 OggS �
      A���   �R՛/.&&"!.,,(ԄLU~C���k;�z�� �)��Ǝa�֬�
����I�L�?��S��w	� $YR���H��k�C�0T}��2�zQ�����M�u��c�ʆ�:$]��@�h�t���8�ʰl��n��U�'4���x��YRb�� "�� ��kӪ:"22�U�����0wz�-�� LY}�Ƃ �I�j���������s��ʒR dY~�u�:���k�)S}��c2�]Qyk⇝� \������3!�3A�U�~��VI�g�~$���mT`�%A����\�1d�Рv��M�A����Æ����^�H�9�Z�?��.�O�����lYF��w�Ġ� ��|VN�-�W��4M�ck�ˊ��H�B��	ͽP��|[�I��#[�)=��2nҶ2�3������l{H�2{�� )%A��] �z�1�HR�$I���v�~��|�����o=�yu���|���z����{+��'�����U�T?Q�jV?>>>D[^^^N������ayyyy����������������e���������r2������e����ph������������r2�||8�������� ���	�����a||80///	�2^���.7��bg�m24� F��<�����{�H��X��'΅S\��k�_G�%�A�9��3�G�ҵ.=mYy�3K��fi;�Ǉ�%K[��r�YJ,�dfS`�x�He�$ %��ٴe�� �4��l�
 4RSRC [remap]

importer="ogg_vorbis"
type="AudioStreamOGGVorbis"
path="res://.import/shoot.ogg-f56457668e0bc642d16a3835d064d8a5.oggstr"

[deps]

source_file="res://shoot.ogg"
dest_files=[ "res://.import/shoot.ogg-f56457668e0bc642d16a3835d064d8a5.oggstr" ]

[params]

loop=false
loop_offset=0
  GDSC            c      ���ӄ�   ����϶��   ��������������¶   �����϶�   ���������������Ŷ���   ����׶��   ����������������¶��   ����ﶶ�   �������Ӷ���   �������ض���   ζ��   ϶��   ��������Ҷ��      res://Enemy.tscn   {      d             �      2                                                       	      
   !      #      $      %      ,      .      /      0      6      ?      L      [      `      a      3YYYYY;�  ?PQY;�  �  P�  R�  QYYY0�  PQV�  -YYY0�  P�  QV�  -YYY0�  PQV�  ;�  �  T�  PQ�  �  T�	  T�
  �(  P�  R�  Q�  �  T�	  T�  �(  P�  R�  Q�  �  P�  QYY`     [gd_scene load_steps=5 format=2]

[ext_resource path="res://player.tscn" type="PackedScene" id=1]
[ext_resource path="res://world.gd" type="Script" id=2]
[ext_resource path="res://Enemy.tscn" type="PackedScene" id=3]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 10, 155.366 )

[node name="world" type="Node2D"]
script = ExtResource( 2 )

[node name="player" parent="." instance=ExtResource( 1 )]
position = Vector2( 123, 223 )

[node name="Timer" type="Timer" parent="."]
process_mode = 0
wait_time = 2.0
autostart = true

[node name="Enemy" parent="." instance=ExtResource( 3 )]
position = Vector2( 75, -66 )

[node name="leftWall" type="RigidBody2D" parent="."]
position = Vector2( -7, 133 )
mode = 1

[node name="CollisionShape2D" type="CollisionShape2D" parent="leftWall"]
position = Vector2( -4, 3 )
shape = SubResource( 1 )

[node name="rightWall" type="RigidBody2D" parent="."]
position = Vector2( 257, 115 )
mode = 1

[node name="CollisionShape2D" type="CollisionShape2D" parent="rightWall"]
position = Vector2( 10, -2 )
shape = SubResource( 1 )

[node name="bottomWall" type="RigidBody2D" parent="."]
position = Vector2( 123, 267 )
mode = 1

[node name="CollisionShape2D" type="CollisionShape2D" parent="bottomWall"]
position = Vector2( 3, -2 )
rotation = 1.5708
shape = SubResource( 1 )

[node name="topWall" type="RigidBody2D" parent="."]
position = Vector2( 122, -12 )
mode = 1

[node name="CollisionShape2D" type="CollisionShape2D" parent="topWall"]
position = Vector2( 3, -2 )
rotation = 1.5708
shape = SubResource( 1 )
[connection signal="timeout" from="Timer" to="." method="_on_Timer_timeout"]
  [remap]

path="res://Bullet.gdc"
               [remap]

path="res://Enemy.gdc"
[remap]

path="res://player.gdc"
               [remap]

path="res://world.gdc"
�PNG

   IHDR   0   0   W��   sRGB ���  
IDATh�혡nA����
� i�IpM���N�'�>O��'@���� �#�T�U�M���ٽI�M�s������g� �D"�H$�D����k�k�Ĭ���7�NRd�.��	1k���@���t)^�����K�rm�Mͳ61�|����jU+fĿm����dB��jb-�EFֻ�P�ӗ��cڬ�!{���q�e�׊I����Z6c6Ml�G�@�)�6���x-����1�1�u�� ���5�>�p9�`���y�\k����n��k^�  |~�F�8IMj�f3;�.竨�`h5�����Gyc <��p�׌`.��G/.*;�D�	�`O����I�|c��+B�L�Z�f K�bSVmo���������"�R!BC͑=`��u��6rWw�W��P����y�w|����oP9F3�Mظt�boR��ڙ��LH� �� L֥qi���@	�w ��H���x�`3�� rtZ0��`��Tl�jU��Mј�I#�N��l    IEND�B`�ECFG      _global_script_classes             _global_script_class_icons             application/config/name         SpaceFighter   application/run/main_scene         res://world.tscn   application/config/icon         res://Player.png   display/window/size/width            display/window/size/height            display/window/size/test_width      h     display/window/size/test_height      h     display/window/stretch/mode         2d     display/window/stretch/aspect         keep   physics/2d/default_gravity          $   rendering/quality/driver/driver_name         GLES2   %   rendering/vram_compression/import_etc         &   rendering/vram_compression/import_etc2          )   rendering/environment/default_environment          res://default_env.tres    