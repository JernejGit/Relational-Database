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
    round character varying(255) NOT NULL,
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
    name character varying(255) NOT NULL
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

INSERT INTO public.games VALUES (676, 2018, 'Final', 1091, 1092, 4, 2);
INSERT INTO public.games VALUES (677, 2018, 'Third Place', 1093, 1094, 2, 0);
INSERT INTO public.games VALUES (678, 2018, 'Semi-Final', 1092, 1094, 2, 1);
INSERT INTO public.games VALUES (679, 2018, 'Semi-Final', 1091, 1093, 1, 0);
INSERT INTO public.games VALUES (680, 2018, 'Quarter-Final', 1092, 1100, 3, 2);
INSERT INTO public.games VALUES (681, 2018, 'Quarter-Final', 1094, 1102, 2, 0);
INSERT INTO public.games VALUES (682, 2018, 'Quarter-Final', 1093, 1104, 2, 1);
INSERT INTO public.games VALUES (683, 2018, 'Quarter-Final', 1091, 1106, 2, 0);
INSERT INTO public.games VALUES (684, 2018, 'Eighth-Final', 1094, 1108, 2, 1);
INSERT INTO public.games VALUES (685, 2018, 'Eighth-Final', 1102, 1110, 1, 0);
INSERT INTO public.games VALUES (686, 2018, 'Eighth-Final', 1093, 1112, 3, 2);
INSERT INTO public.games VALUES (687, 2018, 'Eighth-Final', 1104, 1114, 2, 0);
INSERT INTO public.games VALUES (688, 2018, 'Eighth-Final', 1092, 1116, 2, 1);
INSERT INTO public.games VALUES (689, 2018, 'Eighth-Final', 1100, 1118, 2, 1);
INSERT INTO public.games VALUES (690, 2018, 'Eighth-Final', 1106, 1120, 2, 1);
INSERT INTO public.games VALUES (691, 2018, 'Eighth-Final', 1091, 1122, 4, 3);
INSERT INTO public.games VALUES (692, 2014, 'Final', 1123, 1122, 1, 0);
INSERT INTO public.games VALUES (693, 2014, 'Third Place', 1125, 1104, 3, 0);
INSERT INTO public.games VALUES (694, 2014, 'Semi-Final', 1122, 1125, 1, 0);
INSERT INTO public.games VALUES (695, 2014, 'Semi-Final', 1123, 1104, 7, 1);
INSERT INTO public.games VALUES (696, 2014, 'Quarter-Final', 1125, 1132, 1, 0);
INSERT INTO public.games VALUES (697, 2014, 'Quarter-Final', 1122, 1093, 1, 0);
INSERT INTO public.games VALUES (698, 2014, 'Quarter-Final', 1104, 1108, 2, 1);
INSERT INTO public.games VALUES (699, 2014, 'Quarter-Final', 1123, 1091, 1, 0);
INSERT INTO public.games VALUES (700, 2014, 'Eighth-Final', 1104, 1140, 2, 1);
INSERT INTO public.games VALUES (701, 2014, 'Eighth-Final', 1108, 1106, 2, 0);
INSERT INTO public.games VALUES (702, 2014, 'Eighth-Final', 1091, 1144, 2, 0);
INSERT INTO public.games VALUES (703, 2014, 'Eighth-Final', 1123, 1146, 2, 1);
INSERT INTO public.games VALUES (704, 2014, 'Eighth-Final', 1125, 1114, 2, 1);
INSERT INTO public.games VALUES (705, 2014, 'Eighth-Final', 1132, 1150, 2, 1);
INSERT INTO public.games VALUES (706, 2014, 'Eighth-Final', 1122, 1110, 1, 0);
INSERT INTO public.games VALUES (707, 2014, 'Eighth-Final', 1093, 1154, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (1091, 'France');
INSERT INTO public.teams VALUES (1092, 'Croatia');
INSERT INTO public.teams VALUES (1093, 'Belgium');
INSERT INTO public.teams VALUES (1094, 'England');
INSERT INTO public.teams VALUES (1100, 'Russia');
INSERT INTO public.teams VALUES (1102, 'Sweden');
INSERT INTO public.teams VALUES (1104, 'Brazil');
INSERT INTO public.teams VALUES (1106, 'Uruguay');
INSERT INTO public.teams VALUES (1108, 'Colombia');
INSERT INTO public.teams VALUES (1110, 'Switzerland');
INSERT INTO public.teams VALUES (1112, 'Japan');
INSERT INTO public.teams VALUES (1114, 'Mexico');
INSERT INTO public.teams VALUES (1116, 'Denmark');
INSERT INTO public.teams VALUES (1118, 'Spain');
INSERT INTO public.teams VALUES (1120, 'Portugal');
INSERT INTO public.teams VALUES (1122, 'Argentina');
INSERT INTO public.teams VALUES (1123, 'Germany');
INSERT INTO public.teams VALUES (1125, 'Netherlands');
INSERT INTO public.teams VALUES (1132, 'Costa Rica');
INSERT INTO public.teams VALUES (1140, 'Chile');
INSERT INTO public.teams VALUES (1144, 'Nigeria');
INSERT INTO public.teams VALUES (1146, 'Algeria');
INSERT INTO public.teams VALUES (1150, 'Greece');
INSERT INTO public.teams VALUES (1154, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 707, true);


--
-- Name: games_opponent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_opponent_id_seq', 226, true);


--
-- Name: games_winner_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_winner_id_seq', 226, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 1154, true);


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
-- Name: games fk_opponent; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_opponent FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_winner; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_winner FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

