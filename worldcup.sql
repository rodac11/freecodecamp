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
    year integer NOT NULL,
    round character varying(30) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
    name character varying(30) NOT NULL
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

INSERT INTO public.games VALUES (123, 2018, 'Final', 26, 27, 4, 2);
INSERT INTO public.games VALUES (124, 2018, 'Third Place', 28, 29, 2, 0);
INSERT INTO public.games VALUES (125, 2018, 'Semi-Final', 27, 29, 2, 1);
INSERT INTO public.games VALUES (126, 2018, 'Semi-Final', 26, 28, 1, 0);
INSERT INTO public.games VALUES (127, 2018, 'Quarter-Final', 27, 43, 3, 2);
INSERT INTO public.games VALUES (128, 2018, 'Quarter-Final', 29, 37, 2, 0);
INSERT INTO public.games VALUES (129, 2018, 'Quarter-Final', 28, 40, 2, 1);
INSERT INTO public.games VALUES (130, 2018, 'Quarter-Final', 26, 45, 2, 0);
INSERT INTO public.games VALUES (131, 2018, 'Eighth-Final', 29, 85, 2, 1);
INSERT INTO public.games VALUES (132, 2018, 'Eighth-Final', 37, 38, 1, 0);
INSERT INTO public.games VALUES (133, 2018, 'Eighth-Final', 28, 89, 3, 2);
INSERT INTO public.games VALUES (134, 2018, 'Eighth-Final', 40, 41, 2, 0);
INSERT INTO public.games VALUES (135, 2018, 'Eighth-Final', 27, 93, 2, 1);
INSERT INTO public.games VALUES (136, 2018, 'Eighth-Final', 43, 44, 2, 1);
INSERT INTO public.games VALUES (137, 2018, 'Eighth-Final', 45, 46, 2, 1);
INSERT INTO public.games VALUES (138, 2018, 'Eighth-Final', 26, 49, 4, 3);
INSERT INTO public.games VALUES (139, 2014, 'Final', 48, 49, 1, 0);
INSERT INTO public.games VALUES (140, 2014, 'Third Place', 54, 40, 3, 0);
INSERT INTO public.games VALUES (141, 2014, 'Semi-Final', 49, 54, 1, 0);
INSERT INTO public.games VALUES (142, 2014, 'Semi-Final', 48, 40, 7, 1);
INSERT INTO public.games VALUES (143, 2014, 'Quarter-Final', 54, 55, 1, 0);
INSERT INTO public.games VALUES (144, 2014, 'Quarter-Final', 49, 28, 1, 0);
INSERT INTO public.games VALUES (145, 2014, 'Quarter-Final', 40, 85, 2, 1);
INSERT INTO public.games VALUES (146, 2014, 'Quarter-Final', 48, 26, 1, 0);
INSERT INTO public.games VALUES (147, 2014, 'Eighth-Final', 40, 117, 2, 1);
INSERT INTO public.games VALUES (148, 2014, 'Eighth-Final', 85, 45, 2, 0);
INSERT INTO public.games VALUES (149, 2014, 'Eighth-Final', 26, 121, 2, 0);
INSERT INTO public.games VALUES (150, 2014, 'Eighth-Final', 48, 123, 2, 1);
INSERT INTO public.games VALUES (151, 2014, 'Eighth-Final', 54, 41, 2, 1);
INSERT INTO public.games VALUES (152, 2014, 'Eighth-Final', 55, 127, 2, 1);
INSERT INTO public.games VALUES (153, 2014, 'Eighth-Final', 49, 38, 1, 0);
INSERT INTO public.games VALUES (154, 2014, 'Eighth-Final', 28, 131, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (85, 'Colombia');
INSERT INTO public.teams VALUES (89, 'Japan');
INSERT INTO public.teams VALUES (26, 'France');
INSERT INTO public.teams VALUES (27, 'Croatia');
INSERT INTO public.teams VALUES (28, 'Belgium');
INSERT INTO public.teams VALUES (29, 'England');
INSERT INTO public.teams VALUES (93, 'Denmark');
INSERT INTO public.teams VALUES (37, 'Sweden');
INSERT INTO public.teams VALUES (38, 'Switzerland');
INSERT INTO public.teams VALUES (40, 'Brazil');
INSERT INTO public.teams VALUES (41, 'Mexico');
INSERT INTO public.teams VALUES (43, 'Russia');
INSERT INTO public.teams VALUES (44, 'Spain');
INSERT INTO public.teams VALUES (45, 'Uruguay');
INSERT INTO public.teams VALUES (46, 'Portugal');
INSERT INTO public.teams VALUES (48, 'Germany');
INSERT INTO public.teams VALUES (49, 'Argentina');
INSERT INTO public.teams VALUES (54, 'Netherlands');
INSERT INTO public.teams VALUES (55, 'Costa Rica');
INSERT INTO public.teams VALUES (117, 'Chile');
INSERT INTO public.teams VALUES (121, 'Nigeria');
INSERT INTO public.teams VALUES (123, 'Algeria');
INSERT INTO public.teams VALUES (127, 'Greece');
INSERT INTO public.teams VALUES (131, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 154, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 323, true);


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
