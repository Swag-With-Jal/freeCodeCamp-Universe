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
-- Name: dwarf_planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.dwarf_planet (
    dwarf_planet_id integer NOT NULL,
    name character varying NOT NULL,
    height integer,
    weight integer
);


ALTER TABLE public.dwarf_planet OWNER TO freecodecamp;

--
-- Name: dwarf_planet_dwarf_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.dwarf_planet_dwarf_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dwarf_planet_dwarf_planet_id_seq OWNER TO freecodecamp;

--
-- Name: dwarf_planet_dwarf_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.dwarf_planet_dwarf_planet_id_seq OWNED BY public.dwarf_planet.dwarf_planet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying NOT NULL,
    galaxy_id integer NOT NULL,
    num_stars integer,
    eye_visible boolean,
    year numeric,
    ref text,
    character_id integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_character_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_character_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_character_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_character_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_character_id_seq OWNED BY public.galaxy.character_id;


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
    name character varying NOT NULL,
    moon_id integer NOT NULL,
    weight integer,
    height integer,
    gravity integer,
    character_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_character_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_character_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_character_id_seq OWNER TO freecodecamp;

--
-- Name: moon_character_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_character_id_seq OWNED BY public.moon.character_id;


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
    name character varying NOT NULL,
    planet_id integer NOT NULL,
    weight integer,
    height integer,
    no_moon integer,
    ref text,
    character_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_character_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_character_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_character_id_seq OWNER TO freecodecamp;

--
-- Name: planet_character_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_character_id_seq OWNED BY public.planet.character_id;


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
    name character varying NOT NULL,
    star_id integer NOT NULL,
    revolve_planet integer,
    height integer,
    weight integer,
    eye_visible boolean,
    ref text,
    character_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_character_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_character_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_character_id_seq OWNER TO freecodecamp;

