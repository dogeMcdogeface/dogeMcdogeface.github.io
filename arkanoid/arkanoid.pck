GDPC                 P
                                                                         T   res://.godot/exported/133200997/export-07be6258ce8a6a288bfa4adf8247df7b-scoreGUI.scn�7            |��5$��`�DzA�    P   res://.godot/exported/133200997/export-13ff16a1a67b7cf74659b874d069e377-Ball.scn@      �      �qY�g
���'�����    X   res://.godot/exported/133200997/export-1fbfc8d28e984606476a72d9d9e21e05-Areabutton.scn          �      ��42�Ndz*���D:;    T   res://.godot/exported/133200997/export-29fdfd30fa4417751fd70ed3cd3bc2c8-Gameover.scn�            �� X�U�9ZX 1M*    T   res://.godot/exported/133200997/export-2c9d950dbf36f6b202bd27f5743c0241-Brick.scn   @      �      %GO�;a��b��ܴ��    T   res://.godot/exported/133200997/export-48e5d1b20dd2d1f26223ae331764f95d-Slider.scn  @@      �      V+Ͷx5��Rє��m�    P   res://.godot/exported/133200997/export-51b1f204fed31defb7840737caf61831-Wall.scn0D      �      V�en�����'i��    P   res://.godot/exported/133200997/export-6455994a605b35b7d96f8362f3055c4a-Game.scn       �      "u��6�nY-�ӡf    P   res://.godot/exported/133200997/export-bcb0d2eb5949c52b6a65bfe9de3e985b-Main.scn�-      �	      Y�.�0��eL<r��C    ,   res://.godot/global_script_class_cache.cfg  �K             ��Р�8���8~$}P�    H   res://.godot/imported/black.png-19a8df0b1a4edb74ea2eecb66d46d03d.ctex   
      Z       �S��1�Qh���>��S    D   res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex�      �      �̛�*$q�*�́        res://.godot/uid_cache.bin  �O      =      Q/n*$ҦD�߰��       res://Areabutton.tscn.remap �G      g       ��Nlڐ�*ѧG���5       res://Ball.gd   �      �      ��_K���~g��y	       res://Ball.tscn.remap   `H      a       ��c��!�2�ς.       res://Brick.tscn.remap  �H      b       �c��X[Xh�	;Rv�       res://Game.gd         �       �&N�������h       res://Game.tscn.remap   @I      a       ����:w�W�0[��+J       res://Gameover.tscn.remap   �I      e       :fE!�K"8�ŬL�       res://Main.gd   P*      M      6��ΌL������       res://Main.tscn.remap    J      a       3 J�M�B�b��}�       res://Slider.gd �>      �      _�k�IǺ(l�σ�8K�       res://Slider.tscn.remap  K      c       f}�Ξ�7�X?3��{�J       res://Wall.tscn.remap   pK      a       �`?7z�,d��m:>MZ       res://black.png.import  p
      �       zǲ=���[��j       res://icon.svg   L      �      C��=U���^Qu��U3       res://icon.svg.import   �)      �       W�Q��'�4�PDx       res://project.binary Q      ~      ��,�!�����qm�       res://scoreGUI.tscn.remap   �J      e       ��(<�8N35+-1�<~    TVqg��eRSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    size    script 	   _bundled    
   Texture2D    res://icon.svg �P���9      local://RectangleShape2D_pacxa T         local://PackedScene_344yo u         RectangleShape2D             PackedScene          	         names "         Area2D    monitorable    CollisionShape2D    shape 	   Sprite2D    scale    texture    	   variants                        
   ��l>�L>                node_count             nodes        ��������        ����                            ����                           ����                         conn_count              conns               node_paths              editable_instances              version             RSRC�=p�Cr�x��extends CharacterBody2D

signal collided(body)


const SPEED = 300.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _ready():
	velocity.y = SPEED
	velocity = velocity.rotated(randr(1.0))

func _physics_process(delta):
	
	##TODO:
	##Switch between arcade and realistic graviy
	
	##TODO:
	##Switch between arcade and realistic bouncing
	var collision = move_and_collide(velocity * delta)
	if collision:
		velocity = velocity.bounce(collision.get_normal().rotated(randr(0.01)))
		collided.emit(collision.get_collider())

func randr(val):
	return randf_range(-val, val)

�B/S6h�RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    radius    script 	   _bundled       Script    res://Ball.gd ��������
   Texture2D    res://icon.svg �P���9      local://CircleShape2D_iubi5 x         local://PackedScene_774jy �         CircleShape2D          �%�A         PackedScene          	         names "         Ball    script    CharacterBody2D    CollisionShape2D    shape 	   Sprite2D    scale    texture    	   variants                           
     �>  �>               node_count             nodes        ��������       ����                            ����                           ����                         conn_count              conns               node_paths              editable_instances              version             RSRC�����]ո�y�GST2   �   Y      ����               � Y        "   RIFF   WEBPVP8L   /�  �DD�˷s��[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://c5pqx8w8slwcx"
