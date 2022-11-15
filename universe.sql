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
-- Name: fifth; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.fifth (
    name character varying(10),
    fifth_id integer NOT NULL,
    no integer NOT NULL
);


ALTER TABLE public.fifth OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(10) NOT NULL,
    description text,
    is_big boolean,
    is_near boolean,
    g_id integer,
    distance numeric,
    s_no integer
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
    planet_id integer,
    dis text NOT NULL,
    distance_is numeric,
    is_far boolean,
    is_near boolean,
    name character varying(10)
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
    planet_detail text,
    name character varying(10) NOT NULL,
    star_id integer,
    is_big boolean,
    is_small boolean,
    is_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_is_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_is_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_is_id_seq OWNER TO freecodecamp;

--
-- Name: planet_is_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_is_id_seq OWNED BY public.planet.is_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(10) NOT NULL,
    weight numeric,
    distance integer,
    is_far boolean,
    is_good boolean,
    galaxy_id integer NOT NULL,
    f_key integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_galaxy_id_seq OWNED BY public.star.galaxy_id;


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
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet is_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN is_id SET DEFAULT nextval('public.planet_is_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Data for Name: fifth; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.fifth VALUES ('asdssd', 12, 32);
INSERT INTO public.fifth VALUES ('asdsdfasd', 13, 32);
INSERT INTO public.fifth VALUES ('asdsdzxsd', 14, 32);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'This is a galxy', true, false, 1, 2345, 11);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 'This is another galxy', true, false, 2, 23545, 12);
INSERT INTO public.galaxy VALUES (3, 'GalaxyA', 'Another galaxy', false, false, 3, 4567, 13);
INSERT INTO public.galaxy VALUES (4, 'GalaxyB', 'Another Galaxy', false, true, 4, 6547, 14);
INSERT INTO public.galaxy VALUES (5, 'GalaxyC', 'New Galaxy', true, true, 5, 78345, 15);
INSERT INTO public.galaxy VALUES (6, 'GalaxyD', 'New N Galaxy', true, false, 6, 364, 16);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, NULL, 'qwwe', 123, false, false, 'yay');
INSERT INTO public.moon VALUES (2, NULL, 'asd', 243, false, true, 'sos');
INSERT INTO public.moon VALUES (3, NULL, 'qwwe', 123, false, false, 'yay');
INSERT INTO public.moon VALUES (4, NULL, 'asd', 243, false, true, 'sos');
INSERT INTO public.moon VALUES (5, NULL, 'qwwe', 123, false, false, 'yay');
INSERT INTO public.moon VALUES (6, NULL, 'asd', 243, false, true, 'sos');
INSERT INTO public.moon VALUES (7, NULL, 'qwwe', 123, false, false, 'yay');
INSERT INTO public.moon VALUES (8, NULL, 'asd', 243, false, true, 'sos');
INSERT INTO public.moon VALUES (9, NULL, 'qwwe', 123, false, false, 'yay');
INSERT INTO public.moon VALUES (10, NULL, 'asd', 243, false, true, 'sos');
INSERT INTO public.moon VALUES (11, NULL, 'qwwe', 123, false, false, 'yay');
INSERT INTO public.moon VALUES (12, NULL, 'asd', 243, false, true, 'sos');
INSERT INTO public.moon VALUES (13, NULL, 'qwwe', 123, false, false, 'yay');
INSERT INTO public.moon VALUES (14, NULL, 'asd', 243, false, true, 'sos');
INSERT INTO public.moon VALUES (15, NULL, 'qwwe', 123, false, false, 'yay');
INSERT INTO public.moon VALUES (16, NULL, 'asd', 243, false, true, 'sos');
INSERT INTO public.moon VALUES (17, NULL, 'qwwe', 123, false, false, 'yay');
INSERT INTO public.moon VALUES (18, NULL, 'asd', 243, false, true, 'sos');
INSERT INTO public.moon VALUES (19, NULL, 'qwwe', 123, false, false, 'yay');
INSERT INTO public.moon VALUES (20, NULL, 'asd', 243, false, true, 'sos');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (22, 'hello', 'planet1', NULL, true, false, 8);
INSERT INTO public.planet VALUES (33, 'hey', 'planet2', NULL, false, false, 9);
INSERT INTO public.planet VALUES (44, 'hello', 'planet3', NULL, true, false, 10);
INSERT INTO public.planet VALUES (55, 'hey', 'planet2', NULL, false, false, 11);
INSERT INTO public.planet VALUES (66, 'hello', 'planet5', NULL, true, true, 12);
INSERT INTO public.planet VALUES (77, 'hey', 'planet2', NULL, false, true, 13);
INSERT INTO public.planet VALUES (88, 'hello', 'planet7', NULL, true, true, 15);
INSERT INTO public.planet VALUES (99, 'hey', 'planet2', NULL, false, true, 16);
INSERT INTO public.planet VALUES (1010, 'hello', 'planet9', NULL, true, true, 17);
INSERT INTO public.planet VALUES (1111, 'hey', 'planet2', NULL, false, true, 18);
INSERT INTO public.planet VALUES (1212, 'hello', 'planet11', NULL, true, true, 19);
INSERT INTO public.planet VALUES (1313, 'hey', 'planet2', NULL, false, true, 20);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'STARa', 4521, 452, true, true, 1, NULL);
INSERT INTO public.star VALUES (2, 'STARb', 4564, 789, true, false, 2, NULL);
INSERT INTO public.star VALUES (3, 'STARc', 464, 784, false, false, 3, NULL);
INSERT INTO public.star VALUES (4, 'STARd', 753, 951, true, true, 4, NULL);
INSERT INTO public.star VALUES (5, 'STARe', 412, 6523, true, false, 5, NULL);
INSERT INTO public.star VALUES (6, 'STARf', 852, 258, false, true, 6, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_is_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_is_id_seq', 20, true);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 37, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: fifth fifth_fifth_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth
    ADD CONSTRAINT fifth_fifth_id_key UNIQUE (fifth_id);


--
-- Name: fifth fifth_table_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth
    ADD CONSTRAINT fifth_table_pkey PRIMARY KEY (fifth_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_s_no_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_s_no_key UNIQUE (s_no);


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
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

