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
    name character varying(30),
    year_luz_dist integer,
    tipo_galaxia_id integer NOT NULL,
    year_desc integer
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
    name character varying(30),
    planet_id integer NOT NULL,
    descubridor character varying(30),
    distancia_km integer,
    orbita_dias real
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moonn_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moonn_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moonn_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moonn_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moonn_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    diametro_km integer,
    masa numeric(12,4),
    periodo_orbital real,
    periodo_rotacion numeric(12,4),
    satelite integer,
    star_id integer NOT NULL,
    anillos boolean
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
    name character varying(30),
    galaxy_id integer NOT NULL,
    tipo character varying(30),
    distancia integer,
    conocida boolean
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
-- Name: tipo_galaxia; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.tipo_galaxia (
    tipo_galaxia_id integer NOT NULL,
    name character varying(30),
    descripcion text,
    ni_idea boolean NOT NULL
);


ALTER TABLE public.tipo_galaxia OWNER TO freecodecamp;

--
-- Name: tipo_galaxia_tipo_galaxia_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.tipo_galaxia_tipo_galaxia_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tipo_galaxia_tipo_galaxia_id_seq OWNER TO freecodecamp;

--
-- Name: tipo_galaxia_tipo_galaxia_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.tipo_galaxia_tipo_galaxia_id_seq OWNED BY public.tipo_galaxia.tipo_galaxia_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moonn_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: tipo_galaxia tipo_galaxia_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.tipo_galaxia ALTER COLUMN tipo_galaxia_id SET DEFAULT nextval('public.tipo_galaxia_tipo_galaxia_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Vía Lactea', 0, 1, 1500);
INSERT INTO public.galaxy VALUES (2, 'Wolf-Lundmark-Melotte', 3000000, 2, 1909);
INSERT INTO public.galaxy VALUES (3, 'Andromeda(M31)', 2200000, 1, 1924);
INSERT INTO public.galaxy VALUES (4, 'Enana de Fornax', 460000, 3, 1938);
INSERT INTO public.galaxy VALUES (5, 'El Fogón', 400000, 1, 1654);
INSERT INTO public.galaxy VALUES (6, 'Nube de Magallanes', 75000, 2, 1520);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Mimas', 6, 'W. Herschel', 185520, 0.942);
INSERT INTO public.moon VALUES (2, 'Ariel', 7, 'W. Lassell', 191420, 2.52);
INSERT INTO public.moon VALUES (3, 'Calisto', 5, 'Galileo', 1883000, 16.689);
INSERT INTO public.moon VALUES (4, 'Charon', 9, 'J. Christy', 19571, 6.387);
INSERT INTO public.moon VALUES (5, 'Dione', 6, 'G. Cassini', 377400, 2.737);
INSERT INTO public.moon VALUES (6, 'Encélado', 6, 'W. Herschel', 238020, 1.37);
INSERT INTO public.moon VALUES (7, 'Europa', 5, 'Galileo', 670900, 3.551);
INSERT INTO public.moon VALUES (8, 'Ganimedes', 5, 'Galileo', 1070000, 7.155);
INSERT INTO public.moon VALUES (9, 'Ío', 5, 'Galileo', 421600, 1.769);
INSERT INTO public.moon VALUES (10, 'Jápeto', 6, 'G.Cassini', 3561300, 79.322);
INSERT INTO public.moon VALUES (11, 'Luna', 3, 'Galileo', 384400, 27.322);
INSERT INTO public.moon VALUES (12, 'Miranda', 7, 'G. Kuiper', 129780, 1.14);
INSERT INTO public.moon VALUES (13, 'Oberón', 7, 'W. Herschel', 582600, 13.463);
INSERT INTO public.moon VALUES (14, 'Rea', 6, 'G. Cassini', 527040, 4.518);
INSERT INTO public.moon VALUES (15, 'Tetís', 6, 'G. Cassini', 294660, 1.888);
INSERT INTO public.moon VALUES (16, 'Titán', 6, 'C. Huygens', 1221850, 15.945);
INSERT INTO public.moon VALUES (17, 'Titania', 7, 'W. Herschel', 435840, 8.706);
INSERT INTO public.moon VALUES (18, 'Trintón', 8, 'W. Lassell', 354800, 5.877);
INSERT INTO public.moon VALUES (19, 'Umbriel', 7, 'W. Lassell', 265970, 4.144);
INSERT INTO public.moon VALUES (20, 'Namaka', 11, 'H. A. Weaver', -39, 34.7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Urano', 51108, 14.6000, 19.19, 87.0100, 27, 1, false);
INSERT INTO public.planet VALUES (2, 'Nepturno', 49538, 17.2000, 30.06, 164.7600, 14, 1, false);
INSERT INTO public.planet VALUES (3, 'Ceres', 952, 0.0003, 4.599, 0.3781, 0, 1, false);
INSERT INTO public.planet VALUES (4, 'Plúton', 2370, 0.0021, 247.92, -6.3872, 5, 1, false);
INSERT INTO public.planet VALUES (5, 'Haumea', 1600, 0.0007, 285.4, 0.1670, 2, 1, false);
INSERT INTO public.planet VALUES (6, 'Makemake', 1480, 0.0007, 309.9, 0.9375, 1, 1, false);
INSERT INTO public.planet VALUES (7, 'Mercurio', 4878, 0.0600, 0.24, 58.6667, 0, 1, false);
INSERT INTO public.planet VALUES (8, 'Venús', 12100, 0.8200, 0.615, 243.0000, 0, 1, false);
INSERT INTO public.planet VALUES (9, 'Tierra', 12756, 1.0000, 1, 1.0000, 1, 1, false);
INSERT INTO public.planet VALUES (10, 'Marte', 6787, 0.1100, 1.88, 1.0300, 2, 1, false);
INSERT INTO public.planet VALUES (11, 'Júpiter', 142984, 318.0000, 5.2, 11.8600, 79, 1, false);
INSERT INTO public.planet VALUES (12, 'Saturno', 120536, 95.0000, 9.54, 29.4600, 82, 1, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sol', 1, 'Espectral G2', 149600000, true);
INSERT INTO public.star VALUES (2, 'zasaz', 2, 'avada', 36251, false);
INSERT INTO public.star VALUES (3, 'zaxsc', 5, 'quedabra', 78945, true);
INSERT INTO public.star VALUES (4, 'qaswd', 3, 'F16', 12345, false);
INSERT INTO public.star VALUES (5, 'qwerty', 4, 'A11', 123200, true);
INSERT INTO public.star VALUES (6, 'ABC-14', 6, 'asdf', 10, true);
INSERT INTO public.star VALUES (7, 'acbd-14', 1, 'G16', 200000, false);


--
-- Data for Name: tipo_galaxia; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.tipo_galaxia VALUES (1, 'Espiral', 'Tiene forma de espiral AHRE', true);
INSERT INTO public.tipo_galaxia VALUES (2, 'Irregular', 'No tiene forma', false);
INSERT INTO public.tipo_galaxia VALUES (3, 'Eliptica', 'Varian entre formas redondas y alargadas', true);
INSERT INTO public.tipo_galaxia VALUES (4, 'Quasares', 'Formas raras pero lindas', false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moonn_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moonn_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: tipo_galaxia_tipo_galaxia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.tipo_galaxia_tipo_galaxia_id_seq', 4, true);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moonn_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moonn_id_key UNIQUE (moon_id);


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
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: tipo_galaxia tipo_galaxia_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.tipo_galaxia
    ADD CONSTRAINT tipo_galaxia_pkey PRIMARY KEY (tipo_galaxia_id);


--
-- Name: tipo_galaxia tipo_galaxia_tipo_galaxia_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.tipo_galaxia
    ADD CONSTRAINT tipo_galaxia_tipo_galaxia_id_key UNIQUE (tipo_galaxia_id);


--
-- Name: galaxy galaxy_tipo_galaxia_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_tipo_galaxia_id_fkey FOREIGN KEY (tipo_galaxia_id) REFERENCES public.tipo_galaxia(tipo_galaxia_id);


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