path="res://.godot/imported/black.png-19a8df0b1a4edb74ea2eecb66d46d03d.ctex"
metadata={
"vram_texture": false
}
 ¼��jW��8�2�9RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       PackedScene    res://Wall.tscn �ˮ�k�tI      local://PackedScene_q3ug5          PackedScene          
         names "         Brick    scale    metadata/Level    CollisionShape2D 	   Sprite2D    	   variants                 
   �G@  �?            node_count             nodes        �����������    ����                         conn_count              conns               node_paths              editable_instances              base_scene              version             RSRC�extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       PackedScene    res://Slider.tscn `T�a&�r   PackedScene    res://Ball.tscn �b�*��   PackedScene    res://Wall.tscn �ˮ�k�tI   PackedScene    res://Brick.tscn ��ܩ�p      local://PackedScene_oosd7 �         PackedScene          	         names "         Game    Node2D    Slider 	   position    motion_mode    Ball    Walls    Node    Wall    scale    Wall2 	   rotation    Wall5    Bottom    metadata/Killer    Bricks    Brick    	   variants                 
    @D �D               
    @D  TC         
     �C  `A
   ՉjBP߲?
    �8 ��C   �ɿ
    �nD ��C
     �C @6D               
    �	D  C      node_count    
         nodes     d   ��������       ����                ���                                  ���                                 ����               ���               	                 ���
                  	   	                 ���            
      	   	                 ���               	                              ����               ���                         conn_count              conns               node_paths              editable_instances              version             RSRCp�RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script    
   Texture2D    res://black.png �tdA ��_   PackedScene    res://Areabutton.tscn �yux�A      local://PackedScene_lpxhc <         PackedScene          	         names "       	   Gameover    layout_mode    anchors_preset    anchor_right    anchor_bottom    grow_horizontal    grow_vertical    Control    TextureRect 	   modulate    texture    expand_mode    metadata/_edit_use_anchors_    Label    anchor_left    anchor_top    offset_left    offset_top    offset_right    offset_bottom $   theme_override_font_sizes/font_size    text    horizontal_alignment    MarginContainer %   theme_override_constants/margin_left $   theme_override_constants/margin_top &   theme_override_constants/margin_right '   theme_override_constants/margin_bottom    size_flags_horizontal    Area2D2 	   Control2    RestartArea    	   variants                        �?           �?  �?  �?�� ?                                  ?    �6�     �    �6C     C   d         G A M E
O V E R            ��          2                  node_count             nodes     �   ��������       ����                                                          ����
   	                                          
                                    ����                  	      	      	      	      
                                                                           ����                                                                                                  ����                          ���                           ����                    ���                    conn_count              conns               node_paths              editable_instances              version             RSRC�'JiGST2   �   �      ����               � �        �  RIFF�  WEBPVP8L�  /������!"2�H�$�n윦���z�x����դ�<����q����F��Z��?&,
ScI_L �;����In#Y��0�p~��Z��m[��N����R,��#"� )���d��mG�������ڶ�$�ʹ���۶�=���mϬm۶mc�9��z��T��7�m+�}�����v��ح�m�m������$$P�����එ#���=�]��SnA�VhE��*JG�
&����^x��&�+���2ε�L2�@��		��S�2A�/E���d"?���Dh�+Z�@:�Gk�FbWd�\�C�Ӷg�g�k��Vo��<c{��4�;M�,5��ٜ2�Ζ�yO�S����qZ0��s���r?I��ѷE{�4�Ζ�i� xK�U��F�Z�y�SL�)���旵�V[�-�1Z�-�1���z�Q�>�tH�0��:[RGň6�=KVv�X�6�L;�N\���J���/0u���_��U��]���ǫ)�9��������!�&�?W�VfY�2���༏��2kSi����1!��z+�F�j=�R�O�{�
ۇ�P-�������\����y;�[ ���lm�F2K�ޱ|��S��d)é�r�BTZ)e�� ��֩A�2�����X�X'�e1߬���p��-�-f�E�ˊU	^�����T�ZT�m�*a|	׫�:V���G�r+�/�T��@U�N׼�h�+	*�*sN1e�,e���nbJL<����"g=O��AL�WO!��߈Q���,ɉ'���lzJ���Q����t��9�F���A��g�B-����G�f|��x��5�'+��O��y��������F��2�����R�q�):VtI���/ʎ�UfěĲr'�g�g����5�t�ۛ�F���S�j1p�)�JD̻�ZR���Pq�r/jt�/sO�C�u����i�y�K�(Q��7őA�2���R�ͥ+lgzJ~��,eA��.���k�eQ�,l'Ɨ�2�,eaS��S�ԟe)��x��ood�d)����h��ZZ��`z�պ��;�Cr�rpi&��՜�Pf��+���:w��b�DUeZ��ڡ��iA>IN>���܋�b�O<�A���)�R�4��8+��k�Jpey��.���7ryc�!��M�a���v_��/�����'��t5`=��~	`�����p\�u����*>:|ٻ@�G�����wƝ�����K5�NZal������LH�]I'�^���+@q(�q2q+�g�}�o�����S߈:�R�݉C������?�1�.��
�ڈL�Fb%ħA ����Q���2�͍J]_�� A��Fb�����ݏ�4o��'2��F�  ڹ���W�L |����YK5�-�E�n�K�|�ɭvD=��p!V3gS��`�p|r�l	F�4�1{�V'&����|pj� ߫'ş�pdT�7`&�
�1g�����@D�˅ �x?)~83+	p �3W�w��j"�� '�J��CM�+ �Ĝ��"���4� ����nΟ	�0C���q'�&5.��z@�S1l5Z��]�~L�L"�"�VS��8w.����H�B|���K(�}
r%Vk$f�����8�ڹ���R�dϝx/@�_�k'�8���E���r��D���K�z3�^���Vw��ZEl%~�Vc���R� �Xk[�3��B��Ğ�Y��A`_��fa��D{������ @ ��dg�������Mƚ�R�`���s����>x=�����	`��s���H���/ū�R�U�g�r���/����n�;�SSup`�S��6��u���⟦;Z�AN3�|�oh�9f�Pg�����^��g�t����x��)Oq�Q�My55jF����t9����,�z�Z�����2��#�)���"�u���}'�*�>�����ǯ[����82һ�n���0�<v�ݑa}.+n��'����W:4TY�����P�ר���Cȫۿ�Ϗ��?����Ӣ�K�|y�@suyo�<�����{��x}~�����~�AN]�q�9ޝ�GG�����[�L}~�`�f%4�R!1�no���������v!�G����Qw��m���"F!9�vٿü�|j�����*��{Ew[Á��������u.+�<���awͮ�ӓ�Q �:�Vd�5*��p�ioaE��,�LjP��	a�/�˰!{g:���3`=`]�2��y`�"��N�N�p���� ��3�Z��䏔��9"�ʞ l�zP�G�ߙj��V�>���n�/��׷�G��[���\��T��Ͷh���ag?1��O��6{s{����!�1�Y�����91Qry��=����y=�ٮh;�����[�tDV5�chȃ��v�G ��T/'XX���~Q�7��+[�e��Ti@j��)��9��J�hJV�#�jk�A�1�^6���=<ԧg�B�*o�߯.��/�>W[M���I�o?V���s��|yu�xt��]�].��Yyx�w���`��C���pH��tu�w�J��#Ef�Y݆v�f5�e��8��=�٢�e��W��M9J�u�}]釧7k���:�o�����Ç����ս�r3W���7k���e�������ϛk��Ϳ�_��lu�۹�g�w��~�ߗ�/��ݩ�-�->�I�͒���A�	���ߥζ,�}�3�UbY?�Ӓ�7q�Db����>~8�]
� ^n׹�[�o���Z-�ǫ�N;U���E4=eȢ�vk��Z�Y�j���k�j1�/eȢK��J�9|�,UX65]W����lQ-�"`�C�.~8ek�{Xy���d��<��Gf�ō�E�Ӗ�T� �g��Y�*��.͊e��"�]�d������h��ڠ����c�qV�ǷN��6�z���kD�6�L;�N\���Y�����
�O�ʨ1*]a�SN�=	fH�JN�9%'�S<C:��:`�s��~��jKEU�#i����$�K�TQD���G0H�=�� �d�-Q�H�4�5��L�r?����}��B+��,Q�yO�H�jD�4d�����0*�]�	~�ӎ�.�"����%
��d$"5zxA:�U��H���H%jس{���kW��)�	8J��v�}�rK�F�@�t)FXu����G'.X�8�KH;���[ <�����8����[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://outuweadasak"
path="res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex"
metadata={
"vram_texture": false
}
 extends Control

