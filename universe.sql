--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying NOT NULL,
    planet_types integer,
    star_types integer,
    age numeric NOT NULL,
    description text,
    is_live boolean,
    is_black boolean,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: meteroite; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.meteroite (
    meteroite_id integer NOT NULL,
    name character varying NOT NULL,
    description text
);


ALTER TABLE public.meteroite OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    is_alive boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    star_id integer,
    is_alive boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying NOT NULL,
    description character varying,
    age integer,
    is_alive boolean,
    galaxy_id integer,
    star_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('galaxy1', NULL, NULL, 11, NULL, NULL, NULL, 1);
INSERT INTO public.galaxy VALUES ('galaxy2', NULL, NULL, 22, NULL, NULL, NULL, 2);
INSERT INTO public.galaxy VALUES ('galaxy3', NULL, NULL, 58, NULL, NULL, NULL, 3);
INSERT INTO public.galaxy VALUES ('galaxy4', NULL, NULL, 68, NULL, NULL, NULL, 4);
INSERT INTO public.galaxy VALUES ('galaxy5', NULL, NULL, 78, NULL, NULL, NULL, 5);
INSERT INTO public.galaxy VALUES ('galaxy6', NULL, NULL, 74, NULL, NULL, NULL, 6);


--
-- Data for Name: meteroite; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.meteroite VALUES (54, 'meteroite1', NULL);
INSERT INTO public.meteroite VALUES (21, 'meteroite2', NULL);
INSERT INTO public.meteroite VALUES (73, 'meteroite3', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', NULL, NULL, 2);
INSERT INTO public.moon VALUES (2, 'moon2', NULL, NULL, 3);
INSERT INTO public.moon VALUES (3, 'moon3', NULL, NULL, 4);
INSERT INTO public.moon VALUES (4, 'moon4', NULL, NULL, 5);
INSERT INTO public.moon VALUES (5, 'moon5', NULL, NULL, 6);
INSERT INTO public.moon VALUES (6, 'moon6', NULL, NULL, 7);
INSERT INTO public.moon VALUES (7, 'moon7', NULL, NULL, 8);
INSERT INTO public.moon VALUES (8, 'moon8', NULL, NULL, 9);
INSERT INTO public.moon VALUES (9, 'moon9', NULL, NULL, 10);
INSERT INTO public.moon VALUES (10, 'moon10', NULL, NULL, 11);
INSERT INTO public.moon VALUES (11, 'moon11', NULL, NULL, 12);
INSERT INTO public.moon VALUES (12, 'moon12', NULL, NULL, 1);
INSERT INTO public.moon VALUES (13, 'moon13', NULL, NULL, 2);
INSERT INTO public.moon VALUES (14, 'moon14', NULL, NULL, 3);
INSERT INTO public.moon VALUES (15, 'moon15', NULL, NULL, 4);
INSERT INTO public.moon VALUES (16, 'moon16', NULL, NULL, 5);
INSERT INTO public.moon VALUES (17, 'moon17', NULL, NULL, 6);
INSERT INTO public.moon VALUES (18, 'moon18', NULL, NULL, 7);
INSERT INTO public.moon VALUES (19, 'moon19', NULL, NULL, 8);
INSERT INTO public.moon VALUES (20, 'moon20', NULL, NULL, 9);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet1', NULL, 2, NULL);
INSERT INTO public.planet VALUES (2, 'planet2', NULL, 3, NULL);
INSERT INTO public.planet VALUES (3, 'planet3', NULL, 4, NULL);
INSERT INTO public.planet VALUES (4, 'planet4', NULL, 5, NULL);
INSERT INTO public.planet VALUES (5, 'planet5', NULL, 6, NULL);
INSERT INTO public.planet VALUES (6, 'planet6', NULL, 1, NULL);
INSERT INTO public.planet VALUES (7, 'planet7', NULL, 2, NULL);
INSERT INTO public.planet VALUES (8, 'planet8', NULL, 3, NULL);
INSERT INTO public.planet VALUES (9, 'planet9', NULL, 4, NULL);
INSERT INTO public.planet VALUES (10, 'planet10', NULL, 5, NULL);
INSERT INTO public.planet VALUES (11, 'planet11', NULL, 6, NULL);
INSERT INTO public.planet VALUES (12, 'planet12', NULL, 1, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('star1', NULL, NULL, NULL, 1, 1);
INSERT INTO public.star VALUES ('star2', NULL, NULL, NULL, 2, 2);
INSERT INTO public.star VALUES ('star3', NULL, NULL, NULL, 3, 3);
INSERT INTO public.star VALUES ('star4', NULL, NULL, NULL, 4, 4);
INSERT INTO public.star VALUES ('star5', NULL, NULL, NULL, 5, 5);
INSERT INTO public.star VALUES ('star6', NULL, NULL, NULL, 6, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: meteroite meteroite_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteroite
    ADD CONSTRAINT meteroite_name_key UNIQUE (name);


--
-- Name: meteroite meteroite_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteroite
    ADD CONSTRAINT meteroite_pkey PRIMARY KEY (meteroite_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT name_unique UNIQUE (name);


--
-- Name: planet name_unique_cons; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT name_unique_cons UNIQUE (name);


--
-- Name: star name_unique_constraint; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT name_unique_constraint UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

