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
    round character varying NOT NULL,
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
-- Name: games_opponent_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_opponent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_opponent_id_seq OWNER TO freecodecamp;

--
-- Name: games_opponent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_opponent_id_seq OWNED BY public.games.opponent_id;


--
-- Name: games_winner_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_winner_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_winner_id_seq OWNER TO freecodecamp;

--
-- Name: games_winner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_winner_id_seq OWNED BY public.games.winner_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying NOT NULL
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
-- Name: games winner_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN winner_id SET DEFAULT nextval('public.games_winner_id_seq'::regclass);


--
-- Name: games opponent_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN opponent_id SET DEFAULT nextval('public.games_opponent_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (95, 2018, 'Final', 691, 692, 4, 2);
INSERT INTO public.games VALUES (96, 2018, 'Third Place', 693, 694, 2, 0);
INSERT INTO public.games VALUES (97, 2018, 'Semi-Final', 692, 694, 2, 1);
INSERT INTO public.games VALUES (98, 2018, 'Semi-Final', 691, 693, 1, 0);
INSERT INTO public.games VALUES (99, 2018, 'Quarter-Final', 692, 695, 3, 2);
INSERT INTO public.games VALUES (100, 2018, 'Quarter-Final', 694, 696, 2, 0);
INSERT INTO public.games VALUES (101, 2018, 'Quarter-Final', 693, 697, 2, 1);
INSERT INTO public.games VALUES (102, 2018, 'Quarter-Final', 691, 698, 2, 0);
INSERT INTO public.games VALUES (103, 2018, 'Eighth-Final', 694, 699, 2, 1);
INSERT INTO public.games VALUES (104, 2018, 'Eighth-Final', 696, 700, 1, 0);
INSERT INTO public.games VALUES (105, 2018, 'Eighth-Final', 693, 701, 3, 2);
INSERT INTO public.games VALUES (106, 2018, 'Eighth-Final', 697, 702, 2, 0);
INSERT INTO public.games VALUES (107, 2018, 'Eighth-Final', 692, 703, 2, 1);
INSERT INTO public.games VALUES (108, 2018, 'Eighth-Final', 695, 704, 2, 1);
INSERT INTO public.games VALUES (109, 2018, 'Eighth-Final', 698, 705, 2, 1);
INSERT INTO public.games VALUES (110, 2018, 'Eighth-Final', 691, 706, 4, 3);
INSERT INTO public.games VALUES (111, 2014, 'Final', 707, 706, 1, 0);
INSERT INTO public.games VALUES (112, 2014, 'Third Place', 708, 697, 3, 0);
INSERT INTO public.games VALUES (113, 2014, 'Semi-Final', 706, 708, 1, 0);
INSERT INTO public.games VALUES (114, 2014, 'Semi-Final', 707, 697, 7, 1);
INSERT INTO public.games VALUES (115, 2014, 'Quarter-Final', 708, 709, 1, 0);
INSERT INTO public.games VALUES (116, 2014, 'Quarter-Final', 706, 693, 1, 0);
INSERT INTO public.games VALUES (117, 2014, 'Quarter-Final', 697, 699, 2, 1);
INSERT INTO public.games VALUES (118, 2014, 'Quarter-Final', 707, 691, 1, 0);
INSERT INTO public.games VALUES (119, 2014, 'Eighth-Final', 697, 710, 2, 1);
INSERT INTO public.games VALUES (120, 2014, 'Eighth-Final', 699, 698, 2, 0);
INSERT INTO public.games VALUES (121, 2014, 'Eighth-Final', 691, 711, 2, 0);
INSERT INTO public.games VALUES (122, 2014, 'Eighth-Final', 707, 712, 2, 1);
INSERT INTO public.games VALUES (123, 2014, 'Eighth-Final', 708, 702, 2, 1);
INSERT INTO public.games VALUES (124, 2014, 'Eighth-Final', 709, 713, 2, 1);
INSERT INTO public.games VALUES (125, 2014, 'Eighth-Final', 706, 700, 1, 0);
INSERT INTO public.games VALUES (126, 2014, 'Eighth-Final', 693, 714, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (691, 'France');
INSERT INTO public.teams VALUES (692, 'Croatia');
INSERT INTO public.teams VALUES (693, 'Belgium');
INSERT INTO public.teams VALUES (694, 'England');
INSERT INTO public.teams VALUES (695, 'Russia');
INSERT INTO public.teams VALUES (696, 'Sweden');
INSERT INTO public.teams VALUES (697, 'Brazil');
INSERT INTO public.teams VALUES (698, 'Uruguay');
INSERT INTO public.teams VALUES (699, 'Colombia');
INSERT INTO public.teams VALUES (700, 'Switzerland');
INSERT INTO public.teams VALUES (701, 'Japan');
INSERT INTO public.teams VALUES (702, 'Mexico');
INSERT INTO public.teams VALUES (703, 'Denmark');
INSERT INTO public.teams VALUES (704, 'Spain');
INSERT INTO public.teams VALUES (705, 'Portugal');
INSERT INTO public.teams VALUES (706, 'Argentina');
INSERT INTO public.teams VALUES (707, 'Germany');
INSERT INTO public.teams VALUES (708, 'Netherlands');
INSERT INTO public.teams VALUES (709, 'Costa Rica');
INSERT INTO public.teams VALUES (710, 'Chile');
INSERT INTO public.teams VALUES (711, 'Nigeria');
INSERT INTO public.teams VALUES (712, 'Algeria');
INSERT INTO public.teams VALUES (713, 'Greece');
INSERT INTO public.teams VALUES (714, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 126, true);


--
-- Name: games_opponent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_opponent_id_seq', 32, true);


--
-- Name: games_winner_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_winner_id_seq', 32, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 714, true);


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

