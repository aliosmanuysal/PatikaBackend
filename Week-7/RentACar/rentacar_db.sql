PGDMP         5                 |            rentacar_db    15.6    15.6 ,    2           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            3           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            4           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            5           1262    24600    rentacar_db    DATABASE     m   CREATE DATABASE rentacar_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE rentacar_db;
                postgres    false            �            1259    24618    User    TABLE     �   CREATE TABLE public."User" (
    id integer NOT NULL,
    username character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    role character varying(255) NOT NULL
);
    DROP TABLE public."User";
       public         heap    postgres    false            �            1259    24617    User_id_seq    SEQUENCE     �   CREATE SEQUENCE public."User_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public."User_id_seq";
       public          postgres    false    217            6           0    0    User_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public."User_id_seq" OWNED BY public."User".id;
          public          postgres    false    216            �            1259    24658    book    TABLE     8  CREATE TABLE public.book (
    id integer NOT NULL,
    car_id integer,
    name character varying(255),
    idno character varying(255),
    mpno character varying(255),
    mail character varying(255),
    strt_date date,
    fnsh_date date,
    bcase character varying(255),
    note text,
    prc integer
);
    DROP TABLE public.book;
       public         heap    postgres    false            �            1259    24657    book_id_seq    SEQUENCE     �   CREATE SEQUENCE public.book_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.book_id_seq;
       public          postgres    false    223            7           0    0    book_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.book_id_seq OWNED BY public.book.id;
          public          postgres    false    222            �            1259    24611    brand    TABLE     X   CREATE TABLE public.brand (
    id integer NOT NULL,
    name character varying(255)
);
    DROP TABLE public.brand;
       public         heap    postgres    false            �            1259    24610    brand_id_seq    SEQUENCE     �   CREATE SEQUENCE public.brand_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.brand_id_seq;
       public          postgres    false    215            8           0    0    brand_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.brand_id_seq OWNED BY public.brand.id;
          public          postgres    false    214            �            1259    24641    car    TABLE     �   CREATE TABLE public.car (
    id integer NOT NULL,
    model_id integer,
    color character varying(20),
    km integer,
    plate character varying(255),
    brand_id integer
);
    DROP TABLE public.car;
       public         heap    postgres    false            �            1259    24640 
   car_id_seq    SEQUENCE     �   CREATE SEQUENCE public.car_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.car_id_seq;
       public          postgres    false    221            9           0    0 
   car_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE public.car_id_seq OWNED BY public.car.id;
          public          postgres    false    220            �            1259    24629    model    TABLE     �   CREATE TABLE public.model (
    id integer NOT NULL,
    brand_id integer,
    name character varying(255),
    year character varying(4)
);
    DROP TABLE public.model;
       public         heap    postgres    false            �            1259    24628    model_id_seq    SEQUENCE     �   CREATE SEQUENCE public.model_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.model_id_seq;
       public          postgres    false    219            :           0    0    model_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.model_id_seq OWNED BY public.model.id;
          public          postgres    false    218            �
           2604    24621    User id    DEFAULT     f   ALTER TABLE ONLY public."User" ALTER COLUMN id SET DEFAULT nextval('public."User_id_seq"'::regclass);
 8   ALTER TABLE public."User" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            �
           2604    24661    book id    DEFAULT     b   ALTER TABLE ONLY public.book ALTER COLUMN id SET DEFAULT nextval('public.book_id_seq'::regclass);
 6   ALTER TABLE public.book ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            �
           2604    24614    brand id    DEFAULT     d   ALTER TABLE ONLY public.brand ALTER COLUMN id SET DEFAULT nextval('public.brand_id_seq'::regclass);
 7   ALTER TABLE public.brand ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            �
           2604    24644    car id    DEFAULT     `   ALTER TABLE ONLY public.car ALTER COLUMN id SET DEFAULT nextval('public.car_id_seq'::regclass);
 5   ALTER TABLE public.car ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            �
           2604    24632    model id    DEFAULT     d   ALTER TABLE ONLY public.model ALTER COLUMN id SET DEFAULT nextval('public.model_id_seq'::regclass);
 7   ALTER TABLE public.model ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            )          0    24618    User 
   TABLE DATA           >   COPY public."User" (id, username, password, role) FROM stdin;
    public          postgres    false    217   ..       /          0    24658    book 
   TABLE DATA           j   COPY public.book (id, car_id, name, idno, mpno, mail, strt_date, fnsh_date, bcase, note, prc) FROM stdin;
    public          postgres    false    223   K.       '          0    24611    brand 
   TABLE DATA           )   COPY public.brand (id, name) FROM stdin;
    public          postgres    false    215   h.       -          0    24641    car 
   TABLE DATA           G   COPY public.car (id, model_id, color, km, plate, brand_id) FROM stdin;
    public          postgres    false    221   �.       +          0    24629    model 
   TABLE DATA           9   COPY public.model (id, brand_id, name, year) FROM stdin;
    public          postgres    false    219   �.       ;           0    0    User_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."User_id_seq"', 1, false);
          public          postgres    false    216            <           0    0    book_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.book_id_seq', 1, false);
          public          postgres    false    222            =           0    0    brand_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.brand_id_seq', 1, false);
          public          postgres    false    214            >           0    0 
   car_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.car_id_seq', 1, false);
          public          postgres    false    220            ?           0    0    model_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.model_id_seq', 1, false);
          public          postgres    false    218            �
           2606    24625    User User_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_pkey" PRIMARY KEY (id);
 <   ALTER TABLE ONLY public."User" DROP CONSTRAINT "User_pkey";
       public            postgres    false    217            �
           2606    24627    User User_username_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_username_key" UNIQUE (username);
 D   ALTER TABLE ONLY public."User" DROP CONSTRAINT "User_username_key";
       public            postgres    false    217            �
           2606    24665    book book_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.book
    ADD CONSTRAINT book_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.book DROP CONSTRAINT book_pkey;
       public            postgres    false    223            �
           2606    24616    brand brand_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.brand
    ADD CONSTRAINT brand_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.brand DROP CONSTRAINT brand_pkey;
       public            postgres    false    215            �
           2606    24646    car car_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY public.car
    ADD CONSTRAINT car_pkey PRIMARY KEY (id);
 6   ALTER TABLE ONLY public.car DROP CONSTRAINT car_pkey;
       public            postgres    false    221            �
           2606    24634    model model_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.model
    ADD CONSTRAINT model_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.model DROP CONSTRAINT model_pkey;
       public            postgres    false    219            �
           2606    24666    book book_car_id_fkey 
   FK CONSTRAINT     q   ALTER TABLE ONLY public.book
    ADD CONSTRAINT book_car_id_fkey FOREIGN KEY (car_id) REFERENCES public.car(id);
 ?   ALTER TABLE ONLY public.book DROP CONSTRAINT book_car_id_fkey;
       public          postgres    false    223    221    3473            �
           2606    24652    car car_brand_id_fkey 
   FK CONSTRAINT     u   ALTER TABLE ONLY public.car
    ADD CONSTRAINT car_brand_id_fkey FOREIGN KEY (brand_id) REFERENCES public.brand(id);
 ?   ALTER TABLE ONLY public.car DROP CONSTRAINT car_brand_id_fkey;
       public          postgres    false    221    3465    215            �
           2606    24647    car car_model_id_fkey 
   FK CONSTRAINT     u   ALTER TABLE ONLY public.car
    ADD CONSTRAINT car_model_id_fkey FOREIGN KEY (model_id) REFERENCES public.model(id);
 ?   ALTER TABLE ONLY public.car DROP CONSTRAINT car_model_id_fkey;
       public          postgres    false    219    3471    221            �
           2606    24635    model model_brand_id_fkey 
   FK CONSTRAINT     y   ALTER TABLE ONLY public.model
    ADD CONSTRAINT model_brand_id_fkey FOREIGN KEY (brand_id) REFERENCES public.brand(id);
 C   ALTER TABLE ONLY public.model DROP CONSTRAINT model_brand_id_fkey;
       public          postgres    false    3465    215    219            )   
   x������ � �      /   
   x������ � �      '   
   x������ � �      -   
   x������ � �      +   
   x������ � �     