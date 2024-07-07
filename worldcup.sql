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
    round character varying(50) NOT NULL,
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

INSERT INTO public.games VALUES (200, 2018, 'Final', 293, 294, 4, 2);
INSERT INTO public.games VALUES (201, 2018, 'Third Place', 295, 296, 2, 0);
INSERT INTO public.games VALUES (202, 2018, 'Semi-Final', 294, 296, 2, 1);
INSERT INTO public.games VALUES (203, 2018, 'Semi-Final', 293, 295, 1, 0);
INSERT INTO public.games VALUES (204, 2018, 'Quarter-Final', 294, 297, 3, 2);
INSERT INTO public.games VALUES (205, 2018, 'Quarter-Final', 296, 298, 2, 0);
INSERT INTO public.games VALUES (206, 2018, 'Quarter-Final', 295, 299, 2, 1);
INSERT INTO public.games VALUES (207, 2018, 'Quarter-Final', 293, 300, 2, 0);
INSERT INTO public.games VALUES (208, 2018, 'Eighth-Final', 296, 301, 2, 1);
INSERT INTO public.games VALUES (209, 2018, 'Eighth-Final', 298, 302, 1, 0);
INSERT INTO public.games VALUES (210, 2018, 'Eighth-Final', 295, 303, 3, 2);
INSERT INTO public.games VALUES (211, 2018, 'Eighth-Final', 299, 304, 2, 0);
INSERT INTO public.games VALUES (212, 2018, 'Eighth-Final', 294, 305, 2, 1);
INSERT INTO public.games VALUES (213, 2018, 'Eighth-Final', 297, 306, 2, 1);
INSERT INTO public.games VALUES (214, 2018, 'Eighth-Final', 300, 307, 2, 1);
INSERT INTO public.games VALUES (215, 2018, 'Eighth-Final', 293, 308, 4, 3);
INSERT INTO public.games VALUES (216, 2014, 'Final', 309, 308, 1, 0);
INSERT INTO public.games VALUES (217, 2014, 'Third Place', 310, 299, 3, 0);
INSERT INTO public.games VALUES (218, 2014, 'Semi-Final', 308, 310, 1, 0);
INSERT INTO public.games VALUES (219, 2014, 'Semi-Final', 309, 299, 7, 1);
INSERT INTO public.games VALUES (220, 2014, 'Quarter-Final', 310, 311, 1, 0);
INSERT INTO public.games VALUES (221, 2014, 'Quarter-Final', 308, 295, 1, 0);
INSERT INTO public.games VALUES (222, 2014, 'Quarter-Final', 299, 301, 2, 1);
INSERT INTO public.games VALUES (223, 2014, 'Quarter-Final', 309, 293, 1, 0);
INSERT INTO public.games VALUES (224, 2014, 'Eighth-Final', 299, 312, 2, 1);
INSERT INTO public.games VALUES (225, 2014, 'Eighth-Final', 301, 300, 2, 0);
INSERT INTO public.games VALUES (226, 2014, 'Eighth-Final', 293, 313, 2, 0);
INSERT INTO public.games VALUES (227, 2014, 'Eighth-Final', 309, 314, 2, 1);
INSERT INTO public.games VALUES (228, 2014, 'Eighth-Final', 310, 304, 2, 1);
INSERT INTO public.games VALUES (229, 2014, 'Eighth-Final', 311, 315, 2, 1);
INSERT INTO public.games VALUES (230, 2014, 'Eighth-Final', 308, 302, 1, 0);
INSERT INTO public.games VALUES (231, 2014, 'Eighth-Final', 295, 316, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (293, 'France');
INSERT INTO public.teams VALUES (294, 'Croatia');
INSERT INTO public.teams VALUES (295, 'Belgium');
INSERT INTO public.teams VALUES (296, 'England');
INSERT INTO public.teams VALUES (297, 'Russia');
INSERT INTO public.teams VALUES (298, 'Sweden');
INSERT INTO public.teams VALUES (299, 'Brazil');
INSERT INTO public.teams VALUES (300, 'Uruguay');
INSERT INTO public.teams VALUES (301, 'Colombia');
INSERT INTO public.teams VALUES (302, 'Switzerland');
INSERT INTO public.teams VALUES (303, 'Japan');
INSERT INTO public.teams VALUES (304, 'Mexico');
INSERT INTO public.teams VALUES (305, 'Denmark');
INSERT INTO public.teams VALUES (306, 'Spain');
INSERT INTO public.teams VALUES (307, 'Portugal');
INSERT INTO public.teams VALUES (308, 'Argentina');
INSERT INTO public.teams VALUES (309, 'Germany');
INSERT INTO public.teams VALUES (310, 'Netherlands');
INSERT INTO public.teams VALUES (311, 'Costa Rica');
INSERT INTO public.teams VALUES (312, 'Chile');
INSERT INTO public.teams VALUES (313, 'Nigeria');
INSERT INTO public.teams VALUES (314, 'Algeria');
INSERT INTO public.teams VALUES (315, 'Greece');
INSERT INTO public.teams VALUES (316, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 231, true);


--
-- Name: games_opponent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_opponent_id_seq', 3, true);


--
-- Name: games_winner_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_winner_id_seq', 1, false);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 316, true);


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

