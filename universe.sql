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
-- Name: earth; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.earth (
    earth_id integer NOT NULL,
    name character varying(30) NOT NULL,
    earth_no integer,
    earth_size_km numeric,
    earth_details text,
    earth_visited boolean
);


ALTER TABLE public.earth OWNER TO freecodecamp;

--
-- Name: earth_earth_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.earth_earth_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.earth_earth_id_seq OWNER TO freecodecamp;

--
-- Name: earth_earth_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.earth_earth_id_seq OWNED BY public.earth.earth_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_no integer,
    galaxy_size_km numeric,
    galaxy_details text,
    galaxy_visited boolean
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
    moon_no integer,
    moon_size_km numeric,
    moon_details text,
    moon_visited boolean,
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
-- Name: moon_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_planet_id_seq OWNER TO freecodecamp;

--
-- Name: moon_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_planet_id_seq OWNED BY public.moon.planet_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_no integer,
    planet_size_km numeric,
    planet_details text,
    planet_visited boolean,
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
-- Name: planet_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_star_id_seq OWNER TO freecodecamp;

--
-- Name: planet_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_star_id_seq OWNED BY public.planet.star_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_no integer,
    star_size_km numeric,
    star_details text,
    star_visited boolean,
    galaxy_id integer NOT NULL
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
-- Name: earth earth_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth ALTER COLUMN earth_id SET DEFAULT nextval('public.earth_earth_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN planet_id SET DEFAULT nextval('public.moon_planet_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN star_id SET DEFAULT nextval('public.planet_star_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Data for Name: earth; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.earth VALUES (1, 'Earth', 1, 12742, 'The only known planet with life, third from the Sun.', true);
INSERT INTO public.earth VALUES (2, 'Mars', 2, 6779, 'Known as the Red Planet, fourth from the Sun, has signs of past water.', false);
INSERT INTO public.earth VALUES (3, 'Venus', 3, 12104, 'Second planet from the Sun, similar in size to Earth but with a toxic atmosphere.', false);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 1, 100000, 'Home galaxy of the Solar System.', true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 2, 220000, 'Closest spiral galaxy to the Milky Way.', false);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 3, 60000, 'Third-largest galaxy in the Local Group.', false);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 4, 76000, 'Famous for its interacting spiral structure.', false);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 5, 49000, 'Notable for its bright nucleus and large central bulge.', false);
INSERT INTO public.galaxy VALUES (6, 'Messier 87', 6, 120000, 'Giant elliptical galaxy with a supermassive black hole.', false);
INSERT INTO public.galaxy VALUES (7, 'Large Magellanic Cloud', 7, 14000, 'Satellite galaxy of the Milky Way.', false);
INSERT INTO public.galaxy VALUES (8, 'Small Magellanic Cloud', 8, 7000, 'Dwarf galaxy orbiting the Milky Way.', false);
INSERT INTO public.galaxy VALUES (9, 'Cartwheel', 9, 150000, 'Ring galaxy shaped by a past collision.', false);
INSERT INTO public.galaxy VALUES (10, 'Butterfly Galaxy', 10, 155000, 'A stunning interacting galaxy with two distinct wings.', false);
INSERT INTO public.galaxy VALUES (11, 'IC 1101', 11, 6000000, 'One of the largest known galaxies.', false);
INSERT INTO public.galaxy VALUES (12, 'Messier 81', 12, 90000, 'A bright spiral galaxy similar to the Milky Way.', false);
INSERT INTO public.galaxy VALUES (13, 'Messier 82', 13, 37000, 'A starburst galaxy undergoing intense star formation.', false);
INSERT INTO public.galaxy VALUES (14, 'Antennae Galaxies', 14, 100000, 'Interacting galaxies in the process of merging.', false);
INSERT INTO public.galaxy VALUES (15, 'Centaurus A', 15, 60000, 'Elliptical galaxy with a massive dust lane.', false);
INSERT INTO public.galaxy VALUES (16, 'Tadpole Galaxy', 16, 280000, 'Distorted spiral galaxy with a long tidal tail.', false);
INSERT INTO public.galaxy VALUES (17, 'NGC 1300', 17, 110000, 'A barred spiral galaxy with a well-defined structure.', false);
INSERT INTO public.galaxy VALUES (18, 'NGC 6744', 18, 175000, 'A Milky Way-like spiral galaxy.', false);
INSERT INTO public.galaxy VALUES (19, 'NGC 4622', 19, 100000, 'A unique galaxy with leading spiral arms.', false);
INSERT INTO public.galaxy VALUES (20, 'NGC 1365', 20, 200000, 'A grand-design barred spiral galaxy.', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (21, 'Moon', 1, 3474, 'Earth only natural satellite.', true, 24);
INSERT INTO public.moon VALUES (22, 'Phobos', 2, 22.4, 'One of Mars moons, irregularly shaped.', false, 25);
INSERT INTO public.moon VALUES (23, 'Deimos', 3, 12.4, 'The smaller of Mars moons, also irregularly shaped.', false, 26);
INSERT INTO public.moon VALUES (24, 'Io', 4, 3643, 'Most volcanically active moon in the Solar System, orbits Jupiter.', false, 27);
INSERT INTO public.moon VALUES (25, 'Europa', 5, 3121, 'A moon of Jupiter covered by a layer of ice, possibly harboring an ocean beneath.', false, 28);
INSERT INTO public.moon VALUES (26, 'Ganymede', 6, 5268, 'Largest moon in the Solar System, orbits Jupiter.', false, 29);
INSERT INTO public.moon VALUES (27, 'Callisto', 7, 4820, 'Second-largest moon of Jupiter, heavily cratered.', false, 30);
INSERT INTO public.moon VALUES (28, 'Titan', 8, 5150, 'Largest moon of Saturn, with a dense atmosphere.', false, 31);
INSERT INTO public.moon VALUES (29, 'Rhea', 9, 1528, 'A moon of Saturn, heavily cratered and covered in ice.', false, 32);
INSERT INTO public.moon VALUES (30, 'Iapetus', 10, 1469, 'Moon of Saturn with a striking color contrast between hemispheres.', false, 33);
INSERT INTO public.moon VALUES (31, 'Enceladus', 11, 504, 'Moon of Saturn with geysers that shoot water into space.', false, 34);
INSERT INTO public.moon VALUES (32, 'Mimas', 12, 396, 'Moon of Saturn, known for its large impact crater that resembles the Death Star.', false, 35);
INSERT INTO public.moon VALUES (33, 'Triton', 13, 2706, 'Largest moon of Neptune, known for its retrograde orbit and geysers.', false, 36);
INSERT INTO public.moon VALUES (34, 'Charon', 14, 1212, 'Largest moon of Pluto, almost the same size as its parent.', false, 37);
INSERT INTO public.moon VALUES (35, 'Nereid', 15, 340, 'Moon of Neptune with an eccentric orbit.', false, 38);
INSERT INTO public.moon VALUES (36, 'Haumea Moon', 16, 320, 'A small moon orbiting the dwarf planet Haumea.', false, 39);
INSERT INTO public.moon VALUES (37, 'Makemake Moon', 17, 150, 'A small moon orbiting the dwarf planet Makemake.', false, 40);
INSERT INTO public.moon VALUES (38, 'Ceres Moon', 18, 170, 'A small moon orbiting the dwarf planet Ceres.', false, 41);
INSERT INTO public.moon VALUES (39, 'GJ 1214 b Moon', 19, 1100, 'Potential moon orbiting exoplanet GJ 1214 b.', false, 42);
INSERT INTO public.moon VALUES (40, 'Kepler-22b Moon', 20, 1200, 'Potential moon orbiting exoplanet Kepler-22b.', false, 43);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (24, 'Mercury', 1, 4879, 'Smallest planet, closest to the Sun.', false, 1);
INSERT INTO public.planet VALUES (25, 'Venus', 2, 12104, 'Thick atmosphere, hottest planet.', false, 1);
INSERT INTO public.planet VALUES (26, 'Earth', 3, 12742, 'Only known planet with life.', true, 1);
INSERT INTO public.planet VALUES (27, 'Mars', 4, 6779, 'Known as the Red Planet.', true, 1);
INSERT INTO public.planet VALUES (28, 'Jupiter', 5, 139820, 'Largest planet, has a Great Red Spot.', false, 1);
INSERT INTO public.planet VALUES (29, 'Saturn', 6, 116460, 'Famous for its ring system.', false, 1);
INSERT INTO public.planet VALUES (30, 'Uranus', 7, 50724, 'Rotates on its side, bluish-green color.', false, 1);
INSERT INTO public.planet VALUES (31, 'Neptune', 8, 49244, 'Strongest winds in the Solar System.', false, 1);
INSERT INTO public.planet VALUES (32, 'Pluto', 9, 2370, 'Dwarf planet in the Kuiper Belt.', false, 1);
INSERT INTO public.planet VALUES (33, 'Kepler-442b', 10, 15000, 'A newly discovered exoplanet with a thick atmosphere.', false, 2);
INSERT INTO public.planet VALUES (34, 'Gliese 581c', 11, 18000, 'Super-Earth with potential water oceans.', false, 2);
INSERT INTO public.planet VALUES (35, 'HD 209458 b', 12, 22000, 'Gas giant with massive storms.', false, 2);
INSERT INTO public.planet VALUES (36, 'GJ 1214 b', 13, 14000, 'Ice planet with a methane-rich atmosphere.', false, 2);
INSERT INTO public.planet VALUES (37, 'WASP-12b', 14, 30000, 'Rocky exoplanet with an extreme greenhouse effect.', false, 3);
INSERT INTO public.planet VALUES (38, 'LHS 1140 b', 15, 25000, 'A planet in the habitable zone of its star.', false, 3);
INSERT INTO public.planet VALUES (39, '55 Cancri e', 16, 27000, 'A hot Jupiter orbiting very close to its star.', false, 3);
INSERT INTO public.planet VALUES (40, 'TRAPPIST-1e', 17, 20000, 'Potential exoplanet covered in ice.', false, 4);
INSERT INTO public.planet VALUES (41, 'K2-18b', 18, 19000, 'Exoplanet with a lava-covered surface.', false, 4);
INSERT INTO public.planet VALUES (42, 'TOI 700 d', 19, 16000, 'Gas dwarf with thick clouds.', false, 4);
INSERT INTO public.planet VALUES (43, 'Proxima Centauri b', 20, 23000, 'Exoplanet with an unusual elliptical orbit.', false, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 1392000, 'The star at the center of the Solar System.', true, 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 2, 2000000, 'Closest known star to the Sun.', false, 2);
INSERT INTO public.star VALUES (3, 'Sirius', 3, 2400000, 'The brightest star in the night sky.', false, 3);
INSERT INTO public.star VALUES (4, 'Alpha Centauri A', 4, 2000000, 'A component of the Alpha Centauri star system.', false, 4);
INSERT INTO public.star VALUES (5, 'Betelgeuse', 5, 950000, 'A red supergiant star in the constellation Orion.', false, 5);
INSERT INTO public.star VALUES (6, 'Rigel', 6, 870000, 'A blue supergiant star, the brightest in Orion.', false, 6);
INSERT INTO public.star VALUES (7, 'Vega', 7, 2200000, 'One of the brightest stars in the Lyra constellation.', false, 7);
INSERT INTO public.star VALUES (8, 'Antares', 8, 1300000, 'A red supergiant star in the Scorpius constellation.', false, 8);
INSERT INTO public.star VALUES (9, 'Aldebaran', 9, 650000, 'The eye of the bull in the Taurus constellation.', false, 9);
INSERT INTO public.star VALUES (10, 'Polaris', 10, 440000, 'The North Star in the Ursa Minor constellation.', false, 10);
INSERT INTO public.star VALUES (11, 'Alpha Centauri B', 11, 1800000, 'A component of the Alpha Centauri star system.', false, 11);
INSERT INTO public.star VALUES (12, 'Altair', 12, 1300000, 'The brightest star in the constellation Aquila.', false, 12);
INSERT INTO public.star VALUES (13, 'Canopus', 13, 1100000, 'The second-brightest star in the sky.', false, 13);
INSERT INTO public.star VALUES (14, 'Spica', 14, 1200000, 'The brightest star in the constellation Virgo.', false, 14);
INSERT INTO public.star VALUES (15, 'Arcturus', 15, 750000, 'A red giant star in the constellation Boötes.', false, 15);
INSERT INTO public.star VALUES (16, 'Deneb', 16, 2000000, 'The brightest star in the constellation Cygnus.', false, 16);
INSERT INTO public.star VALUES (17, 'Castor', 17, 1250000, 'A binary star system in the constellation Gemini.', false, 17);
INSERT INTO public.star VALUES (18, 'Pollux', 18, 1350000, 'The brightest star in the constellation Gemini.', false, 18);
INSERT INTO public.star VALUES (19, 'Aldebaran', 19, 700000, 'A red giant in the constellation Taurus.', false, 19);
INSERT INTO public.star VALUES (20, 'Sirius B', 20, 350000, 'A white dwarf companion to Sirius A.', false, 20);


--
-- Name: earth_earth_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.earth_earth_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 40, true);


--
-- Name: moon_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_planet_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 43, true);


--
-- Name: planet_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_star_id_seq', 2, true);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 20, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: earth earth_earth_details_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_earth_details_key UNIQUE (earth_details);


--
-- Name: earth earth_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_pkey PRIMARY KEY (earth_id);


--
-- Name: galaxy galaxy_galaxy_details_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_details_key UNIQUE (galaxy_details);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_details_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_details_key UNIQUE (moon_details);


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
-- Name: planet planet_planet_details_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_details_key UNIQUE (planet_details);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_no_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_no_key UNIQUE (star_no);


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

