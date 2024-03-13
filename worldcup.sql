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
    round character varying(20) NOT NULL,
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
    name character varying(20) NOT NULL
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

INSERT INTO public.games VALUES (119, 2018, 'Final', 180, 181, 4, 2);
INSERT INTO public.games VALUES (120, 2018, 'Third Place', 182, 183, 2, 0);
INSERT INTO public.games VALUES (121, 2018, 'Semi-Final', 181, 183, 2, 1);
INSERT INTO public.games VALUES (122, 2018, 'Semi-Final', 180, 182, 1, 0);
INSERT INTO public.games VALUES (123, 2018, 'Quarter-Final', 181, 187, 3, 2);
INSERT INTO public.games VALUES (124, 2018, 'Quarter-Final', 183, 189, 2, 0);
INSERT INTO public.games VALUES (125, 2018, 'Quarter-Final', 182, 191, 2, 1);
INSERT INTO public.games VALUES (126, 2018, 'Quarter-Final', 180, 193, 2, 0);
INSERT INTO public.games VALUES (127, 2018, 'Eighth-Final', 183, 195, 2, 1);
INSERT INTO public.games VALUES (128, 2018, 'Eighth-Final', 189, 197, 1, 0);
INSERT INTO public.games VALUES (129, 2018, 'Eighth-Final', 182, 199, 3, 2);
INSERT INTO public.games VALUES (130, 2018, 'Eighth-Final', 191, 201, 2, 0);
INSERT INTO public.games VALUES (131, 2018, 'Eighth-Final', 181, 203, 2, 1);
INSERT INTO public.games VALUES (132, 2018, 'Eighth-Final', 187, 205, 2, 1);
INSERT INTO public.games VALUES (133, 2018, 'Eighth-Final', 193, 207, 2, 1);
INSERT INTO public.games VALUES (134, 2018, 'Eighth-Final', 180, 209, 4, 3);
INSERT INTO public.games VALUES (135, 2014, 'Final', 210, 209, 1, 0);
INSERT INTO public.games VALUES (136, 2014, 'Third Place', 211, 191, 3, 0);
INSERT INTO public.games VALUES (137, 2014, 'Semi-Final', 209, 211, 1, 0);
INSERT INTO public.games VALUES (138, 2014, 'Semi-Final', 210, 191, 7, 1);
INSERT INTO public.games VALUES (139, 2014, 'Quarter-Final', 211, 215, 1, 0);
INSERT INTO public.games VALUES (140, 2014, 'Quarter-Final', 209, 182, 1, 0);
INSERT INTO public.games VALUES (141, 2014, 'Quarter-Final', 191, 195, 2, 1);
INSERT INTO public.games VALUES (142, 2014, 'Quarter-Final', 210, 180, 1, 0);
INSERT INTO public.games VALUES (143, 2014, 'Eighth-Final', 191, 220, 2, 1);
INSERT INTO public.games VALUES (144, 2014, 'Eighth-Final', 195, 193, 2, 0);
INSERT INTO public.games VALUES (145, 2014, 'Eighth-Final', 180, 223, 2, 0);
INSERT INTO public.games VALUES (146, 2014, 'Eighth-Final', 210, 225, 2, 1);
INSERT INTO public.games VALUES (147, 2014, 'Eighth-Final', 211, 201, 2, 1);
INSERT INTO public.games VALUES (148, 2014, 'Eighth-Final', 215, 228, 2, 1);
INSERT INTO public.games VALUES (149, 2014, 'Eighth-Final', 209, 197, 1, 0);
INSERT INTO public.games VALUES (150, 2014, 'Eighth-Final', 182, 231, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (180, 'France');
INSERT INTO public.teams VALUES (181, 'Croatia');
INSERT INTO public.teams VALUES (182, 'Belgium');
INSERT INTO public.teams VALUES (183, 'England');
INSERT INTO public.teams VALUES (187, 'Russia');
INSERT INTO public.teams VALUES (189, 'Sweden');
INSERT INTO public.teams VALUES (191, 'Brazil');
INSERT INTO public.teams VALUES (193, 'Uruguay');
INSERT INTO public.teams VALUES (195, 'Colombia');
INSERT INTO public.teams VALUES (197, 'Switzerland');
INSERT INTO public.teams VALUES (199, 'Japan');
INSERT INTO public.teams VALUES (201, 'Mexico');
INSERT INTO public.teams VALUES (203, 'Denmark');
INSERT INTO public.teams VALUES (205, 'Spain');
INSERT INTO public.teams VALUES (207, 'Portugal');
INSERT INTO public.teams VALUES (209, 'Argentina');
INSERT INTO public.teams VALUES (210, 'Germany');
INSERT INTO public.teams VALUES (211, 'Netherlands');
INSERT INTO public.teams VALUES (215, 'Costa Rica');
INSERT INTO public.teams VALUES (220, 'Chile');
INSERT INTO public.teams VALUES (223, 'Nigeria');
INSERT INTO public.teams VALUES (225, 'Algeria');
INSERT INTO public.teams VALUES (228, 'Greece');
INSERT INTO public.teams VALUES (231, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 150, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 231, true);


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
-- Name: games fk_opponent_teams; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_opponent_teams FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_winner_teams; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_winner_teams FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

