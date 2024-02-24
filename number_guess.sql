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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    number_of_guesses integer NOT NULL,
    user_id integer
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
-- Name: players; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.players (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.players OWNER TO freecodecamp;

--
-- Name: players_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.players_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.players_user_id_seq OWNER TO freecodecamp;

--
-- Name: players_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.players_user_id_seq OWNED BY public.players.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: players user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players ALTER COLUMN user_id SET DEFAULT nextval('public.players_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 224, 1);
INSERT INTO public.games VALUES (2, 845, 3);
INSERT INTO public.games VALUES (3, 248, 8);
INSERT INTO public.games VALUES (4, 768, 10);
INSERT INTO public.games VALUES (5, 140, 15);
INSERT INTO public.games VALUES (6, 425, 17);
INSERT INTO public.games VALUES (7, 797, 22);
INSERT INTO public.games VALUES (8, 478, 24);
INSERT INTO public.games VALUES (9, 889, 29);
INSERT INTO public.games VALUES (10, 358, 31);
INSERT INTO public.games VALUES (11, 557, 36);
INSERT INTO public.games VALUES (12, 581, 38);
INSERT INTO public.games VALUES (13, 397, 43);
INSERT INTO public.games VALUES (14, 256, 45);
INSERT INTO public.games VALUES (15, 787, 50);
INSERT INTO public.games VALUES (16, 465, 52);


--
-- Data for Name: players; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.players VALUES (1, 'user_1708788571883');
INSERT INTO public.players VALUES (2, 'user_1708788571883');
INSERT INTO public.players VALUES (3, 'user_1708788571882');
INSERT INTO public.players VALUES (4, 'user_1708788571882');
INSERT INTO public.players VALUES (5, 'user_1708788571883');
INSERT INTO public.players VALUES (6, 'user_1708788571883');
INSERT INTO public.players VALUES (7, 'user_1708788571883');
INSERT INTO public.players VALUES (8, 'user_1708788644507');
INSERT INTO public.players VALUES (9, 'user_1708788644507');
INSERT INTO public.players VALUES (10, 'user_1708788644506');
INSERT INTO public.players VALUES (11, 'user_1708788644506');
INSERT INTO public.players VALUES (12, 'user_1708788644507');
INSERT INTO public.players VALUES (13, 'user_1708788644507');
INSERT INTO public.players VALUES (14, 'user_1708788644507');
INSERT INTO public.players VALUES (15, 'user_1708788660109');
INSERT INTO public.players VALUES (16, 'user_1708788660109');
INSERT INTO public.players VALUES (17, 'user_1708788660108');
INSERT INTO public.players VALUES (18, 'user_1708788660108');
INSERT INTO public.players VALUES (19, 'user_1708788660109');
INSERT INTO public.players VALUES (20, 'user_1708788660109');
INSERT INTO public.players VALUES (21, 'user_1708788660109');
INSERT INTO public.players VALUES (22, 'user_1708788709658');
INSERT INTO public.players VALUES (23, 'user_1708788709658');
INSERT INTO public.players VALUES (24, 'user_1708788709657');
INSERT INTO public.players VALUES (25, 'user_1708788709657');
INSERT INTO public.players VALUES (26, 'user_1708788709658');
INSERT INTO public.players VALUES (27, 'user_1708788709658');
INSERT INTO public.players VALUES (28, 'user_1708788709658');
INSERT INTO public.players VALUES (29, 'user_1708788746066');
INSERT INTO public.players VALUES (30, 'user_1708788746066');
INSERT INTO public.players VALUES (31, 'user_1708788746065');
INSERT INTO public.players VALUES (32, 'user_1708788746065');
INSERT INTO public.players VALUES (33, 'user_1708788746066');
INSERT INTO public.players VALUES (34, 'user_1708788746066');
INSERT INTO public.players VALUES (35, 'user_1708788746066');
INSERT INTO public.players VALUES (36, 'user_1708788817154');
INSERT INTO public.players VALUES (37, 'user_1708788817154');
INSERT INTO public.players VALUES (38, 'user_1708788817153');
INSERT INTO public.players VALUES (39, 'user_1708788817153');
INSERT INTO public.players VALUES (40, 'user_1708788817154');
INSERT INTO public.players VALUES (41, 'user_1708788817154');
INSERT INTO public.players VALUES (42, 'user_1708788817154');
INSERT INTO public.players VALUES (43, 'user_1708788863940');
INSERT INTO public.players VALUES (44, 'user_1708788863940');
INSERT INTO public.players VALUES (45, 'user_1708788863939');
INSERT INTO public.players VALUES (46, 'user_1708788863939');
INSERT INTO public.players VALUES (47, 'user_1708788863940');
INSERT INTO public.players VALUES (48, 'user_1708788863940');
INSERT INTO public.players VALUES (49, 'user_1708788863940');
INSERT INTO public.players VALUES (50, 'user_1708788922056');
INSERT INTO public.players VALUES (51, 'user_1708788922056');
INSERT INTO public.players VALUES (52, 'user_1708788922055');
INSERT INTO public.players VALUES (53, 'user_1708788922055');
INSERT INTO public.players VALUES (54, 'user_1708788922056');
INSERT INTO public.players VALUES (55, 'user_1708788922056');
INSERT INTO public.players VALUES (56, 'user_1708788922056');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 16, true);


--
-- Name: players_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.players_user_id_seq', 56, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: players players_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_pkey PRIMARY KEY (user_id);


--
-- Name: games game_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT game_id_fkey FOREIGN KEY (user_id) REFERENCES public.players(user_id);


--
-- PostgreSQL database dump complete
--

