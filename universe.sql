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
-- Name: all_id; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.all_id (
    planet_id integer,
    moon_id integer,
    galaxy_id integer,
    star_id integer,
    all_id_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.all_id OWNER TO freecodecamp;

--
-- Name: all_id_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.all_id_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.all_id_id_seq OWNER TO freecodecamp;

--
-- Name: all_id_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.all_id_id_seq OWNED BY public.all_id.all_id_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(50),
    galaxy_id integer NOT NULL,
    existence boolean NOT NULL,
    noofplanetespresent numeric,
    about text,
    int_column_1 integer,
    int_column_2 integer
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
    name character varying(50),
    moon_id integer NOT NULL,
    existence boolean NOT NULL,
    about text,
    planet_id integer
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
    name character varying(50),
    planet_id integer NOT NULL,
    existence boolean NOT NULL,
    about text,
    star_id integer
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
    name character varying(50),
    star_id integer NOT NULL,
    existence boolean NOT NULL,
    about text,
    galaxy_id integer
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
-- Name: all_id all_id_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.all_id ALTER COLUMN all_id_id SET DEFAULT nextval('public.all_id_id_seq'::regclass);


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
-- Data for Name: all_id; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.all_id VALUES (12, 23, 34, 45, 1, 'test1');
INSERT INTO public.all_id VALUES (76, 65, 64, 45, 2, 'test4');
INSERT INTO public.all_id VALUES (23, 34, 45, 56, 3, 'test2');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', 1, true, 100, 'Milky Way', 100, 100);
INSERT INTO public.galaxy VALUES ('Triangulum', 2, true, 10, 'Triangulum', 10, 10);
INSERT INTO public.galaxy VALUES ('Trian', 3, true, 210, 'Trian', 210, 210);
INSERT INTO public.galaxy VALUES ('Trguln', 4, true, 20, 'Trguln', 20, 20);
INSERT INTO public.galaxy VALUES ('Malin 1', 5, true, 200, 'Malin 1', 200, 200);
INSERT INTO public.galaxy VALUES ('Malin 2', 6, true, 300, 'Malin 2', 300, 300);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('full wolf', 1, true, 'full wolf', 4);
INSERT INTO public.moon VALUES ('half wolf', 2, true, 'half wolf', 2);
INSERT INTO public.moon VALUES ('wolf', 3, true, 'wolf', 3);
INSERT INTO public.moon VALUES ('full snow', 4, true, 'full snow', 1);
INSERT INTO public.moon VALUES ('half snow', 5, true, 'half snow', 8);
INSERT INTO public.moon VALUES ('snow', 6, true, 'snow', 7);
INSERT INTO public.moon VALUES ('full cold', 7, true, 'full cold', 11);
INSERT INTO public.moon VALUES ('half cold', 8, true, 'half cold', 14);
INSERT INTO public.moon VALUES ('cold', 9, true, 'cold', 5);
INSERT INTO public.moon VALUES ('full corn', 10, true, 'full corn', 6);
INSERT INTO public.moon VALUES ('half corn', 11, true, 'half corn', 12);
INSERT INTO public.moon VALUES ('corn', 12, true, 'corn', 13);
INSERT INTO public.moon VALUES ('full flower', 16, true, 'full flower', 6);
INSERT INTO public.moon VALUES ('half flower', 17, true, 'half flower', 12);
INSERT INTO public.moon VALUES ('flower', 18, true, 'flower', 13);
INSERT INTO public.moon VALUES ('full pod', 19, true, 'full pod', 6);
INSERT INTO public.moon VALUES ('half pod', 20, true, 'half pod', 7);
INSERT INTO public.moon VALUES ('pod', 21, true, 'pod', 4);
INSERT INTO public.moon VALUES ('full podcast', 22, true, 'full podcast', 5);
INSERT INTO public.moon VALUES ('half podcast', 23, true, 'half podcast', 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('ocean', 1, true, 'ocean', 2);
INSERT INTO public.planet VALUES ('lava', 2, true, 'lava', 1);
INSERT INTO public.planet VALUES ('proto', 3, true, 'proto', 4);
INSERT INTO public.planet VALUES ('puffy', 4, true, 'puffy', 3);
INSERT INTO public.planet VALUES ('ice', 5, true, 'ice', 6);
INSERT INTO public.planet VALUES ('helium', 6, true, 'helium', 5);
INSERT INTO public.planet VALUES ('dwarf', 7, true, 'dwarf', 6);
INSERT INTO public.planet VALUES ('gas', 8, true, 'gas', 5);
INSERT INTO public.planet VALUES ('coreless', 11, true, 'coreless', 4);
INSERT INTO public.planet VALUES ('mass', 12, true, 'mass', 3);
INSERT INTO public.planet VALUES ('core', 13, true, 'core', 3);
INSERT INTO public.planet VALUES ('class', 14, true, 'class', 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('beta', 1, true, 'beta', 1);
INSERT INTO public.star VALUES ('alpha', 2, true, 'alpha', 5);
INSERT INTO public.star VALUES ('gamma', 3, true, 'gamma', 4);
INSERT INTO public.star VALUES ('Astro', 4, true, 'Astro', 2);
INSERT INTO public.star VALUES ('Xi', 5, true, 'Xi', 3);
INSERT INTO public.star VALUES ('Alzir', 6, true, 'Alzir', 6);


--
-- Name: all_id_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.all_id_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: all_id all_id_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.all_id
    ADD CONSTRAINT all_id_name_key UNIQUE (name);


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
-- Name: all_id pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.all_id
    ADD CONSTRAINT pk PRIMARY KEY (all_id_id);


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
-- Name: all_id uq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.all_id
    ADD CONSTRAINT uq UNIQUE (all_id_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

