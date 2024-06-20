--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    name character varying(50),
    galaxy_type text,
    is_spherical boolean NOT NULL,
    galaxy_age integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50),
    is_spherical boolean NOT NULL,
    age_in_million_years integer,
    moon_radius integer NOT NULL,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50),
    planet_type text,
    distance_from_earth numeric(5,1) NOT NULL,
    planet_ring integer NOT NULL,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_life; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_life (
    planet_life_id integer NOT NULL,
    name character varying(50),
    planet_habit text NOT NULL,
    has_half_life boolean NOT NULL
);


ALTER TABLE public.planet_life OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50),
    star_type text,
    is_spherical boolean NOT NULL,
    distance_from_earth numeric(5,1) NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (100, 'andro', 'ant', true, 10);
INSERT INTO public.galaxy VALUES (101, 'frian', 'fog', true, 20);
INSERT INTO public.galaxy VALUES (102, 'band', 'bob', false, 30);
INSERT INTO public.galaxy VALUES (103, 'cat', 'cotton', true, 40);
INSERT INTO public.galaxy VALUES (104, 'cathe', 'cotan', false, 50);
INSERT INTO public.galaxy VALUES (105, 'dog106', 'dee', true, 60);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'fc_101', true, 1000, 547555, 65);
INSERT INTO public.moon VALUES (2, 'fc_102', false, 200, 478523, 66);
INSERT INTO public.moon VALUES (3, 'fc_103', false, 1456, 2584562, 67);
INSERT INTO public.moon VALUES (4, 'fc_104', false, 47555, 2544111, 68);
INSERT INTO public.moon VALUES (5, 'fc_105', true, 6542, 214786, 69);
INSERT INTO public.moon VALUES (6, 'fc_106', true, 7896, 54666, 70);
INSERT INTO public.moon VALUES (7, 'fc_107', true, 111, 231485, 71);
INSERT INTO public.moon VALUES (8, 'fc_108', true, 25896, 6985222, 72);
INSERT INTO public.moon VALUES (9, 'fc_109', false, 34852, 23156, 73);
INSERT INTO public.moon VALUES (10, 'fc_110', false, 32147, 698522, 74);
INSERT INTO public.moon VALUES (11, 'fc_111', false, 58966, 311555, 75);
INSERT INTO public.moon VALUES (12, 'fc_112', false, 69455, 698745, 76);
INSERT INTO public.moon VALUES (13, 'fc_113', true, 2174, 564369, 65);
INSERT INTO public.moon VALUES (14, 'fc_114', true, 1236, 258222, 65);
INSERT INTO public.moon VALUES (15, 'fc_115', false, 4015, 195476, 68);
INSERT INTO public.moon VALUES (16, 'fc_116', true, 2585, 657314, 73);
INSERT INTO public.moon VALUES (17, 'fc_117', false, 21475, 58744, 73);
INSERT INTO public.moon VALUES (18, 'fc_118', false, 6985, 698255, 73);
INSERT INTO public.moon VALUES (19, 'fc_119', false, 74111, 21566, 73);
INSERT INTO public.moon VALUES (20, 'fc_120', false, 7412, 35888, 73);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (65, 'loyal', 'lord', 5000.0, 0, 18);
INSERT INTO public.planet VALUES (66, 'thurst', 'exo', 4000.0, 5, 19);
INSERT INTO public.planet VALUES (67, 'hiphop', 'hip', 2000.0, 2, 20);
INSERT INTO public.planet VALUES (68, 'hoop', 'hoolay', 1000.0, 1, 21);
INSERT INTO public.planet VALUES (69, 'rush', 'honey', 4000.0, 0, 22);
INSERT INTO public.planet VALUES (70, 'runga', 'wolf', 6000.0, 0, 23);
INSERT INTO public.planet VALUES (71, 'ringa', 'dance', 8000.0, 8, 23);
INSERT INTO public.planet VALUES (72, 'ion', 'electron', 6500.0, 6, 23);
INSERT INTO public.planet VALUES (73, 'eaten', 'canteen', 4567.0, 4, 23);
INSERT INTO public.planet VALUES (74, 'aternal', 'eight', 6542.0, 6, 23);
INSERT INTO public.planet VALUES (75, 'queen', 'ask', 9872.0, 5, 23);
INSERT INTO public.planet VALUES (76, 'king', 'ask', 3145.0, 4, 23);


--
-- Data for Name: planet_life; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_life VALUES (54, 'd_101', 'normal', true);
INSERT INTO public.planet_life VALUES (55, 'd_102', 'normal', false);
INSERT INTO public.planet_life VALUES (56, 'd_103', 'normal', false);
INSERT INTO public.planet_life VALUES (57, 'd_104', 'normal', false);
INSERT INTO public.planet_life VALUES (58, 'd_105', 'normal', true);
INSERT INTO public.planet_life VALUES (59, 'd_106', 'normal', true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (18, 'lordge', 'lora', true, 4125.1, 100);
INSERT INTO public.star VALUES (19, 'gemini', 'gen', false, 5000.2, 101);
INSERT INTO public.star VALUES (20, 'virgo', 'vip', false, 6421.8, 102);
INSERT INTO public.star VALUES (21, 'lio', 'lora', true, 7545.0, 103);
INSERT INTO public.star VALUES (22, 'tuarus', 'turtle', true, 6987.9, 104);
INSERT INTO public.star VALUES (23, 'leo', 'lion', false, 5444.5, 105);


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
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet_life planet_life_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_life
    ADD CONSTRAINT planet_life_name_key UNIQUE (name);


--
-- Name: planet_life planet_life_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_life
    ADD CONSTRAINT planet_life_pkey PRIMARY KEY (planet_life_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


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

