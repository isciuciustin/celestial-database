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
-- Name: five_table; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.five_table (
    five_table_id integer NOT NULL,
    name character varying,
    eman text,
    test text NOT NULL
);


ALTER TABLE public.five_table OWNER TO freecodecamp;

--
-- Name: five_table_five_table_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.five_table_five_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.five_table_five_table_id_seq OWNER TO freecodecamp;

--
-- Name: five_table_five_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.five_table_five_table_id_seq OWNED BY public.five_table.five_table_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100) NOT NULL,
    age_in_millions_of_years integer,
    nr_of_planets integer,
    nr_of_stars numeric,
    type text,
    star_id integer NOT NULL
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(100) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_the_earth integer,
    description text,
    col text
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
    name character varying(100) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_the_earth integer,
    has_life boolean,
    is_spherical boolean
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
    name character varying(100) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_the_earth integer,
    galaxy_id integer NOT NULL,
    decription text
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
-- Name: five_table five_table_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.five_table ALTER COLUMN five_table_id SET DEFAULT nextval('public.five_table_five_table_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


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
-- Data for Name: five_table; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.five_table VALUES (1, 'u', 'doi', 'trei');
INSERT INTO public.five_table VALUES (2, 'u', 'doi', 'trei');
INSERT INTO public.five_table VALUES (3, 'u', 'doi', 'trei');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (4, 'Andromeda', 1230, 1230, 1230, 'type', 1);
INSERT INTO public.galaxy VALUES (5, 'Andromeda', 1230, 1230, 1230, 'type', 2);
INSERT INTO public.galaxy VALUES (6, 'Andromeda', 1230, 1230, 1230, 'type', 3);
INSERT INTO public.galaxy VALUES (7, 'Andromeda', 1230, 1230, 1230, 'type', 4);
INSERT INTO public.galaxy VALUES (8, 'Andromeda', 1230, 1230, 1230, 'type', 5);
INSERT INTO public.galaxy VALUES (9, 'Andromeda', 1230, 1230, 1230, 'type', 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1230, 1230, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'Moon', 1230, 1230, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'Moon', 1230, 1230, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'Moon', 1230, 1230, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'Moon', 1230, 1230, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'Moon', 1230, 1230, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'Moon', 1230, 1230, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Moon', 1230, 1230, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Moon', 1230, 1230, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Moon', 1230, 1230, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Moon', 1230, 1230, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Moon', 1230, 1230, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Moon', 1230, 1230, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Moon', 1230, 1230, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Moon', 1230, 1230, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Moon', 1230, 1230, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Moon', 1230, 1230, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Moon', 1230, 1230, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Moon', 1230, 1230, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Moon', 1230, 1230, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Planet', 1230, 1230, true, false);
INSERT INTO public.planet VALUES (2, 'Planet', 1230, 1230, true, false);
INSERT INTO public.planet VALUES (3, 'Planet', 1230, 1230, true, false);
INSERT INTO public.planet VALUES (4, 'Planet', 1230, 1230, true, false);
INSERT INTO public.planet VALUES (5, 'Planet', 1230, 1230, true, false);
INSERT INTO public.planet VALUES (6, 'Planet', 1230, 1230, true, false);
INSERT INTO public.planet VALUES (7, 'Planet', 1230, 1230, true, false);
INSERT INTO public.planet VALUES (8, 'Planet', 1230, 1230, true, false);
INSERT INTO public.planet VALUES (9, 'Planet', 1230, 1230, true, false);
INSERT INTO public.planet VALUES (10, 'Planet', 1230, 1230, true, false);
INSERT INTO public.planet VALUES (11, 'Planet', 1230, 1230, true, false);
INSERT INTO public.planet VALUES (12, 'Planet', 1230, 1230, true, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (3, 'Star', 1230, 1230, 4, NULL);
INSERT INTO public.star VALUES (4, 'Star', 1230, 1230, 5, NULL);
INSERT INTO public.star VALUES (5, 'Star', 1230, 1230, 6, NULL);
INSERT INTO public.star VALUES (6, 'Star', 1230, 1230, 7, NULL);
INSERT INTO public.star VALUES (7, 'Star', 1230, 1230, 8, NULL);
INSERT INTO public.star VALUES (8, 'Star', 1230, 1230, 9, NULL);


--
-- Name: five_table_five_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.five_table_five_table_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 9, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: five_table five_table_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.five_table
    ADD CONSTRAINT five_table_pkey PRIMARY KEY (five_table_id);


--
-- Name: five_table five_table_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.five_table
    ADD CONSTRAINT five_table_unique UNIQUE (five_table_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

