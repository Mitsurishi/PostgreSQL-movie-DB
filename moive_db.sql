-- This script was generated by the ERD tool in pgAdmin 4.
-- Please log an issue at https://redmine.postgresql.org/projects/pgadmin4/issues/new if you find any bugs, including reproduction steps.
BEGIN;


CREATE TABLE IF NOT EXISTS public.age_ru
(
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    "number" integer NOT NULL,
    CONSTRAINT age_ru_pkey PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS public.country
(
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    name text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT country_pkey PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS public.distributors
(
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    name text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT distributors_pkey PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS public.film
(
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    name_ru text COLLATE pg_catalog."default" NOT NULL,
    year integer NOT NULL,
    slogan text COLLATE pg_catalog."default" NOT NULL,
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
    name_original text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT film_pkey PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS public.film_actor_double
(
    film_id integer NOT NULL,
    actor_id integer NOT NULL,
    doubler_id integer NOT NULL,
    CONSTRAINT film_actor_double_pkey PRIMARY KEY (film_id, actor_id, doubler_id)
);

CREATE TABLE IF NOT EXISTS public.film_audio
(
    film_id integer NOT NULL,
    audio_language_id integer NOT NULL,
    CONSTRAINT film_audio_pkey PRIMARY KEY (film_id, audio_language_id)
);

CREATE TABLE IF NOT EXISTS public.film_country
(
    film_id integer NOT NULL,
    country_id integer NOT NULL,
    viewers integer,
    premiere date NOT NULL,
    CONSTRAINT film_country_pkey PRIMARY KEY (film_id, country_id)
);

CREATE TABLE IF NOT EXISTS public.film_genres
(
    film_id integer NOT NULL,
    genre_id integer NOT NULL,
    CONSTRAINT film_genres_pkey PRIMARY KEY (film_id, genre_id)
);

CREATE TABLE IF NOT EXISTS public.genres
(
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    name text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT genres_pkey PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS public.language
(
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    name text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT language_pkey PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS public.mpaa_rating
(
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    title text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT mpaa_rating_pkey PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS public.person
(
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    name text COLLATE pg_catalog."default" NOT NULL,
    surname text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT person_pkey PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS public.quality
(
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    title text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT quality_pkey PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.film
    ADD CONSTRAINT fk_film_age_ru FOREIGN KEY (age_ru_id)
    REFERENCES public.age_ru (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.film
    ADD CONSTRAINT fk_film_art_director FOREIGN KEY (art_director_id)
    REFERENCES public.person (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.film
    ADD CONSTRAINT fk_film_cinematographer FOREIGN KEY (cinematographer_id)
    REFERENCES public.person (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.film
    ADD CONSTRAINT fk_film_composer FOREIGN KEY (composer_id)
    REFERENCES public.person (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.film
    ADD CONSTRAINT fk_film_country FOREIGN KEY (country_id)
    REFERENCES public.country (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.film
    ADD CONSTRAINT fk_film_director FOREIGN KEY (director_id)
    REFERENCES public.person (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.film
    ADD CONSTRAINT fk_film_distributor FOREIGN KEY (distributor_id)
    REFERENCES public.distributors (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.film
    ADD CONSTRAINT fk_film_distributor_dvd FOREIGN KEY (distributor_dvd_id)
    REFERENCES public.distributors (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.film
    ADD CONSTRAINT fk_film_editor FOREIGN KEY (editor_id)
    REFERENCES public.person (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.film
    ADD CONSTRAINT fk_film_mpaa_rating FOREIGN KEY (mpaa_rating_id)
    REFERENCES public.mpaa_rating (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.film
    ADD CONSTRAINT fk_film_producer FOREIGN KEY (producer_id)
    REFERENCES public.person (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.film
    ADD CONSTRAINT fk_film_quality FOREIGN KEY (quality_id)
    REFERENCES public.quality (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.film
    ADD CONSTRAINT fk_film_screenwriter FOREIGN KEY (screenwriter_id)
    REFERENCES public.person (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.film
    ADD CONSTRAINT fk_film_subtitle FOREIGN KEY (subtitle_id)
    REFERENCES public.language (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.film_actor_double
    ADD CONSTRAINT fk_film_actor_double_actor FOREIGN KEY (actor_id)
    REFERENCES public.person (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.film_actor_double
    ADD CONSTRAINT fk_film_actor_double_double FOREIGN KEY (doubler_id)
    REFERENCES public.person (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.film_actor_double
    ADD CONSTRAINT fk_film_actor_double_film FOREIGN KEY (film_id)
    REFERENCES public.film (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.film_audio
    ADD CONSTRAINT fk_film_audio_audio_language FOREIGN KEY (audio_language_id)
    REFERENCES public.language (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.film_audio
    ADD CONSTRAINT fk_film_audio_film FOREIGN KEY (film_id)
    REFERENCES public.film (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.film_country
    ADD CONSTRAINT fk_film_country_country FOREIGN KEY (country_id)
    REFERENCES public.country (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.film_country
    ADD CONSTRAINT fk_film_country_film FOREIGN KEY (film_id)
    REFERENCES public.film (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.film_genres
    ADD CONSTRAINT fk_film_genres_film FOREIGN KEY (film_id)
    REFERENCES public.film (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.film_genres
    ADD CONSTRAINT fk_film_genres_genre FOREIGN KEY (genre_id)
    REFERENCES public.genres (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;

END;