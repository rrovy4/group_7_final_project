PGDMP     
    /    
            y           group_7_final_project    13.1    13.1     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    24735    group_7_final_project    DATABASE     y   CREATE DATABASE group_7_final_project WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
 %   DROP DATABASE group_7_final_project;
                postgres    false            �            1259    24775    age_dui_fatal    TABLE     a   CREATE TABLE public.age_dui_fatal (
    "INJURY" text,
    "INVAGE" text,
    "ACCNUM" bigint
);
 !   DROP TABLE public.age_dui_fatal;
       public         heap    postgres    false            �            1259    24750    driv_age_fatal    TABLE     w   CREATE TABLE public.driv_age_fatal (
    "INVTYPE" text,
    "INVAGE" text,
    "ACCLASS" text,
    "ACCNUM" bigint
);
 "   DROP TABLE public.driv_age_fatal;
       public         heap    postgres    false            �            1259    24759    impact_injury    TABLE     d   CREATE TABLE public.impact_injury (
    "IMPACTYPE" text,
    "INJURY" text,
    "ACCNUM" bigint
);
 !   DROP TABLE public.impact_injury;
       public         heap    postgres    false            �            1259    24767    man_fatal_injury    TABLE     g   CREATE TABLE public.man_fatal_injury (
    "MANOEUVER" text,
    "INJURY" text,
    "ACCNUM" bigint
);
 $   DROP TABLE public.man_fatal_injury;
       public         heap    postgres    false            �            1259    24736    test    TABLE     Z   CREATE TABLE public.test (
    id integer NOT NULL,
    name character(1),
    dt date
);
    DROP TABLE public.test;
       public         heap    postgres    false            �          0    24775    age_dui_fatal 
   TABLE DATA           E   COPY public.age_dui_fatal ("INJURY", "INVAGE", "ACCNUM") FROM stdin;
    public          postgres    false    204   ;       �          0    24750    driv_age_fatal 
   TABLE DATA           R   COPY public.driv_age_fatal ("INVTYPE", "INVAGE", "ACCLASS", "ACCNUM") FROM stdin;
    public          postgres    false    201   �       �          0    24759    impact_injury 
   TABLE DATA           H   COPY public.impact_injury ("IMPACTYPE", "INJURY", "ACCNUM") FROM stdin;
    public          postgres    false    202   I       �          0    24767    man_fatal_injury 
   TABLE DATA           K   COPY public.man_fatal_injury ("MANOEUVER", "INJURY", "ACCNUM") FROM stdin;
    public          postgres    false    203   �        �          0    24736    test 
   TABLE DATA           ,   COPY public.test (id, name, dt) FROM stdin;
    public          postgres    false    200   �"       5           2606    24740    test test_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.test
    ADD CONSTRAINT test_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.test DROP CONSTRAINT test_pkey;
       public            postgres    false    200            =           1259    24781    ix_age_dui_fatal_INJURY    INDEX     W   CREATE INDEX "ix_age_dui_fatal_INJURY" ON public.age_dui_fatal USING btree ("INJURY");
 -   DROP INDEX public."ix_age_dui_fatal_INJURY";
       public            postgres    false    204            >           1259    24782    ix_age_dui_fatal_INVAGE    INDEX     W   CREATE INDEX "ix_age_dui_fatal_INVAGE" ON public.age_dui_fatal USING btree ("INVAGE");
 -   DROP INDEX public."ix_age_dui_fatal_INVAGE";
       public            postgres    false    204            6           1259    24758    ix_driv_age_fatal_ACCLASS    INDEX     [   CREATE INDEX "ix_driv_age_fatal_ACCLASS" ON public.driv_age_fatal USING btree ("ACCLASS");
 /   DROP INDEX public."ix_driv_age_fatal_ACCLASS";
       public            postgres    false    201            7           1259    24757    ix_driv_age_fatal_INVAGE    INDEX     Y   CREATE INDEX "ix_driv_age_fatal_INVAGE" ON public.driv_age_fatal USING btree ("INVAGE");
 .   DROP INDEX public."ix_driv_age_fatal_INVAGE";
       public            postgres    false    201            8           1259    24756    ix_driv_age_fatal_INVTYPE    INDEX     [   CREATE INDEX "ix_driv_age_fatal_INVTYPE" ON public.driv_age_fatal USING btree ("INVTYPE");
 /   DROP INDEX public."ix_driv_age_fatal_INVTYPE";
       public            postgres    false    201            9           1259    24765    ix_impact_injury_IMPACTYPE    INDEX     ]   CREATE INDEX "ix_impact_injury_IMPACTYPE" ON public.impact_injury USING btree ("IMPACTYPE");
 0   DROP INDEX public."ix_impact_injury_IMPACTYPE";
       public            postgres    false    202            :           1259    24766    ix_impact_injury_INJURY    INDEX     W   CREATE INDEX "ix_impact_injury_INJURY" ON public.impact_injury USING btree ("INJURY");
 -   DROP INDEX public."ix_impact_injury_INJURY";
       public            postgres    false    202            ;           1259    24773    ix_man_fatal_injury_INJURY    INDEX     ]   CREATE INDEX "ix_man_fatal_injury_INJURY" ON public.man_fatal_injury USING btree ("INJURY");
 0   DROP INDEX public."ix_man_fatal_injury_INJURY";
       public            postgres    false    203            <           1259    24774    ix_man_fatal_injury_MANOEUVER    INDEX     c   CREATE INDEX "ix_man_fatal_injury_MANOEUVER" ON public.man_fatal_injury USING btree ("MANOEUVER");
 3   DROP INDEX public."ix_man_fatal_injury_MANOEUVER";
       public            postgres    false    203            �   a  x�e�Kr�0C��)r�N$S�dמ��,�H?�L'�^?6E��t�P$����b>��S�!O鼃$!F����Y%�&P��C2 �	�
