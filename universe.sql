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
-- Name: extra; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.extra (
    extra_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text
);


ALTER TABLE public.extra OWNER TO freecodecamp;

--
-- Name: extra_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.extra_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.extra_id_seq OWNER TO freecodecamp;

--
-- Name: extra_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.extra_id_seq OWNED BY public.extra.extra_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    int1 integer,
    int2 integer,
    num numeric(10,1),
    description text,
    bool boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    int1 integer,
    int2 integer,
    num numeric(10,1),
    description text,
    bool boolean,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    int1 integer,
    int2 integer,
    num numeric(10,1),
    description text,
    bool boolean,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    int1 integer,
    int2 integer,
    num numeric(10,1),
    description text,
    bool boolean,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: extra extra_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra ALTER COLUMN extra_id SET DEFAULT nextval('public.extra_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: extra; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.extra VALUES (1, 'Extra 1', 'Description for Extra 1');
INSERT INTO public.extra VALUES (2, 'Extra 2', 'Description for Extra 2');
INSERT INTO public.extra VALUES (3, 'Extra 3', 'Description for Extra 3');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Galaxy1', 23, 49, 234.9, 'Galaxy1 Description', true);
INSERT INTO public.galaxy VALUES (2, 'Galaxy2', 34, 91, 743.6, 'Galaxy2 Description', false);
INSERT INTO public.galaxy VALUES (3, 'Galaxy3', 55, 40, 365.3, 'Galaxy3 Description', false);
INSERT INTO public.galaxy VALUES (4, 'Galaxy4', 91, 52, 810.6, 'Galaxy4 Description', true);
INSERT INTO public.galaxy VALUES (5, 'Galaxy5', 82, 0, 720.2, 'Galaxy5 Description', false);
INSERT INTO public.galaxy VALUES (6, 'Galaxy6', -24, 82, 836.1, 'Galaxy6 Description', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (7, 'Moon2', 34, 91, 743.6, 'Moon2 Description', false, 7);
INSERT INTO public.moon VALUES (8, 'Moon3', 55, 40, 365.3, 'Moon3 Description', false, 12);
INSERT INTO public.moon VALUES (9, 'Moon4', 91, 52, 810.6, 'Moon4 Description', true, 16);
INSERT INTO public.moon VALUES (10, 'Moon5', 82, 0, 720.2, 'Moon5 Description', false, 18);
INSERT INTO public.moon VALUES (11, 'Moon6', -24, 82, 836.1, 'Moon6 Description', false, 7);
INSERT INTO public.moon VALUES (12, 'Moon1', 34, 91, 743.6, 'Moon1 Description', true, 8);
INSERT INTO public.moon VALUES (13, 'Moon7', 34, 91, 743.6, 'Moon7 Description', false, 7);
INSERT INTO public.moon VALUES (14, 'Moon8', 55, 40, 365.3, 'Moon8 Description', false, 12);
INSERT INTO public.moon VALUES (15, 'Moon9', 91, 52, 810.6, 'Moon9 Description', true, 16);
INSERT INTO public.moon VALUES (16, 'Moon10', 82, 0, 720.2, 'Moon10 Description', false, 18);
INSERT INTO public.moon VALUES (17, 'Moon11', -24, 82, 836.1, 'Moon11 Description', false, 7);
INSERT INTO public.moon VALUES (18, 'Moon12', 34, 91, 743.6, 'Moon12 Description', true, 8);
INSERT INTO public.moon VALUES (19, 'Moon13', 34, 91, 743.6, 'Moon13 Description', false, 7);
INSERT INTO public.moon VALUES (20, 'Moon14', 55, 40, 365.3, 'Moon14 Description', false, 12);
INSERT INTO public.moon VALUES (21, 'Moon15', 91, 52, 810.6, 'Moon15 Description', true, 16);
INSERT INTO public.moon VALUES (22, 'Moon16', 82, 0, 720.2, 'Moon16 Description', false, 18);
INSERT INTO public.moon VALUES (23, 'Moon17', -24, 82, 836.1, 'Moon17 Description', false, 7);
INSERT INTO public.moon VALUES (24, 'Moon18', 34, 91, 743.6, 'Moon18 Description', true, 8);
INSERT INTO public.moon VALUES (25, 'Moon24', 34, 91, 743.6, 'Moon24 Description', false, 7);
INSERT INTO public.moon VALUES (26, 'Moon23', 55, 40, 365.3, 'Moon23 Description', false, 12);
INSERT INTO public.moon VALUES (27, 'Moon22', 91, 52, 810.6, 'Moon22 Description', true, 16);
INSERT INTO public.moon VALUES (28, 'Moon21', 82, 0, 720.2, 'Moon21 Description', false, 18);
INSERT INTO public.moon VALUES (29, 'Moon20', -24, 82, 836.1, 'Moon20 Description', false, 7);
INSERT INTO public.moon VALUES (30, 'Moon19', 34, 91, 743.6, 'Moon19 Description', true, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (7, 'Planet2', 34, 91, 743.6, 'Planet2 Description', false, 7);
INSERT INTO public.planet VALUES (8, 'Planet3', 55, 40, 365.3, 'Planet3 Description', false, 2);
INSERT INTO public.planet VALUES (9, 'Planet4', 91, 52, 810.6, 'Planet4 Description', true, 3);
INSERT INTO public.planet VALUES (10, 'Planet5', 82, 0, 720.2, 'Planet5 Description', false, 5);
INSERT INTO public.planet VALUES (11, 'Planet6', -24, 82, 836.1, 'Planet6 Description', false, 7);
INSERT INTO public.planet VALUES (12, 'Planet1', 34, 91, 743.6, 'Planet1 Description', true, 4);
INSERT INTO public.planet VALUES (13, 'Planet7', 34, 91, 743.6, 'Planet7 Description', false, 7);
INSERT INTO public.planet VALUES (14, 'Planet8', 55, 40, 365.3, 'Planet8 Description', false, 2);
INSERT INTO public.planet VALUES (15, 'Planet9', 91, 52, 810.6, 'Planet9 Description', true, 3);
INSERT INTO public.planet VALUES (16, 'Planet10', 82, 0, 720.2, 'Planet10 Description', false, 5);
INSERT INTO public.planet VALUES (17, 'Planet11', -24, 82, 836.1, 'Planet11 Description', false, 7);
INSERT INTO public.planet VALUES (18, 'Planet12', 34, 91, 743.6, 'Planet12 Description', true, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Star2', 34, 91, 743.6, 'Star2 Description', false, 1);
INSERT INTO public.star VALUES (3, 'Star3', 55, 40, 365.3, 'Star3 Description', false, 2);
INSERT INTO public.star VALUES (4, 'Star4', 91, 52, 810.6, 'Star4 Description', true, 3);
INSERT INTO public.star VALUES (5, 'Star5', 82, 0, 720.2, 'Star5 Description', false, 5);
INSERT INTO public.star VALUES (6, 'Star6', -24, 82, 836.1, 'Star6 Description', false, 1);
INSERT INTO public.star VALUES (7, 'Star1', 34, 91, 743.6, 'Star1 Description', true, 4);


--
-- Name: extra_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.extra_id_seq', 3, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 30, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 18, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 7, true);


--
-- Name: extra extra_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra
    ADD CONSTRAINT extra_name_key UNIQUE (name);


--
-- Name: extra extra_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra
    ADD CONSTRAINT extra_pkey PRIMARY KEY (extra_id);


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

