--
-- PostgreSQL database dump
--

-- Dumped from database version 17.0 (Postgres.app)
-- Dumped by pg_dump version 17.2 (Homebrew)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: user_pokemon; Type: TABLE; Schema: public; Owner: maywang
--

CREATE TABLE public.user_pokemon (
    id integer NOT NULL,
    user_name text NOT NULL,
    pokemon_name text NOT NULL,
    image text NOT NULL,
    type text NOT NULL,
    abilities jsonb NOT NULL,
    favorite_color text
);

CREATE TABLE public.user_pokemon (
    id SERIAL PRIMARY KEY,
    user_name text NOT NULL,
    pokemon_name text NOT NULL,
    image text NOT NULL,
    type text NOT NULL,
    abilities jsonb NOT NULL,
    favorite_color text
);

INSERT INTO public.user_pokemon (user_name, pokemon_name, image, type, abilities, favorite_color)
VALUES ('test user', 'test pokemon', 'test image', 'random type', '{"abilities":"any"}', 'any color');



ALTER TABLE public.user_pokemon OWNER TO may;

--
-- Name: user_pokemon_id_seq; Type: SEQUENCE; Schema: public; Owner: maywang
--

CREATE SEQUENCE public.user_pokemon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.user_pokemon_id_seq OWNER TO maywang;

--
-- Name: user_pokemon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: maywang
--

ALTER SEQUENCE public.user_pokemon_id_seq OWNED BY public.user_pokemon.id;


--
-- Name: user_pokemon id; Type: DEFAULT; Schema: public; Owner: maywang
--

ALTER TABLE ONLY public.user_pokemon ALTER COLUMN id SET DEFAULT nextval('public.user_pokemon_id_seq'::regclass);


--
-- Name: user_pokemon user_pokemon_pkey; Type: CONSTRAINT; Schema: public; Owner: maywang
--

ALTER TABLE ONLY public.user_pokemon
    ADD CONSTRAINT user_pokemon_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

