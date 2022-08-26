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
    mancol1 integer,
    mancol2 integer,
    mancol3 numeric(3,2),
    mancol4 text,
    mancol5 boolean,
    mancol6 boolean
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
-- Name: mantab; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.mantab (
    mantab_id integer NOT NULL,
    name character varying(30),
    mancol2 integer NOT NULL
);


ALTER TABLE public.mantab OWNER TO freecodecamp;

--
-- Name: mantab_mantab_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.mantab_mantab_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mantab_mantab_id_seq OWNER TO freecodecamp;

--
-- Name: mantab_mantab_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.mantab_mantab_id_seq OWNED BY public.mantab.mantab_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    mancol1 integer,
    mancol2 integer,
    mancol3 numeric(3,2),
    mancol4 text,
    mancol5 boolean,
    mancol6 boolean,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    mancol1 integer,
    mancol2 integer,
    mancol3 numeric(3,2),
    mancol4 text,
    mancol5 boolean,
    mancol6 boolean,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    mancol1 integer,
    mancol2 integer,
    mancol3 numeric(3,2),
    mancol4 text,
    mancol5 boolean,
    mancol6 boolean,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: mantab mantab_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.mantab ALTER COLUMN mantab_id SET DEFAULT nextval('public.mantab_mantab_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'HUE1', 1, 1, 1.11, 'ONE', true, true);
INSERT INTO public.galaxy VALUES (2, 'HUE2', 2, 2, 2.22, 'TWO', false, false);
INSERT INTO public.galaxy VALUES (3, 'HUE3', 3, 3, 3.33, 'THREE', true, false);
INSERT INTO public.galaxy VALUES (4, 'HUE4', 4, 4, 4.44, 'FOUR', false, true);
INSERT INTO public.galaxy VALUES (5, 'HUE5', 5, 5, 5.55, 'FIVE', true, true);
INSERT INTO public.galaxy VALUES (6, 'HUE6', 6, 6, 6.66, 'SIX', false, false);


--
-- Data for Name: mantab; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.mantab VALUES (1, 'EUH1', 1);
INSERT INTO public.mantab VALUES (2, 'EUH2', 2);
INSERT INTO public.mantab VALUES (3, 'EUH3', 3);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'M1', 1, 1, 1.11, 'ONE', true, true, 1);
INSERT INTO public.moon VALUES (2, 'M2', 2, 2, 2.22, 'TWO', false, false, 2);
INSERT INTO public.moon VALUES (3, 'M3', 3, 3, 3.33, 'THREE', true, false, 3);
INSERT INTO public.moon VALUES (4, 'M4', 4, 4, 4.44, 'FOUR', false, true, 4);
INSERT INTO public.moon VALUES (5, 'M5', 5, 5, 5.55, 'FIVE', true, true, 5);
INSERT INTO public.moon VALUES (6, 'M6', 6, 6, 6.66, 'SIX', false, false, 6);
INSERT INTO public.moon VALUES (7, 'M7', 1, 1, 1.11, 'ONE', true, true, 7);
INSERT INTO public.moon VALUES (8, 'M8', 2, 2, 2.22, 'TWO', false, false, 8);
INSERT INTO public.moon VALUES (9, 'M9', 3, 3, 3.33, 'THREE', true, false, 9);
INSERT INTO public.moon VALUES (10, 'M10', 4, 4, 4.44, 'FOUR', false, true, 10);
INSERT INTO public.moon VALUES (11, 'M11', 5, 5, 5.55, 'FIVE', true, true, 11);
INSERT INTO public.moon VALUES (12, 'M12', 6, 6, 6.66, 'SIX', false, false, 12);
INSERT INTO public.moon VALUES (13, 'M13', 1, 1, 1.11, 'ONE', true, true, 1);
INSERT INTO public.moon VALUES (14, 'M14', 2, 2, 2.22, 'TWO', false, false, 2);
INSERT INTO public.moon VALUES (15, 'M15', 3, 3, 3.33, 'THREE', true, false, 3);
INSERT INTO public.moon VALUES (16, 'M16', 4, 4, 4.44, 'FOUR', false, true, 4);
INSERT INTO public.moon VALUES (17, 'M17', 5, 5, 5.55, 'FIVE', true, true, 5);
INSERT INTO public.moon VALUES (18, 'M18', 6, 6, 6.66, 'SIX', false, false, 6);
INSERT INTO public.moon VALUES (19, 'M19', 1, 1, 1.11, 'ONE', true, true, 7);
INSERT INTO public.moon VALUES (20, 'M20', 2, 2, 2.22, 'TWO', false, false, 8);
INSERT INTO public.moon VALUES (21, 'M21', 3, 3, 3.33, 'THREE', true, false, 9);
INSERT INTO public.moon VALUES (22, 'M22', 4, 4, 4.44, 'FOUR', false, true, 10);
INSERT INTO public.moon VALUES (23, 'M23', 5, 5, 5.55, 'FIVE', true, true, 11);
INSERT INTO public.moon VALUES (24, 'M24', 6, 6, 6.66, 'SIX', false, false, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'E1', 1, 1, 1.11, 'ONE', true, true, 1);
INSERT INTO public.planet VALUES (2, 'E2', 2, 2, 2.22, 'TWO', false, false, 2);
INSERT INTO public.planet VALUES (3, 'E3', 3, 3, 3.33, 'THREE', true, false, 3);
INSERT INTO public.planet VALUES (4, 'E4', 4, 4, 4.44, 'FOUR', false, true, 4);
INSERT INTO public.planet VALUES (5, 'E5', 5, 5, 5.55, 'FIVE', true, true, 5);
INSERT INTO public.planet VALUES (6, 'E6', 6, 6, 6.66, 'SIX', false, false, 6);
INSERT INTO public.planet VALUES (7, 'E7', 1, 1, 1.11, 'ONE', true, true, 1);
INSERT INTO public.planet VALUES (8, 'E8', 2, 2, 2.22, 'TWO', false, false, 2);
INSERT INTO public.planet VALUES (9, 'E9', 3, 3, 3.33, 'THREE', true, false, 3);
INSERT INTO public.planet VALUES (10, 'E10', 4, 4, 4.44, 'FOUR', false, true, 4);
INSERT INTO public.planet VALUES (11, 'E11', 5, 5, 5.55, 'FIVE', true, true, 5);
INSERT INTO public.planet VALUES (12, 'E12', 6, 6, 6.66, 'SIX', false, false, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'UE1', 1, 1, 1.11, 'ONE', true, true, 1);
INSERT INTO public.star VALUES (2, 'UE2', 2, 2, 2.22, 'TWO', false, false, 2);
INSERT INTO public.star VALUES (3, 'UE3', 3, 3, 3.33, 'THREE', true, false, 3);
INSERT INTO public.star VALUES (4, 'UE4', 4, 4, 4.44, 'FOUR', false, true, 4);
INSERT INTO public.star VALUES (5, 'UE5', 5, 5, 5.55, 'FIVE', true, true, 5);
INSERT INTO public.star VALUES (6, 'UE6', 6, 6, 6.66, 'SIX', false, false, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: mantab_mantab_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.mantab_mantab_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 24, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_mancol1_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_mancol1_unq UNIQUE (mancol1);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: mantab mantab_name_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.mantab
    ADD CONSTRAINT mantab_name_unq UNIQUE (name);


--
-- Name: mantab mantab_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.mantab
    ADD CONSTRAINT mantab_pkey PRIMARY KEY (mantab_id);


--
-- Name: moon moon_name_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_unq UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_unq UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_unq UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star galaxy_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_id_fk FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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
-- PostgreSQL database dump complete
--

