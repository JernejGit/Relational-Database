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
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    constelation text,
    diameter numeric,
    integer_one integer,
    integer_two integer,
    visible_with_naked_eye boolean,
    ccan_we_travel_there boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer,
    dark_side boolean,
    bright_side boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_id integer,
    distance_from_sun numeric,
    atmosphere character varying(30)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: space; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.space (
    space_one integer NOT NULL,
    space_two integer,
    space_three integer,
    space_id integer NOT NULL,
    name character varying
);


ALTER TABLE public.space OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer,
    size numeric,
    mass numeric
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'andromeda', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'antennae', 'corvus', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'backward_galaxie', 'centaurus', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'galaxy_far_away', 'constealation', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'round_galaxy', 'rounded', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'square_galaxy', 'square', NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'luna', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'evropa', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'azija', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'evrazija', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'arktika', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'antarktika', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'oceanija', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'nova_luna', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'stara_luna', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'mlada_luna', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'crna_luna', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'lunin_mrk', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'rdeca', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'zelena', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'oranzna', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'plava', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'rumena', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'viola', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'klementina', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'kristina', NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'mercury', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'venus', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'earth', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'mars', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'jupiter', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'saturn', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'uran', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'neptun', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'pluton', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'novi_planet', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'zmaj', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'kobra', NULL, NULL, NULL);


--
-- Data for Name: space; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.space VALUES (1, 1, 1, 1, 'vesolje');
INSERT INTO public.space VALUES (2, 2, 2, 2, 'svemir');
INSERT INTO public.space VALUES (3, 3, 3, 3, 'kozmos');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sun', NULL, NULL, NULL);
INSERT INTO public.star VALUES (2, 'sun2', NULL, NULL, NULL);
INSERT INTO public.star VALUES (3, 'sun3', NULL, NULL, NULL);
INSERT INTO public.star VALUES (4, 'sun4', NULL, NULL, NULL);
INSERT INTO public.star VALUES (5, 'sun5', NULL, NULL, NULL);
INSERT INTO public.star VALUES (6, 'sun6', NULL, NULL, NULL);


--
-- Name: galaxy galaxy_constelation_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_constelation_key UNIQUE (constelation);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_bright_side_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_bright_side_key UNIQUE (bright_side);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_atmosphere_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_atmosphere_key UNIQUE (atmosphere);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: space space_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space
    ADD CONSTRAINT space_pkey PRIMARY KEY (space_id);


--
-- Name: space space_space_two_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space
    ADD CONSTRAINT space_space_two_key UNIQUE (space_two);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_size_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_size_key UNIQUE (size);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

