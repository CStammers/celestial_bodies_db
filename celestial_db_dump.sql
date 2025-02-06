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
-- Name: animal; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.animal (
    animal_id integer NOT NULL,
    name character varying(30) NOT NULL,
    species text NOT NULL
);


ALTER TABLE public.animal OWNER TO freecodecamp;

--
-- Name: animal_animal_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.animal_animal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.animal_animal_id_seq OWNER TO freecodecamp;

--
-- Name: animal_animal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.animal_animal_id_seq OWNED BY public.animal.animal_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer NOT NULL,
    distance_from_earth_in_light_years integer,
    any_people boolean
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
    name character varying(30) NOT NULL,
    age integer NOT NULL,
    distance_from_earth_in_light_years integer,
    is_sphere boolean,
    temperature_celsius numeric(20,2),
    is_habitable boolean,
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
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer NOT NULL,
    distance_from_earth_in_light_years integer,
    is_sphere boolean,
    temperature_celsius numeric(20,2),
    is_habitable boolean,
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
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer NOT NULL,
    distance_from_earth_in_light_years integer,
    is_sphere boolean,
    temperature_celsius numeric(20,2),
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
-- Name: animal animal_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.animal ALTER COLUMN animal_id SET DEFAULT nextval('public.animal_animal_id_seq'::regclass);


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
-- Data for Name: animal; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.animal VALUES (1, 'cat', 'felidae');
INSERT INTO public.animal VALUES (2, 'tiger', 'felidae');
INSERT INTO public.animal VALUES (3, 'dog', 'canidae');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 38000, 0, true);
INSERT INTO public.galaxy VALUES (2, 'Dairy Milk', 500000000, 5000, false);
INSERT INTO public.galaxy VALUES (3, 'Creme Egg', 2000000000, 10000, false);
INSERT INTO public.galaxy VALUES (4, 'La La Land', 8000, 500, true);
INSERT INTO public.galaxy VALUES (5, 'Curly Wurly', 1000000, 90000, false);
INSERT INTO public.galaxy VALUES (6, 'M and M', 750000, 2500, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon A', 300, 10, true, -50.75, false, 1);
INSERT INTO public.moon VALUES (2, 'Moon B', 500, 25, true, -35.50, true, 2);
INSERT INTO public.moon VALUES (3, 'Moon C', 800, 40, false, -20.00, true, 3);
INSERT INTO public.moon VALUES (4, 'Moon D', 600, 15, true, -70.10, false, 4);
INSERT INTO public.moon VALUES (5, 'Moon E', 1200, 30, true, -60.25, true, 5);
INSERT INTO public.moon VALUES (6, 'Moon F', 150, 5, true, -80.00, false, 6);
INSERT INTO public.moon VALUES (7, 'Moon G', 900, 100, true, -45.60, true, 7);
INSERT INTO public.moon VALUES (8, 'Moon H', 1100, 60, true, -10.30, true, 8);
INSERT INTO public.moon VALUES (9, 'Moon I', 200, 120, true, -15.75, false, 9);
INSERT INTO public.moon VALUES (10, 'Moon J', 700, 80, true, -30.25, false, 10);
INSERT INTO public.moon VALUES (11, 'Moon K', 1500, 50, true, -55.40, true, 11);
INSERT INTO public.moon VALUES (12, 'Moon L', 400, 110, false, -65.10, false, 12);
INSERT INTO public.moon VALUES (13, 'Moon M', 1300, 90, true, -25.30, true, 1);
INSERT INTO public.moon VALUES (14, 'Moon N', 600, 75, true, -40.75, false, 2);
INSERT INTO public.moon VALUES (15, 'Moon O', 1000, 20, true, -85.00, false, 3);
INSERT INTO public.moon VALUES (16, 'Moon P', 700, 150, false, -20.60, true, 4);
INSERT INTO public.moon VALUES (17, 'Moon Q', 800, 55, true, -10.10, true, 5);
INSERT INTO public.moon VALUES (18, 'Moon R', 950, 65, true, -30.15, false, 6);
INSERT INTO public.moon VALUES (19, 'Moon S', 400, 80, true, -60.50, true, 7);
INSERT INTO public.moon VALUES (20, 'Moon T', 1100, 130, true, -50.20, false, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Planet A', 500, 10, true, 25.50, true, 1);
INSERT INTO public.planet VALUES (2, 'Planet B', 300, 20, true, 15.40, false, 2);
INSERT INTO public.planet VALUES (3, 'Planet C', 1200, 5, true, -10.30, true, 3);
INSERT INTO public.planet VALUES (4, 'Planet D', 800, 30, false, 40.00, false, 4);
INSERT INTO public.planet VALUES (5, 'Planet E', 100, 50, true, 18.25, true, 5);
INSERT INTO public.planet VALUES (6, 'Planet F', 1500, 100, true, -35.75, false, 6);
INSERT INTO public.planet VALUES (7, 'Planet G', 2000, 75, true, 22.60, true, 1);
INSERT INTO public.planet VALUES (8, 'Planet H', 400, 15, true, 10.00, true, 2);
INSERT INTO public.planet VALUES (9, 'Planet I', 900, 200, false, 60.10, true, 3);
INSERT INTO public.planet VALUES (10, 'Planet J', 700, 120, true, 5.00, false, 4);
INSERT INTO public.planet VALUES (11, 'Planet K', 600, 10, true, 20.40, true, 5);
INSERT INTO public.planet VALUES (12, 'Planet L', 1100, 50, true, 28.30, false, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirius', 200, 8, true, 9940.00, 1);
INSERT INTO public.star VALUES (2, 'Betelgeuse', 8000, 642, true, 3500.00, 2);
INSERT INTO public.star VALUES (3, 'Proxima Centauri', 4800, 4, true, 3042.00, 3);
INSERT INTO public.star VALUES (4, 'Vega', 455, 25, true, 9602.00, 4);
INSERT INTO public.star VALUES (5, 'Aldebaran', 6100, 65, true, 3910.00, 5);
INSERT INTO public.star VALUES (6, 'Rigel', 8600, 860, true, 12100.00, 6);


--
-- Name: animal_animal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.animal_animal_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: animal animal_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.animal
    ADD CONSTRAINT animal_pkey PRIMARY KEY (animal_id);


--
-- Name: animal animal_unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.animal
    ADD CONSTRAINT animal_unique_name UNIQUE (name);


--
-- Name: planet be_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT be_unique UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unique_name UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unique_name UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unique_name UNIQUE (name);


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