var hscor = 0
var score = 0
var lives = 0
var round = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Grid/GUI/VBoxContainer/hscor.text=str(hscor)
	$Grid/GUI/VBoxContainer/score.text=str(score)
	$Grid/GUI/VBoxContainer/lives.text=str(lives)
	$Grid/GUI/VBoxContainer/round.text=str(round)
	pass


func gameover():
	##TODO: Highlight killer brick, show game over text
	print("gameover")
	$Gameover.show()
	$Grid/Game/Ball.set_physics_process(false)
	pass

func _on_ball_collided(body):
	##TODO play ping sound
	if body.get_meta("Killer") :
		gameover()
	if body.has_meta("Level"):
		score += body.get_meta("Level")
	if body.has_method("hit"):
		body.hit()

׾�RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       Script    res://Main.gd ��������
   Texture2D    res://black.png �tdA ��_   PackedScene    res://Ball.tscn �b�*��   PackedScene    res://Slider.tscn `T�a&�r   PackedScene    res://Wall.tscn �ˮ�k�tI   PackedScene    res://Brick.tscn ��ܩ�p   PackedScene    res://scoreGUI.tscn 4����i   PackedScene    res://Gameover.tscn +�f�p�]^      local://PackedScene_75x4i B         PackedScene          	         names "   (      Main    layout_mode    anchors_preset    anchor_right    anchor_bottom    grow_horizontal    grow_vertical    size_flags_horizontal    size_flags_vertical    script    Control    Grid    columns    GridContainer    Game    Background    texture    expand_mode    stretch_mode    TextureRect    Ball 	   position    Slider    Walls    Node2D    WallL    scale    WallR    WallT    WallB    metadata/Killer    Brick    Bricks    GUI 	   Gameover    visible    offset_left    offset_right    _on_ball_collided 	   collided    	   variants                        �?                                                    
     �C  �C         
     D �D         
     0A  �C
   R��?1�B
    @D  �C
     D   A
   )\OB  �?
     D �4D               
    ��C  �C                              �A     �      node_count             nodes     �   ��������
       ����	                                                    	                        ����	                                                                    
      ����                                        ����	                                                                    ���   	         
              ���                                ����               ���                                ���                                ���                                ���                                      ���                                 ����               ���!                           ���"         #            $      %                conn_count             conns               '   &                    node_paths              editable_instances              version             RSRC�O-k6W���F?RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script           local://PackedScene_wxrm3 �          PackedScene          	         names "         GUI    anchor_right    anchor_bottom    grow_horizontal    grow_vertical %   theme_override_constants/margin_left $   theme_override_constants/margin_top &   theme_override_constants/margin_right '   theme_override_constants/margin_bottom    MarginContainer    VBoxContainer    layout_mode    HIGHSCORELABEL    text    Label    hscor    Spacer    custom_minimum_size    size_flags_vertical    NinePatchRect    SCORELABEL    score    Spacer3    LIFESLABEL    lives    Spacer2    ROUNDLABEL    round    	   variants            �?                  HIGH
      SCORE       0 
         HB            SCORE
       0
       LIFES             ROUND
       node_count             nodes     �   ��������	       ����                                                                 
   
   ����                          ����                                ����                                ����                                      ����                                ����                                ����                                      ����            	                    ����                                ����            
                    ����                                ����                         conn_count              conns               node_paths              editable_instances              version             RSRC#c�=�v5�y]��Zextends CharacterBody2D


