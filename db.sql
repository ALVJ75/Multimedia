PGDMP     -                    |         
   multimedia    12.22    12.22                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16428 
   multimedia    DATABASE     �   CREATE DATABASE multimedia WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_United States.1252' LC_CTYPE = 'Spanish_United States.1252';
    DROP DATABASE multimedia;
                postgres    false            �            1259    16429    ci_sessions    TABLE     �   CREATE TABLE public.ci_sessions (
    id character varying(128) NOT NULL,
    ip_address character varying(45) NOT NULL,
    "timestamp" bigint DEFAULT 0 NOT NULL,
    data text DEFAULT ''::text NOT NULL
);
    DROP TABLE public.ci_sessions;
       public         heap    postgres    false            �            1259    16440    usuarios    TABLE     �   CREATE TABLE public.usuarios (
    id integer NOT NULL,
    username character varying(50) NOT NULL,
    correo character varying(100) NOT NULL,
    password character varying(255) NOT NULL
);
    DROP TABLE public.usuarios;
       public         heap    postgres    false            �            1259    16438    usuarios_id_seq    SEQUENCE     �   CREATE SEQUENCE public.usuarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.usuarios_id_seq;
       public          postgres    false    204                       0    0    usuarios_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.usuarios_id_seq OWNED BY public.usuarios.id;
          public          postgres    false    203            �            1259    32814    videos    TABLE     �   CREATE TABLE public.videos (
    id integer NOT NULL,
    autor character varying(100) NOT NULL,
    correo character varying(100) NOT NULL,
    titulo character varying(255) NOT NULL,
    fecha character varying(20) NOT NULL,
    video text NOT NULL
);
    DROP TABLE public.videos;
       public         heap    postgres    false            �            1259    32812    videos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.videos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.videos_id_seq;
       public          postgres    false    206                        0    0    videos_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.videos_id_seq OWNED BY public.videos.id;
          public          postgres    false    205            �
           2604    16443    usuarios id    DEFAULT     j   ALTER TABLE ONLY public.usuarios ALTER COLUMN id SET DEFAULT nextval('public.usuarios_id_seq'::regclass);
 :   ALTER TABLE public.usuarios ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    203    204            �
           2604    32817 	   videos id    DEFAULT     f   ALTER TABLE ONLY public.videos ALTER COLUMN id SET DEFAULT nextval('public.videos_id_seq'::regclass);
 8   ALTER TABLE public.videos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    206    206                      0    16429    ci_sessions 
   TABLE DATA           H   COPY public.ci_sessions (id, ip_address, "timestamp", data) FROM stdin;
    public          postgres    false    202   >                 0    16440    usuarios 
   TABLE DATA           B   COPY public.usuarios (id, username, correo, password) FROM stdin;
    public          postgres    false    204   �                 0    32814    videos 
   TABLE DATA           I   COPY public.videos (id, autor, correo, titulo, fecha, video) FROM stdin;
    public          postgres    false    206   �       !           0    0    usuarios_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.usuarios_id_seq', 2, true);
          public          postgres    false    203            "           0    0    videos_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.videos_id_seq', 5, true);
          public          postgres    false    205            �
           2606    16447    usuarios usuarios_correo_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_correo_key UNIQUE (correo);
 F   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_correo_key;
       public            postgres    false    204            �
           2606    16445    usuarios usuarios_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_pkey;
       public            postgres    false    204            �
           2606    32822    videos videos_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.videos
    ADD CONSTRAINT videos_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.videos DROP CONSTRAINT videos_pkey;
       public            postgres    false    206            �
           1259    16437    ci_sessions_timestamp    INDEX     T   CREATE INDEX ci_sessions_timestamp ON public.ci_sessions USING btree ("timestamp");
 )   DROP INDEX public.ci_sessions_timestamp;
       public            postgres    false    202               B  x�ŗ�n�8���ô|7^�"RZӕ�2�$�h66`��v�x���ÆBHH�O��ǇN�@ ���b�ք��I%���x��� � �0�	z�B��w1^3p�/�z_�]���ȋ�eK
����ly��Q�V�S�^�I͉�׬+,���{R,����9~����xj|�^߿>ğ�[�>#�����BPˏ����_��^���h]�}[��+;5����j��?>5ܷ���C�V�̪�tv�1g{�n�R�C�btq�-雼c�7*�b�����~6X't/�=]?uV��Ծ

NZ��]�ˡ����?%�U�d��1jM��$�@��#apB����Ҭ�n;[������z;�vȠ*]���ҨPBDL��E�F�#�W-�.'|��M &L���EM$�HS���`����b-�?�X��L^'gkAO;P�=Gb���B�72�`z9�C�:��	����nBbM�h1�[����ɚ��-hۨ���*����rE�Lc�U���je��1jɮ�X:o�䄋 &��C�%:�U~������RX�)*=�Ni,���-(%R����Z�d�	Ѫ�1&�c1'����%�ǀQf<7;��2�bq�;�Q���*{ʀeI9bV������"Un�.B�6!=_�cL��{1"ͫ��.#$U��VmQ���`q(�^,�^Zz�lQ��b��dR|�a��G��6�5�7�5���N%ZY&�g�N�a����z�����u\�ma,�}�ӗy+<0xyk� �&�|w��R�eenl=5a��e���J�@���L~�b	������1�������Y�.M         *   x�3���/J�,���ҩ鹉�9z�����F�&\1z\\\ ��
v         �   x�3���/J�,���ҩ鹉�9z����ŉi�i�FF&��F@�`d`e`�Y����_���3�2�3��rL��p�X�����QR�PT������b����9�P_?o��x_G/O�x�� ��xϼ����x�A`��qZ�_�f������^�z+S�����V��ki�����fJ>�&p�7LpL��0�qӪ��{7�~����i�����k7�?nZ������ Z`��     