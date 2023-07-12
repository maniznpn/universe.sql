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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    distance_from_earth integer,
    age integer,
    distance_from_sun numeric,
    description text,
    has_life boolean
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
    name character varying(20) NOT NULL,
    age integer,
    distance_from_earth integer,
    planet_id integer NOT NULL
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
    name character varying(20) NOT NULL,
    distance_from_earth integer,
    age integer,
    star_id integer NOT NULL
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
    name character varying(20) NOT NULL,
    age integer,
    distance_from_earth integer,
    has_life boolean,
    galaxy_id integer NOT NULL
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
-- Name: universe; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.universe (
    name character varying(30) NOT NULL,
    age integer,
    distance_from_e integer,
    universe_id integer NOT NULL
);


ALTER TABLE public.universe OWNER TO freecodecamp;

--
-- Name: universe_universe_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.universe_universe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.universe_universe_id_seq OWNER TO freecodecamp;

--
-- Name: universe_universe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.universe_universe_id_seq OWNED BY public.universe.universe_id;


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
-- Name: universe universe_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe ALTER COLUMN universe_id SET DEFAULT nextval('public.universe_universe_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'andromeda', 100000, 20, 3000000, 'human galaxy', true);
INSERT INTO public.galaxy VALUES (2, 'andro', 10000, 2, 300000, 'human galaxy', true);
INSERT INTO public.galaxy VALUES (3, 'APPLE', 10003320, 24, 30000, 'human galaxy', false);
INSERT INTO public.galaxy VALUES (4, 'APPE', 10003320, 24, 30000, 'human galaxy', false);
INSERT INTO public.galaxy VALUES (5, 'APE', 10003320, 24, 30000, 'human galaxy', false);
INSERT INTO public.galaxy VALUES (65, 'PE', 10003320, 24, 30000, 'human galaxy', false);
INSERT INTO public.galaxy VALUES (6, 'MANISH', 444, 3434, 2323, 'DFDFDFF', true);
INSERT INTO public.galaxy VALUES (7, 'MAISH', 444, 3434, 2323, 'DFDFDFF', true);
INSERT INTO public.galaxy VALUES (8, 'MASH', 444, 3434, 2323, 'DFDFDFF', true);
INSERT INTO public.galaxy VALUES (9, 'MAH', 444, 3434, 2323, 'DFDFDFF', true);
INSERT INTO public.galaxy VALUES (10, 'MA', 444, 3434, 2323, 'DFDFDFF', true);
INSERT INTO public.galaxy VALUES (11, 'MdA', 444, 3434, 2323, 'DFDFDFF', true);
INSERT INTO public.galaxy VALUES (12, 'MdaA', 444, 3434, 2323, 'DFDFDFF', true);
INSERT INTO public.galaxy VALUES (13, 'MdaaA', 444, 3434, 2323, 'DFDFDFF', true);
INSERT INTO public.galaxy VALUES (14, 'MfdaaA', 444, 3434, 2323, 'DFDFDFF', true);
INSERT INTO public.galaxy VALUES (15, 'MafdaaA', 444, 3434, 2323, 'DFDFDFF', true);
INSERT INTO public.galaxy VALUES (16, 'MafdaaaaA', 444, 3434, 2323, 'DFDFDFF', true);
INSERT INTO public.galaxy VALUES (17, 'MafdaaaaafA', 444, 3434, 2323, 'DFDFDFF', true);
INSERT INTO public.galaxy VALUES (18, 'aMafdaaaaafA', 444, 3434, 2323, 'DFDFDFF', true);
INSERT INTO public.galaxy VALUES (19, 'aMfdaaaaafA', 444, 3434, 2323, 'DFDFDFF', true);
INSERT INTO public.galaxy VALUES (20, 'aMfdaaaaafAg', 444, 3434, 2323, 'DFDFDFF', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'usa', 8, 90, 1000);
INSERT INTO public.moon VALUES (2, 'us', 8, 90, 1000);
INSERT INTO public.moon VALUES (3, 'usaa', 8, 90, 1000);
INSERT INTO public.moon VALUES (4, 'usaaa', 8, 90, 1000);
INSERT INTO public.moon VALUES (5, 'usabaa', 8, 90, 1001);
INSERT INTO public.moon VALUES (6, 'usabggaa', 8, 90, 1002);
INSERT INTO public.moon VALUES (7, 'usabggaaaa', 8, 90, 1003);
INSERT INTO public.moon VALUES (8, 'usabggalaaa', 8, 90, 1004);
INSERT INTO public.moon VALUES (9, 'usabggalaaba', 8, 90, 1004);
INSERT INTO public.moon VALUES (10, 'usalbggalaaba', 8, 90, 1004);
INSERT INTO public.moon VALUES (11, 'usalbggalaalba', 8, 90, 1004);
INSERT INTO public.moon VALUES (12, 'usalbggalaalpba', 8, 90, 1004);
INSERT INTO public.moon VALUES (13, 'usalbggalaalplba', 8, 90, 1004);
INSERT INTO public.moon VALUES (14, 'usalbggalaaplplba', 8, 90, 1004);
INSERT INTO public.moon VALUES (15, 'usalbggalaaplpplba', 8, 90, 1004);
INSERT INTO public.moon VALUES (16, 'usalbggalaaplpplpba', 8, 90, 1004);
INSERT INTO public.moon VALUES (17, 'usaplbggalaaplplba', 8, 90, 1004);
INSERT INTO public.moon VALUES (18, 'usaplbggalaaplplboa', 8, 90, 1004);
INSERT INTO public.moon VALUES (19, 'end', 8, 90, 1005);
INSERT INTO public.moon VALUES (20, 'endd', 8, 90, 1005);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1000, 'earth', 70, 80, 100);
INSERT INTO public.planet VALUES (1001, 'venus', 70, 80, 101);
INSERT INTO public.planet VALUES (1002, 'mercury', 70, 80, 102);
INSERT INTO public.planet VALUES (1003, 'mars', 70, 80, 103);
INSERT INTO public.planet VALUES (1004, 'mas', 70, 80, 104);
INSERT INTO public.planet VALUES (1005, 'mads', 70, 80, 105);
INSERT INTO public.planet VALUES (1006, 'SATRUN', 68, 99, 106);
INSERT INTO public.planet VALUES (1007, 'STRUN', 68, 99, 2);
INSERT INTO public.planet VALUES (1008, 'STUN', 68, 99, 3);
INSERT INTO public.planet VALUES (1009, 'STAAUN', 68, 99, 4);
INSERT INTO public.planet VALUES (1010, 'STAGAUN', 68, 99, 5);
INSERT INTO public.planet VALUES (1011, 'STAGAAUN', 68, 99, 6);
INSERT INTO public.planet VALUES (1012, 'STAGAAUVN', 68, 99, 7);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (100, 'LAXMI', 2, 30, true, 1);
INSERT INTO public.star VALUES (101, 'LAXM', 2, 30, true, 2);
INSERT INTO public.star VALUES (102, 'LAX', 2, 30, true, 3);
INSERT INTO public.star VALUES (103, 'LAXU', 2, 30, true, 4);
INSERT INTO public.star VALUES (104, 'LAXUM', 2, 30, true, 5);
INSERT INTO public.star VALUES (105, 'LAXUME', 2, 30, true, 65);
INSERT INTO public.star VALUES (106, 'HAHA', 3, 69, false, 6);
INSERT INTO public.star VALUES (2, 'HAH', 3, 69, false, 7);
INSERT INTO public.star VALUES (3, 'HAHAA', 3, 69, false, 8);
INSERT INTO public.star VALUES (4, 'HAHAAA', 3, 69, false, 9);
INSERT INTO public.star VALUES (5, 'HAHAAGA', 3, 69, false, 10);
INSERT INTO public.star VALUES (6, 'HAHAAGGA', 3, 69, false, 11);
INSERT INTO public.star VALUES (7, 'HAHAAGGKA', 3, 69, false, 12);
INSERT INTO public.star VALUES (8, 'HAHAAGAGKA', 3, 69, false, 13);
INSERT INTO public.star VALUES (9, 'LHAHAAGAGKA', 3, 69, false, 14);
INSERT INTO public.star VALUES (10, 'LHAHAAGAGA', 3, 69, false, 15);
INSERT INTO public.star VALUES (11, 'LHAHAAGAA', 3, 69, false, 16);
INSERT INTO public.star VALUES (12, 'LHAHAAGA', 3, 69, false, 17);
INSERT INTO public.star VALUES (13, 'LHAHAAA', 3, 69, false, 18);
INSERT INTO public.star VALUES (14, 'FFHAHAAA', 3, 69, false, 19);
INSERT INTO public.star VALUES (15, 'FFHAHAAAL', 3, 69, false, 20);


--
-- Data for Name: universe; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.universe VALUES ('MILKY WAY', 88, 90, 1);
INSERT INTO public.universe VALUES ('MILKY AY', 88, 90, 2);
INSERT INTO public.universe VALUES ('MLKY AY', 88, 90, 3);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 4, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 15, true);


--
-- Name: universe_universe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.universe_universe_id_seq', 3, true);


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
-- Name: universe universe_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe
    ADD CONSTRAINT universe_name_key UNIQUE (name);


--
-- Name: universe universe_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe
    ADD CONSTRAINT universe_pkey PRIMARY KEY (universe_id);


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

--manish