const SPEED = 300.0

func _physics_process(delta):

	velocity.y = 0


	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	var collision = move_and_collide(velocity * delta)
	velocity.y = 0
ɘ��pBJ�rRSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    size    script 	   _bundled       Script    res://Slider.gd ��������
   Texture2D    res://icon.svg �P���9      local://RectangleShape2D_soeoi {         local://PackedScene_t78tu �         RectangleShape2D       
     PC  �A         PackedScene          	         names "   	      Slider    script    CharacterBody2D    CollisionShape2D    shape 	   Sprite2D 	   position    scale    texture    	   variants                           
    �*    
     �?" 8>               node_count             nodes        ��������       ����                            ����                           ����                               conn_count              conns               node_paths              editable_instances              version             RSRCRSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    size    script 	   _bundled    
   Texture2D    res://icon.svg �P���9      local://RectangleShape2D_kwx31 T         local://PackedScene_n12td u         RectangleShape2D             PackedScene          	         names "   	      Wall    metadata/Killer    StaticBody2D    CollisionShape2D    shape 	   Sprite2D 	   position    scale    texture    	   variants                        
     6 �
      >   >                node_count             nodes        ��������       ����                            ����                           ����                               conn_count              conns               node_paths              editable_instances              version             RSRC�q��)[remap]

