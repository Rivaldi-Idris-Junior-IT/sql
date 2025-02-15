PGDMP     4    .            	    x            mainDB #   12.4 (Ubuntu 12.4-0ubuntu0.20.04.1) #   12.4 (Ubuntu 12.4-0ubuntu0.20.04.1)      �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16385    mainDB    DATABASE     z   CREATE DATABASE "mainDB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE "mainDB";
                rivaldi    false            �            1259    16386    table_histori    TABLE     �   CREATE TABLE public.table_histori (
    id bigint NOT NULL,
    invoices character varying(10) NOT NULL,
    cashier character varying(20) NOT NULL,
    orders text NOT NULL,
    amount character varying(60) NOT NULL,
    date date
);
 !   DROP TABLE public.table_histori;
       public         heap    rivaldi    false            �            1259    16392    table_histori_id_seq    SEQUENCE     }   CREATE SEQUENCE public.table_histori_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.table_histori_id_seq;
       public          rivaldi    false    202            �           0    0    table_histori_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.table_histori_id_seq OWNED BY public.table_histori.id;
          public          rivaldi    false    203            �            1259    16394    table_kategori    TABLE     q   CREATE TABLE public.table_kategori (
    id bigint NOT NULL,
    nama_kategori character varying(70) NOT NULL
);
 "   DROP TABLE public.table_kategori;
       public         heap    rivaldi    false            �            1259    16397    table_kategori_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.table_kategori_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.table_kategori_id_seq;
       public          rivaldi    false    204            �           0    0    table_kategori_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.table_kategori_id_seq OWNED BY public.table_kategori.id;
          public          rivaldi    false    205            �            1259    16399    table_produk    TABLE     �   CREATE TABLE public.table_produk (
    id bigint NOT NULL,
    nama character varying(70) NOT NULL,
    harga character varying(50),
    kategori_id bigint,
    link_gambar character varying(120),
    stok character varying(30)
);
     DROP TABLE public.table_produk;
       public         heap    rivaldi    false            �            1259    16402    table_produk_id_seq    SEQUENCE     |   CREATE SEQUENCE public.table_produk_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.table_produk_id_seq;
       public          rivaldi    false    206            �           0    0    table_produk_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.table_produk_id_seq OWNED BY public.table_produk.id;
          public          rivaldi    false    207            �            1259    16404    table_users    TABLE     �   CREATE TABLE public.table_users (
    id bigint NOT NULL,
    username character varying NOT NULL,
    password character varying NOT NULL,
    token character varying,
    role character varying
);
    DROP TABLE public.table_users;
       public         heap    rivaldi    false            �            1259    16410    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          rivaldi    false    208            �           0    0    users_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.users_id_seq OWNED BY public.table_users.id;
          public          rivaldi    false    209            "           2604    16412    table_histori id    DEFAULT     t   ALTER TABLE ONLY public.table_histori ALTER COLUMN id SET DEFAULT nextval('public.table_histori_id_seq'::regclass);
 ?   ALTER TABLE public.table_histori ALTER COLUMN id DROP DEFAULT;
       public          rivaldi    false    203    202            #           2604    16413    table_kategori id    DEFAULT     v   ALTER TABLE ONLY public.table_kategori ALTER COLUMN id SET DEFAULT nextval('public.table_kategori_id_seq'::regclass);
 @   ALTER TABLE public.table_kategori ALTER COLUMN id DROP DEFAULT;
       public          rivaldi    false    205    204            $           2604    16414    table_produk id    DEFAULT     r   ALTER TABLE ONLY public.table_produk ALTER COLUMN id SET DEFAULT nextval('public.table_produk_id_seq'::regclass);
 >   ALTER TABLE public.table_produk ALTER COLUMN id DROP DEFAULT;
       public          rivaldi    false    207    206            %           2604    16415    table_users id    DEFAULT     j   ALTER TABLE ONLY public.table_users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 =   ALTER TABLE public.table_users ALTER COLUMN id DROP DEFAULT;
       public          rivaldi    false    209    208            �          0    16386    table_histori 
   TABLE DATA           T   COPY public.table_histori (id, invoices, cashier, orders, amount, date) FROM stdin;
    public          rivaldi    false    202   �"       �          0    16394    table_kategori 
   TABLE DATA           ;   COPY public.table_kategori (id, nama_kategori) FROM stdin;
    public          rivaldi    false    204   1#       �          0    16399    table_produk 
   TABLE DATA           W   COPY public.table_produk (id, nama, harga, kategori_id, link_gambar, stok) FROM stdin;
    public          rivaldi    false    206   e#       �          0    16404    table_users 
   TABLE DATA           J   COPY public.table_users (id, username, password, token, role) FROM stdin;
    public          rivaldi    false    208   $       �           0    0    table_histori_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.table_histori_id_seq', 9, true);
          public          rivaldi    false    203            �           0    0    table_kategori_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.table_kategori_id_seq', 12, true);
          public          rivaldi    false    205            �           0    0    table_produk_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.table_produk_id_seq', 59, true);
          public          rivaldi    false    207            �           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 14, true);
          public          rivaldi    false    209            '           2606    16417     table_histori table_histori_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.table_histori
    ADD CONSTRAINT table_histori_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.table_histori DROP CONSTRAINT table_histori_pkey;
       public            rivaldi    false    202            )           2606    16419 "   table_kategori table_kategori_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.table_kategori
    ADD CONSTRAINT table_kategori_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.table_kategori DROP CONSTRAINT table_kategori_pkey;
       public            rivaldi    false    204            +           2606    16421    table_produk table_produk_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.table_produk
    ADD CONSTRAINT table_produk_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.table_produk DROP CONSTRAINT table_produk_pkey;
       public            rivaldi    false    206            -           2606    16423    table_users users_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.table_users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.table_users DROP CONSTRAINT users_pkey;
       public            rivaldi    false    208            �   �   x�]Ρ1`��)���^Gֳp�yf�%\�d�����P�V|�[BGn������i	�k��W���	�;-LG㿔	cY˿�AW�U�ZT�-B�9r^/�`WҌ1^�:i������X�{q��6Ƙ]�+�      �   $   x�3�t)����2�tN�N�24�t��O����� h�      �   
  x����j�@���x����㜙q���АHlɦP�N��u6��Z�h!Є�g�|� �=���͇���1��.�kl��h���R��E�qɸ�b2��lK9Fȥ�h�A�P� �P��3Մz�$Ν˲n��s��{M�H ���2M��x����H�<��X��t~V��z�0��C�]J��q������+�j���mg������-M���t�]���!�g�&I�&��?�=��2M�t��<��"0���x��	$���      �   �  x���ˎ�@ �5~Go)�%���țLbx��K��Ǟ���Io�*79�. ��>P�}�� >��z��҄�������1zL�K�]���NF��QZg�Q��J��Y�Fb�t$K�S�:�>��NZKE㽒��Ĥ3G���/��$4�Ѕ���&-gG�2�Z?/έM�<Q`��Pg��)4#����3ue�v�>qƯ�l��N���dHL��M��&�H�&)�P������nN��O�e!����N�(���OI��';t��sDN勄|�ԇ.�y�����\ U��4^]�<d𪇪2Ӫ�[��q���n�'��ͨ4�qcc�m,L*T/l�����\�8��Ou���C:�n�n�ױ���a�TFk�:[�f�Y�����f-�
���.����;� S�|УO�������2pcL�m8LC��'0M����꧵�������U�xZT�5y��?�� �g6�5����f�vV�,��e�oYn3a;��4JI@}))�4$�M��́ONTU���� ��P����M�>�q�;�(yL��N��������eX*���k-�q��䪖9��(��j[0�1��\���fk)���k��"T�o`�l��a@��a�n,B/�qE�^�,O�°eH=X�����d�M�!�����(��57^��P��_-��y����"�RC�X�=�:�)X=�>ۜ`Oՠ��]�m���7�X,� ;ˎR     