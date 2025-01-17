PGDMP  -    1                 |            uniqlo    15.7    16.3                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16398    uniqlo    DATABASE     �   CREATE DATABASE uniqlo WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.874';
    DROP DATABASE uniqlo;
                postgres    false            �            1259    16504    advertisement    TABLE        CREATE TABLE public.advertisement (
    ad_id integer NOT NULL,
    description character varying,
    price integer,
    startdate character varying,
    enddate character varying,
    img_source character varying NOT NULL,
    title character varying
);
 !   DROP TABLE public.advertisement;
       public         heap    postgres    false            �            1259    16511    advertisement_ad_id_seq    SEQUENCE     �   ALTER TABLE public.advertisement ALTER COLUMN ad_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.advertisement_ad_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    218            �            1259    16513    category    TABLE     �   CREATE TABLE public.category (
    id integer NOT NULL,
    type character varying NOT NULL,
    user_type character varying,
    image_source character varying
);
    DROP TABLE public.category;
       public         heap    postgres    false            �            1259    16512    category_id_seq    SEQUENCE     �   ALTER TABLE public.category ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    221            �            1259    16436    product    TABLE       CREATE TABLE public.product (
    product_id integer NOT NULL,
    category character varying NOT NULL,
    sex character varying NOT NULL,
    title character varying NOT NULL,
    price integer NOT NULL,
    product_detail character varying NOT NULL,
    material character varying
);
    DROP TABLE public.product;
       public         heap    postgres    false            �            1259    16492    product_color    TABLE       CREATE TABLE public.product_color (
    product_color_id integer NOT NULL,
    product_id integer NOT NULL,
    color character varying NOT NULL,
    image_source character varying NOT NULL,
    bg_color character varying NOT NULL,
    amount integer NOT NULL
);
 !   DROP TABLE public.product_color;
       public         heap    postgres    false            �            1259    16491 "   product_color_product_color_id_seq    SEQUENCE     �   ALTER TABLE public.product_color ALTER COLUMN product_color_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.product_color_product_color_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    217            �            1259    16435    product_product_id_seq    SEQUENCE     �   ALTER TABLE public.product ALTER COLUMN product_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.product_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    215                      0    16504    advertisement 
   TABLE DATA           i   COPY public.advertisement (ad_id, description, price, startdate, enddate, img_source, title) FROM stdin;
    public          postgres    false    218   ,                 0    16513    category 
   TABLE DATA           E   COPY public.category (id, type, user_type, image_source) FROM stdin;
    public          postgres    false    221   ?!                 0    16436    product 
   TABLE DATA           d   COPY public.product (product_id, category, sex, title, price, product_detail, material) FROM stdin;
    public          postgres    false    215   K#                 0    16492    product_color 
   TABLE DATA           l   COPY public.product_color (product_color_id, product_id, color, image_source, bg_color, amount) FROM stdin;
    public          postgres    false    217   �C                  0    0    advertisement_ad_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.advertisement_ad_id_seq', 10, true);
          public          postgres    false    219                       0    0    category_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.category_id_seq', 12, true);
          public          postgres    false    220                       0    0 "   product_color_product_color_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.product_color_product_color_id_seq', 195, true);
          public          postgres    false    216                       0    0    product_product_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.product_product_id_seq', 40, true);
          public          postgres    false    214            y           2606    16510     advertisement advertisement_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.advertisement
    ADD CONSTRAINT advertisement_pkey PRIMARY KEY (ad_id);
 J   ALTER TABLE ONLY public.advertisement DROP CONSTRAINT advertisement_pkey;
       public            postgres    false    218            {           2606    16519    category category_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.category DROP CONSTRAINT category_pkey;
       public            postgres    false    221            w           2606    16498     product_color product_color_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.product_color
    ADD CONSTRAINT product_color_pkey PRIMARY KEY (product_color_id);
 J   ALTER TABLE ONLY public.product_color DROP CONSTRAINT product_color_pkey;
       public            postgres    false    217            u           2606    16442    product product_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (product_id);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public            postgres    false    215            |           2606    16499    product_color fk    FK CONSTRAINT     |   ALTER TABLE ONLY public.product_color
    ADD CONSTRAINT fk FOREIGN KEY (product_id) REFERENCES public.product(product_id);
 :   ALTER TABLE ONLY public.product_color DROP CONSTRAINT fk;
       public          postgres    false    215    217    3189                 x��U�nE�^?�� ��owv��* �"��T�ofggg֦��6�S����vU�TQP���P�~���"̜�q�(P�TYg�ό�����N��R�/�|X�gE~Z���bP�'E~a=�b��؋���|n���W�|~��>;��: �.��G���B� \GA� �L�z������>n4�;+ߤ��;���i��t#ѩ˝^��+��E�#�P�+�|�8��OT�1�N���v�;w��6ڽ�f��玲t���z��U���Է��f�����5��&�1 �����
���k 8r�"QG?��p~��'o�[<,�C�L�ay�C������cD�Op@�>R���`�%�L	%*^.����f}��Q��t4��@Vg��qUQm��/�uA#/!N��>�h���!��G��+��H��K"��bO)���B/��/�i۽sZ��Z��	$D`� �����+�#?�ۘDėܲ�Jk�����!��8A��T��0��	B���X��X?���@�pìT
P�����S\P_�^�A�$��,a^�(����B�f����-wmݽ��f�g��f�wVE�}��тR�Y�<��<�U-{b��r�L��~xVi��a�1�F�3{υݎ!Fs2� �h�1A�Q����/�T�l+�zcc�K�����'��@�O!�S;�z��,�;��@�%�c[׉���9��/�m�V$�y�4����֧�^9�5�h�ċ4,d!�#J!�n�G$�l+�N�ZqՍ������1S�����HK}��>��@r�/�5c��GC�t�����L�:������Z�7Nx"��x�h��2�X�]aΓ�Rp���O;"MU�-�P��|��z`E�W���`� lYa#�H��>!y5-L�/`M���g	�x��0�J�H2&d+%|�
�gJd���FN���?rmR��ľ��cR��(��qV��^�Ϗ���4q�u��XD��ú^�1ֳN&{B�h�2��6�5�Zk�V��j��9         �  x���ݎ�0���wI��B<�VZٞq��C����q���@��G�wr�[������F�X���4�e����%�C����9�G�&k��$ZI��|D������9�6��PO��+�>�`RT�JX��0Ȝ-O&;����%�ˡ��W�~Y����;z/��k����?�!L_�8��v��J��+���~X���e����mx�tp���o{���L����13*�Z�B��=�uɡvQ���}S���nw�~H�BT�ۀ�����$JK�:C:s"H��^yW����@�v�Y�d�Q{r�F��}=�u��k��
�{Þ��Z�ZF��W��^�V0����G����05�c9>� �u4�tt9�H2��Ih�NV&��=AGVBC'	�k��X8%��(�t�b���4,O�IN<���HY�ְ(.O_�ݢ�F�T[�m��CVE�0!(�kC)&��ś��>VNr'(r)�`)H�4`����l6 ���            x��]�o[Ǖ�L����];�Ӷ��u�i�4�h7h�A��Z�*z%y�|YbI�.��%�%��KS
*,Z�ɯ�K��)�̜3g�ν��%��"�Ǚ�����LfV/�<XX^��a~)�����~�M������w���nY��>��������
�|��W�~����E�7����L|09�u��m���~wh�3�S�߀����x������wG��������~��~�4x�=qN�<<-l���?�7{�O9�j��:�¿�j ��?�YtV_-]t'��r�ۃ.[�u�S��{�����]�w�m����@MS��G��,��+�l���S���C˩>��h�p���L4�c��`P��m�@�-h���C�$
�O�1�h'	ڀA��oIT�hl���Tĩ�s�^�<6��"��ihMD.`Z܃r�J����s�ҪVw�r��Z�������ݾ �/���ڂ���)�L͍��✘���.�Wb#��iZ�q�r˟
@��8/�4��Ы*�$��\���6�K��'�#�Ӏ	�
 �cͭr����5����Z�!��;H�:���Z�O)Qi�H��xz��|Z>چ��#qX���rx{�/u� ��+�*����t:�u�����~������+�D`]u����^��;��GN�K���y#�����!�u`n[� ����[f�<X́DH!{�ڈ��b#��d�e�CwДZӨ:Z�L+;��B�P�	j��% �6j�2�$E�"c�V�r�m�r{�����\-�Bʥh�����&��̪>�����P-H�tL��6�6�a�� b �w�Q����B��$��gv]6kX��� ���ң*]����ǢI��<�Z�J�av1��X�������t�&j�!�(��'�Ց�d�:��,S *@����	���.�]�f���{�#�Im���Źo~y^��\��۶l��R�<ZQK�l���C�����ʰF��䪿�rQ���'9A�:PxT����O�`��-�Q5��@am��Z�ъk���l*�x&č�B�e����tIs�A�
�3۬�,머䰔�y	w��65�5���7�P��|Yf"j&l�L��U1s9�HAΠ
=H������FM���Uqy*�qAL^�꭭��(����o��.�*�����Ͱ��b ���� �{��>�M9�����˽�u9c4����
� ��1<��b��Ҭ�R�8R/�
Q�6�F��"�`�eۙp�ud5�M���c#ڨ�"2_F��rT�SO4EdO���2%�� [�U���'R�`#Rۈ˓�����:h�=��Q0L'�0Q�6����d[{8�n�2�Ba���"9A
<T�R�#��Y�6�	0]��4�*Q;m-]�!���r;��j�!lh�c&I�JI,��!M�5���b��ՀZ@6گ��8#�� BU1��N�@�����͚b��ݿ���&[i�$�8��s�{�H��8�G�yc3i���?�dS't�HR�YZ���,4��El������W �F��������U���f�Bʃ AR� B'uWm0��d��ţ��]>k5�՟�zK�ᴠs�7qV߂o�W�T���]��#�`�-��Hf�M�9CSL�}�;D��@VX_\�]0J��VK�Cx�S����c	����ބ��7�K�ť�5�Dh�U�f�M<v(JK��sC������J
h}5��'�%q�.�v��Zx[�b�)T�C�Z�J$���Ǭ�KL{�����8,��_{1��	k����1U�`����G��.5�h(�Nd8�r�9jXrL�N��F�uX!.!�!z9M�ݲv��q�s�f�����T�4;桥���R��<��)�a�br�q�DQ��1u'�d���\�[���b����J曬7���q��p��ψ�T�� 貌�Ĥ��w�4;�c۠���&�o�����(�;�?J[QC����k��ypW��}��X)������]\$ٽb�:S���dL���x]J���|X�3S'���H�(��ԏ�@k�
ff�K	�NArƮ�u�'��7חQ���Tz�`�hϱ�<9�AWf1�I�n'Y)�8�ُ��F�a�8�9olb2son��ܢr�V�enqa9��p�S��������Pɉ�`�Dd���ni\����k5�ƺw�TO�v;�]V�l�L�a^�ʱ�kH�����U�od*�@��2��0�^f>K�jQJ �N�Kq2����;�01�V�΀̪���QMt<���w1���μJ�2��;�g���D%T��/-��̣�+�v�b�?��l�&�M	6J?1��7p�Xc��&,_��>a_^,yQ�7�c�Z�?uƴ�$;#���n}ހm5d��Uq���ZD(�DaL��P>�Dq�=`ٚfP!zS��E���h3�Y�wI�tи4h(./�e�
W\ҡd�JZ;KF��h�[jBD&<��@B�2)��y���{`3�qΘ"����sU�걇L㱐�7&��j��W�T��Z��m�	'"6��V�WMZ������&��)��D�-�������"���������q��α:ŷ���Rt�)k�e?��B�w��&U�U�'0<)3�t��c�Ð�H�'V`�)(7�02o���Q&�Tr�x�C��FU�j�Eq/�h�mhB[9��]+a�X�\���r�O��[��Ҡ�l�� ���F$ 1z��<ή���U"�G���tU�T�;h�;�-�
n���80��=�A�$�b�	t�8(��!�_=A\�ݓjO�~y��ɉ��r@����WJ�ݱq�I�&^k�����8��Y�g1�)���6����X��er,�.�I9FPq�r/α��8p�PA�)�P!��(��&�BA༐��8�9olb�0�SX��tb?p�IL��oQ��x��$;/DK7��8uP��Q܀>��C_q�F�<FI�*�CKCR��ˎG+����p��u8?x-Q�E�[,qAL�Dv�\W��~���e�M�g~�������r\�^��L�v:��QG��P�amO��"eQLwF����(�����+O)k=� ������x:r
�1����'�O�̀�\�78���g��gf��B�����wܜ7691bpIT�m��s�j������[���zU�ˮ�f�.�]�_�/�����p�})�V�V�C<17�Qȁ��q@�K,Ż����IC���j�E���ͅ�w���nu3�S�a��M��Hlh���
G⽆9�Mw���5[����x�U"�`�,~	y�YR��>�,ƚ$����j��r,�) )|�u�Ynzr:����K-Nwd���ONQ����d>���[Q#�=��<Ut��}$GL�3tѷ5��.|
;��5Pq��b|��f�h��"����(Q A7�8�IQ�l�#%�1.�9'1�Gfsx�5�/Z#DS�?��?Ҷ5�J7D;=�le�5UA%W���m��]~�29H��	��>����~�s� /Զ�i\M!n.,�n~YD4�&�;S5j�T�C�Gu���X�@���6䯘�+�%�B�g@y��vG�}����7���g�}$�}��P����([�"�2(���X���\Ǿ(@w�zs��&&q��	��m*A{��{��J���g�;����)9O��i�W����ޣ�܀Պ6Д�a�*Ą}�>>��Mn:�mr�h�h\�<�f�/̫:�o��V��j	F�x�HY�Y\]��V��W�=`�_]+j����DŎ�sm�a��$�v9�{��FU��}�}�\��)E�I��L�p�WX� �yGFM�#O��[i� $�鶊2�*�Hqhl��uF���$��<��5�A;��"���@]�d����R-q����:�z�so<J�����y��8 SK#7�_����܌���(��!�Z�06yytC-~&�5e�ĝՅŅ�o����r��*�߿݆%�@�V��i��Oq�����y�r,�ez�o9�S�c��.�RC    ��Ҝ�9J9��gVǶ=�F�e�?m_S���=;I�7]�#s㶭��Y���	^q�"���w�6����!Q��漵��{��i[�����2#{��,ɗ���<�Co�c��ϸTG�������	�z4;&V��	�B���5�>]�@�O&S�f���16��}����x�(�ң�X��RE�_�	���^�iU�;�>��\f�dG�������*�-/�*�<���
�p��/ͤE S�ɆCB��5S����*q��Q��'C�eB���[�(lM\�Z��Z����b9�:oua z{T���8��b�#��)��2P`��,�0��]���f&1���]��H	�� XF�ĳ��Ź��좸�}t���ӧ�S�3b9��KV:����U�+��<hw��<#�I����#o�Y:�o9�QB-1av_fhU�۠_���l���c"�Q�Qp ��>l!N�$_N`�3#�V�<^w������!u8�J������Nb���&�2Ǌff3�V/�ny�Ⴥ{W��Q��\4������q�矈�o�Oo�c������vݯ+�z �!UbUYQ�w�*S�G�����h�(�Tn�A���~�+�b��}��g_�/o���c�;��n�7���^� <�QHYWi�n��&-��;�_ֱ ���종r����{���U������Ra�&n�"è�KQi �8/hRj!��0� ��f��Y�������n�3N� �Ű'�m��qd	9*��.$��W�y?�&j�R1���(]B��VF�OX�z��B�f5,Z�6R��p	͠��]d�UY� s;�1�-�`!��UE0�i����(O�u���
|�p�qٌ\ɝK��m�d�2�j�ԫ�����S���~���R0��@d0��@�x91����EO~���7��Wq��ܽyq=������J��,�%����FK�u�3Iiԑѿ�6������1ڴ]��,(V��BNQM1vٞh�*m2��bKR+P2�K�C�)	&�\1O�2D �}��W��=�@����������F���wX��"�.��<�B�n\����d� �h �!���e�6��Jh��j�"n��_�(b��������|�	R�2g�X�����q)��#m��U�|�-
L�Y�g�w�n:\Ze�5ɯ���죇�#2���Ђ%��IB�o�*"�X����&e�����f	!	��0��(�r4��u0]�Aa%C&;��>#�0`q���/�9-n?�g߾/�-.���=X]��+���9?Jl���їiU��v����G�N
,7d��@g��2q�G��fskȏ�[ħ�<$���=���V�K���ӝ��[QU=o�#�ĉ��z�`�Ȑ�l�X�&G+�0��zh��Ifcރ��g�W����e3�p��NrF�ΰ!�i������-��Fb�q��d��4��ͤ�>��PS�j/�I�JS�Ј#�u���FC��%�]��7�1�h�ЭY�k����I�����P ���>X�׮�����&\�����r�q{Y�v���߅�~�t9@�p�X�i��y;m-#]Q�9f�ڿ=}�!��I8*<p޻������c8��;���ܛ[y4�xQW��t������Ū��]}G�d&&������1��}bh#�h>��w�� Sh��T(I&>D���3'Ƈ{ck����0��Ys��=��9祁��M�4������)	�N���`qu�6�O�C��_�R�_�ԥ��G˟)�n~
0��Ì�Z� 7p^��漱�����b6!��fu���ep3��K�#XH��W&u��S��q����y��
c�vYm<�!,a
*��t`��Ez哥�N&渌�4��gOg��\�8�@���v�FJI�ύ2|�q�&T���9�|��s�'|ct\�����q��r���
[cj��*��v�&�#7���+G�G9畡L�����z��s1fgS�q澪��h�7�3��׾� .͊ϯ���#c�S�3g*� B�7'~D@='�1p^��漱������oW-�f�濹�]^�@Sm_�a;�[kC����b�0�V�h��?�,�z��A�?B��Ѕ���2���Q�vzك�؈^L�7�J�*�@����#o�{�W��hdå�hQ 7(�G<�B �v~�����{�<(�ԗ��Z�1����;�u��*:���o�7m��'�B�[�g䉬l��Nxz�^eP�t�F�V�}�?.�3���ǫ�=g��Xi1Q8^�e�۞�_��r.z��kX7��ڄ]�����aTgӜ
�)�waT�k-�U7 ��̰��B����L��O����:)-�/異�G[�ǌ���Ћ�a[1�
�v:��._-tO�m���%� ���?8�b�yrUf����W�%�r���U\g�j�ob��x��I2�MM�H��L 2� s@&��+lه'��;�C�PL�8�pD�a�@��W�!�,_�.˻q�����F<ȐU�(�g��5���4������g�;0��V�a� ��ʯ�%�V����e���Y���06����k㺃��h��
�*�N+�$�ǐc[�~U%���9]�a�!{d��7uhb���$!u�[���p�n%��ƌ1��
(0
��d��/>\��7F���@Ƣ6q���ݻ��e%�[ÉտqPL���wl��H����$m���pC��҆AZ;��#Im�)]MOv���a�8<���R$n �,��_��e�J��M�5��L��J~0V�o噝q�������*�U�t�V�6���G{��G4�1$ʯ�|�0���l�n#N%���1��<���i8t3"���FI� �l��L���U�-����MR�4_M�2�Z?!���Bٙj��3��^�c�q���BG�.��P�%���~��Vd�_,/,��GU��u���-�E� ��Jrl���m-�z��0��f���P�*����fJ�F[)_8����������Uy����� >T$�J�k�{���6�9��Q;�i�Ud�6�H�Ƹ;u���d�S�y�W�uD�i�*�\��	Pp@���Pp����~<z%�pniu�`Q_r�r� ����i+tʐ���<��6���I'F����p����Jck�ol�^�j��G�~rX��']��`s�4P��KA[4y\�hVmEcȈv��u�Ȁ�R�� 4�V��i��V��e�%����F�C���2RL1�Nט}��k���'Љ\�����?�gx�@A�?!g8��R��s�:���-�H W�a��A����Y��a&3�8%�z4�²3q�?�A�:�����w1�FF0)a�Zq���*�� ��i(\Ib�q�"rH�y�촛�����
�� �q6�}�����3y�����E�w(B?�/�Q>I�,���l�Gb��lk�a`������1��#���=z}����A��b�?�b��4����}�H�CC����6���	����T���3�� �ˢ�(�^�Tb�uf�J�Zz�Z_Ao���5xXg���O�R���㛕�\>ϱЉ�6`*u,�?�A��;\��hO���L�Ƕ=����B~#�o�bV�]v�<Nc?1C�'�M�AF�GF3W%�8֑���Շn�4��;��6�1�F�2n O�����w3ט�]��P	���Oܶ,����r���0�+ң�zĞ�,^�u��|C�)��,>�:�Ґ�T]:E"�>��z�vӦ�a�]�֡�f�<�Ԉ��{��jՉ��$N!���q밸�(�UO����t��Sz8�oF+g̛,�q���%!;CI��l�è�7���wC\��>��b�i���L�B�}I\�t���¿���&�\�C'��Y�c-�0�ۺ-�V�xj�;B��ch�{l��7�9�xT���{��,]���I��i,��XJD�HB��)����.�ZbM��R,U�ƌ�6-�:�
9�"2��
�?F�'9� }   �9��:I��F;�f��q�Nq�<uy(�����9M>ւ���8�|��~�j��)����eP*�� G�+�Hl݊eiF�t��1>+~�ٵ��V�(����F�����eqO������:��������	�         �  x����n� ���S�	,�sY�G�����1�$�UT�����=b�s��,G��h��pH.��GOf:?������헯9:�������������y�����������~Z���Ǜ�?�������n����U�.C�\��������{�����F����_�~�������3��OW_��6�"\B#���zf�ᇋ7�G j1D�L�Nn����ɣ���Q"���<ʰ��3(���\6�:eH҆h(�φ��/ޞ�D��Ċ�^����ɖ�N�BD@��1�Y�`5e�KY�x=$�5Q/S�H�89}9$�:�!�	������ѩvX��H$B�����:B��G'�H�Ɋ_O���|�p�=ʓ���C���V��+�U�6-�O�9�������<J���g�.B�Y�������P�(�����%�E �,��ZĜ�ա�x*"�HY���(�|J¨�x{z>��k�ɕ6�	�3����!�DX�����f�h
�0k
[j�3kS��W���e�����gC�!>B�|�?r�O=Y�0��v�:���<lUb��mhl1+x7H"�#��3�y�M(���#B���5��Ba�TXUR����T4��sҖ�H���pK�Ċ�x�R��Ǌ-�G�D�H��N�y��wM�yz*ͣK����"�
�g�/_���5��H��H����K)�����U�ifN����ɼ4S��[Ac��Y����kf�"$��$��9Kx�uBὴ"(R��b)s�j���<Eq*S�!��1�=!^�*�2��뛬gke��8�·�ֲ�ʇ�F�@"<T�i���p�T�,��o�2�3Aw�X�(�z�(�$��3�7�a�p�e�iF��W�sw���ۤ<�X�4S�hg�4�
���Fn.e5B�0��R V<�N����/���H�K����� V!�f�w����{�H2<0��(bWX�HEX�w�#vqe��SkK��h{nV�s�*l=s���44�{�s 4c����.B�H��z�I1�4��0���=Ë3�4�3ta���w����(�eɎ̤5��g���'hw�
b�/��.B˰��<��1�󞒌�|r�p�xsq|>�a���^�����=���*%��D2BIk�">J3���5Dڛ�k�Yj�m-�2^mzB�1A��a˘��՘�+�w�H)���WǯO����=��=4�%#��w3�����sQ�G)��ӹ�Eh��PQC�!�ejy2w۞D���([ӹy�m��rck�`���D*(���=#I34���O�P��0$co� �J3����N�œ�#��(x�z�x}�d���R�cy�!ɨZ�Ƌ��㿍`8�.u��'q�K��EFP9F?��*(�3V(+�H�b��n�o�Jz�!=ah�2�
K��
�c�N�ge5B��A�^�t%"_�d�%��a�H�M�����j���νx����h��΄2�u��I�B���X�{YФ�����R��Ö�8ΙD<ǁ�a�? �Ɩ���Fg$�����%#�Z�����QJL�Ɩ��|d�3��f�1�g̅�{�N0ĳaiF�0�O1�R�`��Ë;�lK848x��zFHҌ@ָV�t+ްK�U�Z�a��emB��Y|�=���������*Z��.{��8nF��(24"��V���愾(�ܿ� �:�s�(r�H;"8�I���(C<ᘗ"a{�Q��@y���M�b�Y9��yzO�bOĞ)4�d4�x�K{B�9&b�4Dib
d�bg���,��X�po{G�\�v���!��Q��:ʋ����u#ͨE��t+����	Q�Q�q)ΖVϨ9�^e�d��M�:hݏX�y����Fdq`�u-�a��vxp�e��x)F k�"5���F��c�2�$�F@�y2��|_��ư�����5	��+�]
a�%-V��]�a�5鈡��v�[\Y�]�`��Љwn�#�a������͖n���9 ��(�ȑ��}{��(iI�V���
$�;)�Q���C����v}e1p��%)��;��A������#��4�ȏ6X�6 ���2�Q��1"���`�cߥCI;j#����^b�%��D�0�z�Ҏp�g��`~�(����@q���K3]N��V�:�E����`FOJ��^�����E(�G�C�<2�+�5���eh���A|J #υ�Ͱ3ɰ��l���" ��:0È3��S�ʏ<�E�,b�˥y�Bb�3�" F\���α܄H:j��� �$P�w0x�-Ar�8�@�J#b$`pұs�(b�z�ZG�S�֯�v�{��|��^M�����^4`ثw��I�>�0�Xu3�@��O8�k��w:�:Wg$��gu��ۨ��)[4d��������'���HJ�fVn� �s#r��r�9��\���\��۽Iw�J#r�ɚG�Q�����м�SNT��qO�!Bw�&7"���Oy֓j@1�r��'% m������.�j���ctH�5��nQOv�}���<��u�@���h@3�x<U<r���IH�9Orr�p � �}D�Ԉ ���i|Ѭ�DZ��].���>pC�(����JA�0R��hD��1U�Q�W��j��K�����`ɇ��P\Ah�)�i�҈8�p�MEXS���jj�V3�e�cޘ��]�<�uE��H%���FD�@�8jcM�%��44c�����	*����U�)�ƁQ{���.�8�l_ʵ%Ω�g�e��ԋ�����y���{�c��)o���q��? �E@����)�,��%95���A��ng
��N˫~�8n:��6�&�fk_�/΁GR')�l���^:1M�^H�A�u�4��=ynL�jVn]�hiR��HvrkM�i��W<w���4�7<�%�yqp������K�@@��s=�^A1R�h�ϟ={�?�=�~     