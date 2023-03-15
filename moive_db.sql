PGDMP         6        
        {            movie_database    15.2    15.2 T    t           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            u           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            v           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            w           1262    16398    movie_database    DATABASE     �   CREATE DATABASE movie_database WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE movie_database;
                postgres    false            �            1259    16442    age_ru    TABLE     U   CREATE TABLE public.age_ru (
    id integer NOT NULL,
    number integer NOT NULL
);
    DROP TABLE public.age_ru;
       public         heap    postgres    false            �            1259    16441    age_ru_id_seq    SEQUENCE     �   ALTER TABLE public.age_ru ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.age_ru_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    221            �            1259    16420    country    TABLE     Q   CREATE TABLE public.country (
    id integer NOT NULL,
    name text NOT NULL
);
    DROP TABLE public.country;
       public         heap    postgres    false            �            1259    16447    country_id_seq    SEQUENCE     �   ALTER TABLE public.country ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.country_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    217            �            1259    16463    distributors    TABLE     V   CREATE TABLE public.distributors (
    id integer NOT NULL,
    name text NOT NULL
);
     DROP TABLE public.distributors;
       public         heap    postgres    false            �            1259    16462    distributors_id_seq    SEQUENCE     �   ALTER TABLE public.distributors ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.distributors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    229            �            1259    16399    film    TABLE     C  CREATE TABLE public.film (
    id integer NOT NULL,
    name_ru text NOT NULL,
    year integer NOT NULL,
    slogan text NOT NULL,
    budget integer NOT NULL,
    marketing integer NOT NULL,
    box_office_country integer NOT NULL,
    box_office_world integer NOT NULL,
    "time" integer NOT NULL,
    age_ru_id integer NOT NULL,
    mpaa_rating_id integer NOT NULL,
    distributor_id integer NOT NULL,
    distributor_dvd_id integer NOT NULL,
    country_id integer NOT NULL,
    subtitle_id integer NOT NULL,
    quality_id integer NOT NULL,
    director_id integer NOT NULL,
    screenwriter_id integer NOT NULL,
    producer_id integer NOT NULL,
    cinematographer_id integer NOT NULL,
    composer_id integer NOT NULL,
    art_director_id integer NOT NULL,
    editor_id integer NOT NULL,
    name_original text NOT NULL
);
    DROP TABLE public.film;
       public         heap    postgres    false            �            1259    16470    film_actor_double    TABLE     �   CREATE TABLE public.film_actor_double (
    film_id integer NOT NULL,
    actor_id integer NOT NULL,
    doubler_id integer NOT NULL
);
 %   DROP TABLE public.film_actor_double;
       public         heap    postgres    false            �            1259    16597 
   film_audio    TABLE     i   CREATE TABLE public.film_audio (
    film_id integer NOT NULL,
    audio_language_id integer NOT NULL
);
    DROP TABLE public.film_audio;
       public         heap    postgres    false            �            1259    16457    film_country    TABLE     �   CREATE TABLE public.film_country (
    film_id integer NOT NULL,
    country_id integer NOT NULL,
    viewers integer,
    premiere date NOT NULL
);
     DROP TABLE public.film_country;
       public         heap    postgres    false            �            1259    16452    film_genres    TABLE     a   CREATE TABLE public.film_genres (
    film_id integer NOT NULL,
    genre_id integer NOT NULL
);
    DROP TABLE public.film_genres;
       public         heap    postgres    false            �            1259    16448    film_id_seq    SEQUENCE     �   ALTER TABLE public.film ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.film_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    214            �            1259    16413    genres    TABLE     P   CREATE TABLE public.genres (
    id integer NOT NULL,
    name text NOT NULL
);
    DROP TABLE public.genres;
       public         heap    postgres    false            �            1259    16449    genres_id_seq    SEQUENCE     �   ALTER TABLE public.genres ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.genres_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    216            �            1259    16476    language    TABLE     R   CREATE TABLE public.language (
    id integer NOT NULL,
    name text NOT NULL
);
    DROP TABLE public.language;
       public         heap    postgres    false            �            1259    16475    language_id_seq    SEQUENCE     �   ALTER TABLE public.language ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.language_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    232            �            1259    16434    mpaa_rating    TABLE     V   CREATE TABLE public.mpaa_rating (
    id integer NOT NULL,
    title text NOT NULL
);
    DROP TABLE public.mpaa_rating;
       public         heap    postgres    false            �            1259    16433    mpaa_rating_id_seq    SEQUENCE     �   ALTER TABLE public.mpaa_rating ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.mpaa_rating_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    219            �            1259    16406    person    TABLE     k   CREATE TABLE public.person (
    id integer NOT NULL,
    name text NOT NULL,
    surname text NOT NULL
);
    DROP TABLE public.person;
       public         heap    postgres    false            �            1259    16450    person_id_seq    SEQUENCE     �   ALTER TABLE public.person ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.person_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    215            �            1259    16545    quality    TABLE     R   CREATE TABLE public.quality (
    id integer NOT NULL,
    title text NOT NULL
);
    DROP TABLE public.quality;
       public         heap    postgres    false            �            1259    16544    quality_id_seq    SEQUENCE     �   ALTER TABLE public.quality ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.quality_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    234            c          0    16442    age_ru 
   TABLE DATA           ,   COPY public.age_ru (id, number) FROM stdin;
    public          postgres    false    221   �e       _          0    16420    country 
   TABLE DATA           +   COPY public.country (id, name) FROM stdin;
    public          postgres    false    217   �e       k          0    16463    distributors 
   TABLE DATA           0   COPY public.distributors (id, name) FROM stdin;
    public          postgres    false    229   �e       \          0    16399    film 
   TABLE DATA           U  COPY public.film (id, name_ru, year, slogan, budget, marketing, box_office_country, box_office_world, "time", age_ru_id, mpaa_rating_id, distributor_id, distributor_dvd_id, country_id, subtitle_id, quality_id, director_id, screenwriter_id, producer_id, cinematographer_id, composer_id, art_director_id, editor_id, name_original) FROM stdin;
    public          postgres    false    214   �e       l          0    16470    film_actor_double 
   TABLE DATA           J   COPY public.film_actor_double (film_id, actor_id, doubler_id) FROM stdin;
    public          postgres    false    230   f       q          0    16597 
   film_audio 
   TABLE DATA           @   COPY public.film_audio (film_id, audio_language_id) FROM stdin;
    public          postgres    false    235   %f       i          0    16457    film_country 
   TABLE DATA           N   COPY public.film_country (film_id, country_id, viewers, premiere) FROM stdin;
    public          postgres    false    227   Bf       h          0    16452    film_genres 
   TABLE DATA           8   COPY public.film_genres (film_id, genre_id) FROM stdin;
    public          postgres    false    226   _f       ^          0    16413    genres 
   TABLE DATA           *   COPY public.genres (id, name) FROM stdin;
    public          postgres    false    216   |f       n          0    16476    language 
   TABLE DATA           ,   COPY public.language (id, name) FROM stdin;
    public          postgres    false    232   �f       a          0    16434    mpaa_rating 
   TABLE DATA           0   COPY public.mpaa_rating (id, title) FROM stdin;
    public          postgres    false    219   �f       ]          0    16406    person 
   TABLE DATA           3   COPY public.person (id, name, surname) FROM stdin;
    public          postgres    false    215   �f       p          0    16545    quality 
   TABLE DATA           ,   COPY public.quality (id, title) FROM stdin;
    public          postgres    false    234   �f       x           0    0    age_ru_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.age_ru_id_seq', 1, false);
          public          postgres    false    220            y           0    0    country_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.country_id_seq', 1, false);
          public          postgres    false    222            z           0    0    distributors_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.distributors_id_seq', 1, false);
          public          postgres    false    228            {           0    0    film_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.film_id_seq', 1, false);
          public          postgres    false    223            |           0    0    genres_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.genres_id_seq', 1, false);
          public          postgres    false    224            }           0    0    language_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.language_id_seq', 1, false);
          public          postgres    false    231            ~           0    0    mpaa_rating_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.mpaa_rating_id_seq', 1, false);
          public          postgres    false    218                       0    0    person_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.person_id_seq', 1, false);
          public          postgres    false    225            �           0    0    quality_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.quality_id_seq', 1, false);
          public          postgres    false    233            �           2606    16446    age_ru age_ru_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.age_ru
    ADD CONSTRAINT age_ru_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.age_ru DROP CONSTRAINT age_ru_pkey;
       public            postgres    false    221            �           2606    16426    country country_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.country DROP CONSTRAINT country_pkey;
       public            postgres    false    217            �           2606    16469    distributors distributors_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.distributors
    ADD CONSTRAINT distributors_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.distributors DROP CONSTRAINT distributors_pkey;
       public            postgres    false    229            �           2606    16474 (   film_actor_double film_actor_double_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.film_actor_double
    ADD CONSTRAINT film_actor_double_pkey PRIMARY KEY (film_id, actor_id, doubler_id);
 R   ALTER TABLE ONLY public.film_actor_double DROP CONSTRAINT film_actor_double_pkey;
       public            postgres    false    230    230    230            �           2606    16601    film_audio film_audio_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.film_audio
    ADD CONSTRAINT film_audio_pkey PRIMARY KEY (film_id, audio_language_id);
 D   ALTER TABLE ONLY public.film_audio DROP CONSTRAINT film_audio_pkey;
       public            postgres    false    235    235            �           2606    16461    film_country film_country_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.film_country
    ADD CONSTRAINT film_country_pkey PRIMARY KEY (film_id, country_id);
 H   ALTER TABLE ONLY public.film_country DROP CONSTRAINT film_country_pkey;
       public            postgres    false    227    227            �           2606    16456    film_genres film_genres_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.film_genres
    ADD CONSTRAINT film_genres_pkey PRIMARY KEY (film_id, genre_id);
 F   ALTER TABLE ONLY public.film_genres DROP CONSTRAINT film_genres_pkey;
       public            postgres    false    226    226            �           2606    16405    film film_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.film
    ADD CONSTRAINT film_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.film DROP CONSTRAINT film_pkey;
       public            postgres    false    214            �           2606    16419    genres genres_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.genres
    ADD CONSTRAINT genres_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.genres DROP CONSTRAINT genres_pkey;
       public            postgres    false    216            �           2606    16482    language language_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.language
    ADD CONSTRAINT language_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.language DROP CONSTRAINT language_pkey;
       public            postgres    false    232            �           2606    16440    mpaa_rating mpaa_rating_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.mpaa_rating
    ADD CONSTRAINT mpaa_rating_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.mpaa_rating DROP CONSTRAINT mpaa_rating_pkey;
       public            postgres    false    219            �           2606    16412    person person_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.person DROP CONSTRAINT person_pkey;
       public            postgres    false    215            �           2606    16551    quality quality_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.quality
    ADD CONSTRAINT quality_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.quality DROP CONSTRAINT quality_pkey;
       public            postgres    false    234            �           2606    16528 ,   film_actor_double fk_film_actor_double_actor    FK CONSTRAINT     �   ALTER TABLE ONLY public.film_actor_double
    ADD CONSTRAINT fk_film_actor_double_actor FOREIGN KEY (actor_id) REFERENCES public.person(id) NOT VALID;
 V   ALTER TABLE ONLY public.film_actor_double DROP CONSTRAINT fk_film_actor_double_actor;
       public          postgres    false    215    230    3232            �           2606    16533 -   film_actor_double fk_film_actor_double_double    FK CONSTRAINT     �   ALTER TABLE ONLY public.film_actor_double
    ADD CONSTRAINT fk_film_actor_double_double FOREIGN KEY (doubler_id) REFERENCES public.person(id) NOT VALID;
 W   ALTER TABLE ONLY public.film_actor_double DROP CONSTRAINT fk_film_actor_double_double;
       public          postgres    false    3232    215    230            �           2606    16523 +   film_actor_double fk_film_actor_double_film    FK CONSTRAINT     �   ALTER TABLE ONLY public.film_actor_double
    ADD CONSTRAINT fk_film_actor_double_film FOREIGN KEY (film_id) REFERENCES public.film(id) NOT VALID;
 U   ALTER TABLE ONLY public.film_actor_double DROP CONSTRAINT fk_film_actor_double_film;
       public          postgres    false    214    230    3230            �           2606    16488    film fk_film_age_ru    FK CONSTRAINT        ALTER TABLE ONLY public.film
    ADD CONSTRAINT fk_film_age_ru FOREIGN KEY (age_ru_id) REFERENCES public.age_ru(id) NOT VALID;
 =   ALTER TABLE ONLY public.film DROP CONSTRAINT fk_film_age_ru;
       public          postgres    false    214    221    3240            �           2606    16587    film fk_film_art_director    FK CONSTRAINT     �   ALTER TABLE ONLY public.film
    ADD CONSTRAINT fk_film_art_director FOREIGN KEY (art_director_id) REFERENCES public.person(id) NOT VALID;
 C   ALTER TABLE ONLY public.film DROP CONSTRAINT fk_film_art_director;
       public          postgres    false    214    215    3232            �           2606    16607 '   film_audio fk_film_audio_audio_language    FK CONSTRAINT     �   ALTER TABLE ONLY public.film_audio
    ADD CONSTRAINT fk_film_audio_audio_language FOREIGN KEY (audio_language_id) REFERENCES public.language(id) NOT VALID;
 Q   ALTER TABLE ONLY public.film_audio DROP CONSTRAINT fk_film_audio_audio_language;
       public          postgres    false    3250    232    235            �           2606    16602    film_audio fk_film_audio_film    FK CONSTRAINT     �   ALTER TABLE ONLY public.film_audio
    ADD CONSTRAINT fk_film_audio_film FOREIGN KEY (film_id) REFERENCES public.film(id) NOT VALID;
 G   ALTER TABLE ONLY public.film_audio DROP CONSTRAINT fk_film_audio_film;
       public          postgres    false    214    3230    235            �           2606    16577    film fk_film_cinematographer    FK CONSTRAINT     �   ALTER TABLE ONLY public.film
    ADD CONSTRAINT fk_film_cinematographer FOREIGN KEY (cinematographer_id) REFERENCES public.person(id) NOT VALID;
 F   ALTER TABLE ONLY public.film DROP CONSTRAINT fk_film_cinematographer;
       public          postgres    false    3232    214    215            �           2606    16582    film fk_film_composer    FK CONSTRAINT     �   ALTER TABLE ONLY public.film
    ADD CONSTRAINT fk_film_composer FOREIGN KEY (composer_id) REFERENCES public.person(id) NOT VALID;
 ?   ALTER TABLE ONLY public.film DROP CONSTRAINT fk_film_composer;
       public          postgres    false    214    3232    215            �           2606    16483    film fk_film_country    FK CONSTRAINT     �   ALTER TABLE ONLY public.film
    ADD CONSTRAINT fk_film_country FOREIGN KEY (country_id) REFERENCES public.country(id) NOT VALID;
 >   ALTER TABLE ONLY public.film DROP CONSTRAINT fk_film_country;
       public          postgres    false    217    214    3236            �           2606    16518 $   film_country fk_film_country_country    FK CONSTRAINT     �   ALTER TABLE ONLY public.film_country
    ADD CONSTRAINT fk_film_country_country FOREIGN KEY (country_id) REFERENCES public.country(id) NOT VALID;
 N   ALTER TABLE ONLY public.film_country DROP CONSTRAINT fk_film_country_country;
       public          postgres    false    217    3236    227            �           2606    16513 !   film_country fk_film_country_film    FK CONSTRAINT     �   ALTER TABLE ONLY public.film_country
    ADD CONSTRAINT fk_film_country_film FOREIGN KEY (film_id) REFERENCES public.film(id) NOT VALID;
 K   ALTER TABLE ONLY public.film_country DROP CONSTRAINT fk_film_country_film;
       public          postgres    false    227    214    3230            �           2606    16562    film fk_film_director    FK CONSTRAINT     �   ALTER TABLE ONLY public.film
    ADD CONSTRAINT fk_film_director FOREIGN KEY (director_id) REFERENCES public.person(id) NOT VALID;
 ?   ALTER TABLE ONLY public.film DROP CONSTRAINT fk_film_director;
       public          postgres    false    3232    215    214            �           2606    16498    film fk_film_distributor    FK CONSTRAINT     �   ALTER TABLE ONLY public.film
    ADD CONSTRAINT fk_film_distributor FOREIGN KEY (distributor_id) REFERENCES public.distributors(id) NOT VALID;
 B   ALTER TABLE ONLY public.film DROP CONSTRAINT fk_film_distributor;
       public          postgres    false    229    214    3246            �           2606    16538    film fk_film_distributor_dvd    FK CONSTRAINT     �   ALTER TABLE ONLY public.film
    ADD CONSTRAINT fk_film_distributor_dvd FOREIGN KEY (distributor_dvd_id) REFERENCES public.distributors(id) NOT VALID;
 F   ALTER TABLE ONLY public.film DROP CONSTRAINT fk_film_distributor_dvd;
       public          postgres    false    214    3246    229            �           2606    16592    film fk_film_editor    FK CONSTRAINT        ALTER TABLE ONLY public.film
    ADD CONSTRAINT fk_film_editor FOREIGN KEY (editor_id) REFERENCES public.person(id) NOT VALID;
 =   ALTER TABLE ONLY public.film DROP CONSTRAINT fk_film_editor;
       public          postgres    false    215    3232    214            �           2606    16503    film_genres fk_film_genres_film    FK CONSTRAINT     �   ALTER TABLE ONLY public.film_genres
    ADD CONSTRAINT fk_film_genres_film FOREIGN KEY (film_id) REFERENCES public.film(id) NOT VALID;
 I   ALTER TABLE ONLY public.film_genres DROP CONSTRAINT fk_film_genres_film;
       public          postgres    false    3230    214    226            �           2606    16508     film_genres fk_film_genres_genre    FK CONSTRAINT     �   ALTER TABLE ONLY public.film_genres
    ADD CONSTRAINT fk_film_genres_genre FOREIGN KEY (genre_id) REFERENCES public.genres(id) NOT VALID;
 J   ALTER TABLE ONLY public.film_genres DROP CONSTRAINT fk_film_genres_genre;
       public          postgres    false    3234    216    226            �           2606    16493    film fk_film_mpaa_rating    FK CONSTRAINT     �   ALTER TABLE ONLY public.film
    ADD CONSTRAINT fk_film_mpaa_rating FOREIGN KEY (mpaa_rating_id) REFERENCES public.mpaa_rating(id) NOT VALID;
 B   ALTER TABLE ONLY public.film DROP CONSTRAINT fk_film_mpaa_rating;
       public          postgres    false    219    3238    214            �           2606    16572    film fk_film_producer    FK CONSTRAINT     �   ALTER TABLE ONLY public.film
    ADD CONSTRAINT fk_film_producer FOREIGN KEY (producer_id) REFERENCES public.person(id) NOT VALID;
 ?   ALTER TABLE ONLY public.film DROP CONSTRAINT fk_film_producer;
       public          postgres    false    215    214    3232            �           2606    16557    film fk_film_quality    FK CONSTRAINT     �   ALTER TABLE ONLY public.film
    ADD CONSTRAINT fk_film_quality FOREIGN KEY (quality_id) REFERENCES public.quality(id) NOT VALID;
 >   ALTER TABLE ONLY public.film DROP CONSTRAINT fk_film_quality;
       public          postgres    false    3252    234    214            �           2606    16567    film fk_film_screenwriter    FK CONSTRAINT     �   ALTER TABLE ONLY public.film
    ADD CONSTRAINT fk_film_screenwriter FOREIGN KEY (screenwriter_id) REFERENCES public.person(id) NOT VALID;
 C   ALTER TABLE ONLY public.film DROP CONSTRAINT fk_film_screenwriter;
       public          postgres    false    214    215    3232            �           2606    16552    film fk_film_subtitle    FK CONSTRAINT     �   ALTER TABLE ONLY public.film
    ADD CONSTRAINT fk_film_subtitle FOREIGN KEY (subtitle_id) REFERENCES public.language(id) NOT VALID;
 ?   ALTER TABLE ONLY public.film DROP CONSTRAINT fk_film_subtitle;
       public          postgres    false    214    232    3250            c      x������ � �      _      x������ � �      k      x������ � �      \      x������ � �      l      x������ � �      q      x������ � �      i      x������ � �      h      x������ � �      ^      x������ � �      n      x������ � �      a      x������ � �      ]      x������ � �      p      x������ � �     