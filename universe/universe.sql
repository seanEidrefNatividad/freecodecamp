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
-- Name: universe; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO postgres;

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    age integer NOT NULL,
    distance integer NOT NULL,
    mass numeric(5,2),
    survivable boolean,
    explored boolean,
    description text
);


ALTER TABLE public.galaxy OWNER TO postgres;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO postgres;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    age integer NOT NULL,
    distance integer NOT NULL,
    mass numeric(5,2),
    survivable boolean,
    explored boolean,
    description text,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO postgres;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO postgres;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: nebula; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.nebula (
    nebula_id integer NOT NULL,
    name character varying(30),
    age integer NOT NULL,
    distance integer NOT NULL,
    mass numeric(5,2),
    survivable boolean,
    explored boolean,
    description text
);


ALTER TABLE public.nebula OWNER TO postgres;

--
-- Name: nebula_nebula_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.nebula_nebula_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nebula_nebula_id_seq OWNER TO postgres;

--
-- Name: nebula_nebula_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.nebula_nebula_id_seq OWNED BY public.nebula.nebula_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    age integer NOT NULL,
    distance integer NOT NULL,
    mass numeric(5,2),
    survivable boolean,
    explored boolean,
    description text,
    star_id integer
);


ALTER TABLE public.planet OWNER TO postgres;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO postgres;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    age integer NOT NULL,
    distance integer NOT NULL,
    mass numeric(5,2),
    survivable boolean,
    explored boolean,
    description text,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO postgres;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO postgres;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: nebula nebula_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nebula ALTER COLUMN nebula_id SET DEFAULT nextval('public.nebula_nebula_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13, 25000, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 10, 2, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Messier 81', 13, 11, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Large Magellanic Cloud', 1, 158200, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Small Magellanic Cloud', 6, 199000, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Triangulum', 0, 2, NULL, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.moon VALUES (1, 'moon', 4, 1, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (2, 'Europa', 4, 1, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (3, 'Titan', 4, 1, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (4, 'Io', 4, 1, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (5, 'Ganymede', 4, 1, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (6, 'Callisto', 4, 1, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (7, 'Amalthea', 4, 1, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (8, 'Adrastea', 4, 1, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (9, 'Valetudo', 4, 1, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (10, 'Himalia', 4, 1, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (11, 'Thebe', 4, 1, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (12, 'Jupiter LXI', 4, 1, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (13, 'Carme', 4, 1, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (14, 'Elara', 4, 1, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (15, 'Lysithea', 4, 1, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (16, 'Euporie', 4, 1, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (17, 'Kallichore', 4, 1, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (18, 'Autonoe', 4, 1, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (19, 'Jupiter LXIII', 4, 1, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (20, 'Cyllene', 4, 1, NULL, NULL, NULL, NULL, 4);


--
-- Data for Name: nebula; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.nebula VALUES (1, 'Helix Nebula', 10610, 700, NULL, NULL, NULL, NULL);
INSERT INTO public.nebula VALUES (2, 'Alpha Centauri', 4, 4, NULL, NULL, NULL, NULL);
INSERT INTO public.nebula VALUES (3, 'Eagle Nebula', 5, 7000, NULL, NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.planet VALUES (1, 'earth', 4, 0, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'Mercury', 4, 1, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (3, 'Mars', 4, 1, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (4, 'Jupiter', 4, 1, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (5, 'Venus', 4, 1, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 4, 1, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 4, 1, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 4, 1, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (9, 'Kepler-186f', 4, 557, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (10, '55 Cancri e', 8, 40, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, '51 Pegasi b', 7, 50, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'Kepler-452b', 6, 1402, NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.star VALUES (1, 'Sun', 4, 1, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (2, 'Betelgeuse', 10, 642, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (3, 'Sirius', 230, 8, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (4, 'Antares', 11, 554, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (5, 'UY Scuti', 0, 5219, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (6, 'VY Canis Majoris', 8, 4892, NULL, NULL, NULL, NULL, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: nebula_nebula_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.nebula_nebula_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: nebula nebula_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nebula
    ADD CONSTRAINT nebula_name_key UNIQUE (name);


--
-- Name: nebula nebula_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nebula
    ADD CONSTRAINT nebula_pkey PRIMARY KEY (nebula_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--