--
-- Name: star_character_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_character_id_seq OWNED BY public.star.character_id;


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
-- Name: dwarf_planet dwarf_planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dwarf_planet ALTER COLUMN dwarf_planet_id SET DEFAULT nextval('public.dwarf_planet_dwarf_planet_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy character_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN character_id SET DEFAULT nextval('public.galaxy_character_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon character_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN character_id SET DEFAULT nextval('public.moon_character_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet character_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN character_id SET DEFAULT nextval('public.planet_character_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star character_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN character_id SET DEFAULT nextval('public.star_character_id_seq'::regclass);


--
-- Data for Name: dwarf_planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.dwarf_planet VALUES (1, 'Pluto', 2372, 0);
INSERT INTO public.dwarf_planet VALUES (2, 'Eris', 2372, 218);
INSERT INTO public.dwarf_planet VALUES (3, 'Haumea', 2482, 298);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way Galaxy', 1, 4000, true, 1990, 'The Sun', 1);
INSERT INTO public.galaxy VALUES ('Andromeda Galaxy', 2, 5000, false, 1980, 'The Moto', 2);
INSERT INTO public.galaxy VALUES ('Triangulum Galaxy', 3, 3000, true, 1999, 'The Goto', 3);
INSERT INTO public.galaxy VALUES ('Whirlpool Galaxy', 4, 2000, true, 1989, 'The Roto', 4);
INSERT INTO public.galaxy VALUES ('Sombrero Galaxy', 5, 7000, true, 1969, 'The hoto', 5);
INSERT INTO public.galaxy VALUES ('Pinwheel Galaxy', 6, 8000, false, 1939, 'The choto', 6);
INSERT INTO public.galaxy VALUES ('Ahirlpool Galaxy', 7, 2000, true, 1989, 'The Aoto', 7);
INSERT INTO public.galaxy VALUES ('Bhirlpool Galaxy', 8, 2000, true, 1989, 'The Boto', 8);
INSERT INTO public.galaxy VALUES ('Chirlpool Galaxy', 9, 2000, true, 1989, 'The Coto', 9);
INSERT INTO public.galaxy VALUES ('Dhirlpool Galaxy', 10, 2000, true, 1989, 'The Doto', 10);
INSERT INTO public.galaxy VALUES ('Ehirlpool Galaxy', 11, 2000, true, 1989, 'The Eoto', 11);
INSERT INTO public.galaxy VALUES ('Fhirlpool Galaxy', 12, 2000, true, 1989, 'The Foto', 12);
INSERT INTO public.galaxy VALUES ('Ghirlpool Galaxy', 14, 2000, true, 1989, 'The koto', 13);
INSERT INTO public.galaxy VALUES ('Hhirlpool Galaxy', 15, 2000, true, 1989, 'The Hoto', 14);
INSERT INTO public.galaxy VALUES ('Ihirlpool Galaxy', 16, 2000, true, 1989, 'The Ioto', 15);
INSERT INTO public.galaxy VALUES ('Jhirlpool Galaxy', 17, 2000, true, 1989, 'The Joto', 16);
INSERT INTO public.galaxy VALUES ('Khirlpool Galaxy', 18, 2000, true, 1989, 'The Koto', 17);
INSERT INTO public.galaxy VALUES ('Lhirlpool Galaxy', 19, 2000, true, 1989, 'The Loto', 18);
INSERT INTO public.galaxy VALUES ('Xhirlpool Galaxy', 20, 2000, true, 1989, 'The Xoto', 19);
INSERT INTO public.galaxy VALUES ('Yhirlpool Galaxy', 21, 2000, true, 1989, 'The Yoto', 20);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Hele', 1, 899, 696, 2, 1);
INSERT INTO public.moon VALUES ('Mele', 2, 899, 696, 2, 2);
INSERT INTO public.moon VALUES ('Chand', 3, 899, 696, 2, 3);
INSERT INTO public.moon VALUES ('Phabo', 5, 899, 696, 2, 4);
INSERT INTO public.moon VALUES ('Dhabo', 6, 899, 696, 2, 5);
INSERT INTO public.moon VALUES ('Babo', 7, 899, 696, 2, 6);
INSERT INTO public.moon VALUES ('Kabo', 8, 899, 696, 2, 7);
INSERT INTO public.moon VALUES ('Pabo', 9, 899, 696, 2, 8);
INSERT INTO public.moon VALUES ('Labo', 10, 899, 696, 2, 9);
INSERT INTO public.moon VALUES ('Cabo', 11, 899, 696, 2, 10);
INSERT INTO public.moon VALUES ('Mabo', 12, 899, 696, 2, 11);
INSERT INTO public.moon VALUES ('Habo', 13, 899, 696, 2, 12);
INSERT INTO public.moon VALUES ('Iabo', 15, 899, 696, 2, 13);
INSERT INTO public.moon VALUES ('Jabo', 16, 899, 696, 2, 14);
INSERT INTO public.moon VALUES ('Abo', 19, 899, 696, 2, 15);
INSERT INTO public.moon VALUES ('Bbo', 20, 899, 696, 2, 16);
INSERT INTO public.moon VALUES ('Bco', 22, 899, 696, 2, 17);
INSERT INTO public.moon VALUES ('Dco', 23, 899, 696, 2, 18);
INSERT INTO public.moon VALUES ('Eco', 24, 899, 696, 2, 19);
INSERT INTO public.moon VALUES ('Nhabo', 25, 899, 696, 2, 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Mercury', 1, 899, 696, 2, 'Hele', 1);
INSERT INTO public.planet VALUES ('Venus', 2, 899, 696, 2, 'Mele', 2);
INSERT INTO public.planet VALUES ('Earth', 3, 899, 696, 2, 'Chand', 3);
INSERT INTO public.planet VALUES ('Mars', 4, 899, 696, 2, 'Phabo', 4);
INSERT INTO public.planet VALUES ('Jupiter', 5, 899, 696, 2, 'Nhabo', 5);
INSERT INTO public.planet VALUES ('Saturn', 6, 899, 696, 2, 'Dhabo', 6);
INSERT INTO public.planet VALUES ('Uranus', 7, 899, 696, 2, 'Babo', 7);
INSERT INTO public.planet VALUES ('Neptune', 8, 899, 696, 2, 'Kabo', 8);
INSERT INTO public.planet VALUES ('Ceres', 9, 899, 696, 2, 'Pabo', 9);
INSERT INTO public.planet VALUES ('Keres', 10, 899, 696, 2, 'Labo', 10);
INSERT INTO public.planet VALUES ('Deres', 11, 899, 696, 2, 'Cabo', 11);
INSERT INTO public.planet VALUES ('Meres', 12, 899, 696, 2, 'Mabo', 12);
INSERT INTO public.planet VALUES ('Neres', 14, 899, 696, 2, 'Habo', 13);
INSERT INTO public.planet VALUES ('Oeres', 15, 899, 696, 2, 'Iabo', 14);
INSERT INTO public.planet VALUES ('Peres', 16, 899, 696, 2, 'Jabo', 15);
INSERT INTO public.planet VALUES ('Reres', 21, 899, 696, 2, 'Abo', 16);
INSERT INTO public.planet VALUES ('Seres', 22, 899, 696, 2, 'Bbo', 17);
INSERT INTO public.planet VALUES ('Teres', 23, 899, 696, 2, 'Bco', 18);
INSERT INTO public.planet VALUES ('Leres', 24, 899, 696, 2, 'Dco', 19);
INSERT INTO public.planet VALUES ('Zeres', 25, 899, 696, 2, 'Eco', 20);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('The Sun', 1, 8, 696, 989, false, 'Mercury', 1);
INSERT INTO public.star VALUES ('The Moto', 2, 7, 696, 989, false, 'Venus', 2);
INSERT INTO public.star VALUES ('The Goto', 3, 7, 696, 989, false, 'Earth', 3);
INSERT INTO public.star VALUES ('The Roto', 4, 7, 696, 989, false, 'Mars', 4);
INSERT INTO public.star VALUES ('The hoto', 6, 7, 696, 989, false, 'Jupiter', 5);
INSERT INTO public.star VALUES ('The choto', 7, 7, 696, 989, false, 'Saturn', 6);
INSERT INTO public.star VALUES ('The Aoto', 8, 7, 696, 989, false, 'Uranus', 7);
INSERT INTO public.star VALUES ('The Boto', 9, 7, 696, 989, false, 'Neptune', 8);
INSERT INTO public.star VALUES ('The Coto', 10, 7, 696, 989, false, 'Ceres', 9);
INSERT INTO public.star VALUES ('The Doto', 11, 7, 696, 989, false, 'Keres', 10);
INSERT INTO public.star VALUES ('The Eoto', 12, 7, 696, 989, false, 'Deres', 11);
INSERT INTO public.star VALUES ('The Foto', 13, 7, 696, 989, false, 'Meres', 12);
INSERT INTO public.star VALUES ('The Hoto', 17, 7, 696, 989, false, 'Neres', 13);
INSERT INTO public.star VALUES ('The Ioto', 18, 7, 696, 989, false, 'Oeres', 14);
INSERT INTO public.star VALUES ('The Joto', 19, 7, 696, 989, false, 'Peres', 15);
INSERT INTO public.star VALUES ('The Loto', 21, 7, 696, 989, false, 'Reres', 16);
INSERT INTO public.star VALUES ('The Xoto', 22, 7, 696, 989, false, 'Seres', 17);
INSERT INTO public.star VALUES ('The Yoto', 23, 7, 696, 989, false, 'Teres', 18);
INSERT INTO public.star VALUES ('The Koto', 20, 7, 696, 989, false, 'Leres', 19);
INSERT INTO public.star VALUES ('The koto', 15, 7, 696, 989, false, 'Zeres', 20);


--
-- Name: dwarf_planet_dwarf_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.dwarf_planet_dwarf_planet_id_seq', 3, true);


--
-- Name: galaxy_character_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_character_id_seq', 20, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 21, true);


--
-- Name: moon_character_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_character_id_seq', 20, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 25, true);


--
-- Name: planet_character_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_character_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 25, true);


--
-- Name: star_character_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_character_id_seq', 20, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 23, true);


--
-- Name: dwarf_planet dwarf_planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dwarf_planet
    ADD CONSTRAINT dwarf_planet_name_key UNIQUE (name);


--
-- Name: dwarf_planet dwarf_planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dwarf_planet
    ADD CONSTRAINT dwarf_planet_pkey PRIMARY KEY (dwarf_planet_id);


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
-- Name: moon moon_character_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_character_id_key UNIQUE (character_id);


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
-- Name: planet planet_character_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_character_id_key UNIQUE (character_id);


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
-- Name: star star_character_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_character_id_key UNIQUE (character_id);


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
-- Name: galaxy t; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT t UNIQUE (character_id);


--
-- Name: star the_plan; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT the_plan UNIQUE (ref);


--
-- Name: planet the_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT the_planet UNIQUE (ref);


--
-- Name: planet the_plat; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT the_plat UNIQUE (name);


--
-- Name: galaxy the_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT the_star UNIQUE (ref);


--
-- Name: star a; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT a FOREIGN KEY (character_id) REFERENCES public.galaxy(character_id);


--
-- Name: planet b; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT b FOREIGN KEY (character_id) REFERENCES public.star(character_id);


--
-- Name: moon c; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT c FOREIGN KEY (character_id) REFERENCES public.planet(character_id);


--
-- PostgreSQL database dump complete
--