qEV�;�(�R$���&\i���������%��c�:������AsR��]� �����r�g#
:�u%o+8�T� �uE%e��V�Tw]UR;���~��e�]���ܾ�$-8LJ���ªDL�7�/2�B`��@f��|�T䵈6�	�����$p���?��g5ୀ��c�8�� ��e]�ܮN4��Lk��3����y�÷7f��i ﶽ�Pm�iʮ�';��6,���/����H�^��iz �B;      �   �  x��Z�n�F<�_�p���1�]Y Y/� {�E�k�
Ht��д8���⃪zz^]�������<ݕE>���}>��?��!�4��rz�+���Jj��[w5`�6R����źB ��n#-.*� ��\ԋ����H�H��E ����-../ `�l[�n��@�m�ϗ�q�c�[��m ���&�,��1�>��..Z' ������hq� �j[^����w �l��C��.H�x�8� �l�,z�`�e|�?��0����<�߇S"xJ¶��>����[G�@Q*����~%)�5 ���$�"eYB���d�ݼ� �}X�җ� }�H_N���������>��!: %C}@j�J�� ��=��ST�� �IHRt�)ڢ����@��U I��V��6�\�N� ZI�N�@Rw�Z%;U	 Z��ݹ�M �M��x�.d	�;z�0��}��U�.�j��x�����>�|��_�P��Ȱ#���h!d������x��~�ߟwSRB��Z���qYe�͑�-����h��&&� ��H���N�(���(׶B���J��h�"��F����9�7�cO�:z�����u�C��*{�m���_��2��ԭ��=���&�����������*��󶃢fPY���=�$���5O���l��u�OQ��[?;���\&��<�"��@����00����DH�n�x���l�0�d��a`y��3�"{��f��l<�4Z����aU�2̳Y�ø0�N�MC�V��dY}(���큥$����ʅ������v���Y���8��J�~?FȧY�s��]��}\� �@n3�N�L�E���gD�.���a$A�<�aM�0<]'�P�Кa8�*^����7�-�V6�'�*F�K<_U�#����@�8e�����*��b�:�=���wS�|Ű�2T���I.��jr��R6��*}<�X��d�S3G�W����H��4��h�!�T�cyn,S���:�$>��-���ߍRX���>f)em(�>��<��ojD@R��1Qׇq/����Q�d+1��5��zAT�ɾ��_�8��8I�2+w7�/i�I���q)Y���Aһ'�������� �X'�Rs���(�u�UKW���$�PD��_�"[�{q���͵5�SV"\r�5W#�*�kS�@�ڎX�f&�� �^������0O�Za=_�oi�
��]��Ŕ
�(�;��4�(��yFeR[���()�SU��R;��Rg�Wg���5P�K2�bvz����8%�� ں�N֖>�Q��FA2ȟ����C�^�U�8I
����0�v�t#)�%>wD�T�)�A��aW�H|ۈh�nGL3O��i��K{J����~����_?eY�?���      �   w  x�}T�n� <���T���(joi�>r��(�rp��V������d�̲3�.^�}'�aDW`V>܈�~(0jR��:�H��ؤ��ײ��8��^�J�cպ���6"d�F�/a�\���`���wש�)�}g����	�� M���� �X�o��y;�!�dr�h��&Na�s�]ݔJA�,[y6�z�7�2|�Z\5��4GR�3�\y�s��)��^��B#|�t
Ee�tb�!_�^7�rz��65bA�p6Ţ����$0�`q}��޵0F�V��V���1�*�Gq��S�7����ZVv?�,5$��x��� �0�	.�>���A�Un�oy��D�\3A��Ÿ�R����~%U}My�S�q ���tH      �   �  x���KS� ���S�8y�$G��^�:Vo^pB��:4�㷗�!�!��������C��3a��z$=�VڄxK~�Xx�[֞�C9s &��3�J�=����"'hI����o(���4)xVUb()+�1����R�ThK�
FW�l�5)e#�0�R�GT��1�R�:�g�$��u����7T�s�q��	u%kT�)�:R.տT��Fw�2A�u�l���@g���7"�n��tQ<P�Y�l������n�/�~�v�v5��*�]����l��W�H��@j�⥯�灪�7"��͖i�.��f/КMA�T��2�O`��=�]�o*�������d�g&.�a$�|\B2{h*���	�]o�JZz��1@����L3��z�������.Bj��x������@�u�\$)J���Cӻ���1䬦\[!5��?ّ�s�6<n쁝Ԑ��om����B��5 �      �      x������ � �     