path="res://.godot/exported/133200997/export-1fbfc8d28e984606476a72d9d9e21e05-Areabutton.scn"
3aލ�d�er[remap]

path="res://.godot/exported/133200997/export-13ff16a1a67b7cf74659b874d069e377-Ball.scn"
��jIlx3�� '���[remap]

path="res://.godot/exported/133200997/export-2c9d950dbf36f6b202bd27f5743c0241-Brick.scn"
	G=6#����"��[remap]

path="res://.godot/exported/133200997/export-6455994a605b35b7d96f8362f3055c4a-Game.scn"
R擣�o�}3:-��b�[remap]

path="res://.godot/exported/133200997/export-29fdfd30fa4417751fd70ed3cd3bc2c8-Gameover.scn"
mk/<I_a( H[remap]

path="res://.godot/exported/133200997/export-bcb0d2eb5949c52b6a65bfe9de3e985b-Main.scn"
g3"f��,�{�o�Z[remap]

path="res://.godot/exported/133200997/export-07be6258ce8a6a288bfa4adf8247df7b-scoreGUI.scn"
�.��r#��I\[remap]

path="res://.godot/exported/133200997/export-48e5d1b20dd2d1f26223ae331764f95d-Slider.scn"
^�LHRb����*[remap]

path="res://.godot/exported/133200997/export-51b1f204fed31defb7840737caf61831-Wall.scn"
<߉=�ˍ�����list=Array[Dictionary]([])
mJ;�Q<svg height="128" width="128" xmlns="http://www.w3.org/2000/svg"><rect x="2" y="2" width="124" height="124" rx="14" fill="#363d52" stroke="#212532" stroke-width="4"/><g transform="scale(.101) translate(122 122)"><g fill="#fff"><path d="M105 673v33q407 354 814 0v-33z"/><path fill="#478cbf" d="m105 673 152 14q12 1 15 14l4 67 132 10 8-61q2-11 15-15h162q13 4 15 15l8 61 132-10 4-67q3-13 15-14l152-14V427q30-39 56-81-35-59-83-108-43 20-82 47-40-37-88-64 7-51 8-102-59-28-123-42-26 43-46 89-49-7-98 0-20-46-46-89-64 14-123 42 1 51 8 102-48 27-88 64-39-27-82-47-48 49-83 108 26 42 56 81zm0 33v39c0 276 813 276 813 0v-39l-134 12-5 69q-2 10-14 13l-162 11q-12 0-16-11l-10-65H447l-10 65q-4 11-16 11l-162-11q-12-3-14-13l-5-69z"/><path d="M483 600c3 34 55 34 58 0v-86c-3-34-55-34-58 0z"/><circle cx="725" cy="526" r="90"/><circle cx="299" cy="526" r="90"/></g><g fill="#414042"><circle cx="307" cy="532" r="60"/><circle cx="717" cy="532" r="60"/></g></g></svg>
@"��M�]{   �yux�A   res://Areabutton.tscn�b�*��   res://Ball.tscn�tdA ��_   res://black.png��ܩ�p   res://Brick.tscn��}Jc*`   res://Game.tscn+�f�p�]^   res://Gameover.tscn�P���9   res://icon.svg�?�g//   res://Main.tscn4����i   res://scoreGUI.tscn`T�a&�r   res://Slider.tscn�ˮ�k�tI   res://Wall.tscn�̍ECFG      application/config/name         arkanoid   application/run/main_scene         res://Main.tscn    application/config/features$   "         4.1    Forward Plus       application/config/icon         res://icon.svg     input/Restart�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   R   	   key_label             unicode    r      echo          script      
   input/Exit�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode    @ 	   key_label             unicode           echo          script      Y