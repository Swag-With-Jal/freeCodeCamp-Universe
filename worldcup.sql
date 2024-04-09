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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    round character varying(50) NOT NULL,
    year integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_id integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (5, 'Final', 2018, 4, 2, 38, 37);
INSERT INTO public.games VALUES (6, 'Third Place', 2018, 2, 0, 40, 39);
INSERT INTO public.games VALUES (7, 'Semi-Final', 2018, 2, 1, 40, 38);
INSERT INTO public.games VALUES (8, 'Semi-Final', 2018, 1, 0, 39, 37);
INSERT INTO public.games VALUES (9, 'Quarter-Final', 2018, 3, 2, 41, 38);
INSERT INTO public.games VALUES (10, 'Quarter-Final', 2018, 2, 0, 42, 40);
INSERT INTO public.games VALUES (11, 'Quarter-Final', 2018, 2, 1, 43, 39);
INSERT INTO public.games VALUES (12, 'Quarter-Final', 2018, 2, 0, 44, 37);
INSERT INTO public.games VALUES (13, 'Eighth-Final', 2018, 2, 1, 45, 40);
INSERT INTO public.games VALUES (14, 'Eighth-Final', 2018, 1, 0, 46, 42);
INSERT INTO public.games VALUES (15, 'Eighth-Final', 2018, 3, 2, 47, 39);
INSERT INTO public.games VALUES (16, 'Eighth-Final', 2018, 2, 0, 48, 43);
INSERT INTO public.games VALUES (17, 'Eighth-Final', 2018, 2, 1, 49, 38);
INSERT INTO public.games VALUES (18, 'Eighth-Final', 2018, 2, 1, 50, 41);
INSERT INTO public.games VALUES (19, 'Eighth-Final', 2018, 2, 1, 51, 44);
INSERT INTO public.games VALUES (20, 'Eighth-Final', 2018, 4, 3, 52, 37);
INSERT INTO public.games VALUES (21, 'Final', 2014, 1, 0, 52, 53);
INSERT INTO public.games VALUES (22, 'Third Place', 2014, 3, 0, 43, 54);
INSERT INTO public.games VALUES (23, 'Semi-Final', 2014, 1, 0, 54, 52);
INSERT INTO public.games VALUES (24, 'Semi-Final', 2014, 7, 1, 43, 53);
INSERT INTO public.games VALUES (25, 'Quarter-Final', 2014, 1, 0, 55, 54);
INSERT INTO public.games VALUES (26, 'Quarter-Final', 2014, 1, 0, 39, 52);
INSERT INTO public.games VALUES (27, 'Quarter-Final', 2014, 2, 1, 45, 43);
INSERT INTO public.games VALUES (28, 'Quarter-Final', 2014, 1, 0, 37, 53);
INSERT INTO public.games VALUES (29, 'Eighth-Final', 2014, 2, 1, 56, 43);
INSERT INTO public.games VALUES (30, 'Eighth-Final', 2014, 2, 0, 44, 45);
INSERT INTO public.games VALUES (31, 'Eighth-Final', 2014, 2, 0, 57, 37);
INSERT INTO public.games VALUES (32, 'Eighth-Final', 2014, 2, 1, 58, 53);
INSERT INTO public.games VALUES (33, 'Eighth-Final', 2014, 2, 1, 48, 54);
INSERT INTO public.games VALUES (34, 'Eighth-Final', 2014, 2, 1, 59, 55);
INSERT INTO public.games VALUES (35, 'Eighth-Final', 2014, 1, 0, 46, 52);
INSERT INTO public.games VALUES (36, 'Eighth-Final', 2014, 2, 1, 60, 39);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (37, 'France');
INSERT INTO public.teams VALUES (38, 'Croatia');
INSERT INTO public.teams VALUES (39, 'Belgium');
INSERT INTO public.teams VALUES (40, 'England');
INSERT INTO public.teams VALUES (41, 'Russia');
INSERT INTO public.teams VALUES (42, 'Sweden');
INSERT INTO public.teams VALUES (43, 'Brazil');
INSERT INTO public.teams VALUES (44, 'Uruguay');
INSERT INTO public.teams VALUES (45, 'Colombia');
INSERT INTO public.teams VALUES (46, 'Switzerland');
INSERT INTO public.teams VALUES (47, 'Japan');
INSERT INTO public.teams VALUES (48, 'Mexico');
INSERT INTO public.teams VALUES (49, 'Denmark');
INSERT INTO public.teams VALUES (50, 'Spain');
INSERT INTO public.teams VALUES (51, 'Portugal');
INSERT INTO public.teams VALUES (52, 'Argentina');
INSERT INTO public.teams VALUES (53, 'Germany');
INSERT INTO public.teams VALUES (54, 'Netherlands');
INSERT INTO public.teams VALUES (55, 'Costa Rica');
INSERT INTO public.teams VALUES (56, 'Chile');
INSERT INTO public.teams VALUES (57, 'Nigeria');
INSERT INTO public.teams VALUES (58, 'Algeria');
INSERT INTO public.teams VALUES (59, 'Greece');
INSERT INTO public.teams VALUES (60, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 36, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 60, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

