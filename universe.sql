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
    name character varying(20) NOT NULL,
    earth_id integer NOT NULL,
    description text
);


ALTER TABLE public.earth OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    distance_from_earth integer,
    age_in_millions_of_years numeric,
    description text,
    has_life boolean,
    is_spherical boolean,
    galaxy_types character varying(50)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    distance_from_earth integer,
    age_in_millions_of_years numeric,
    description text,
    has_life boolean,
    is_spherical boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    distance_from_earth integer,
    age_in_millions_of_years numeric,
    description text,
    has_life boolean,
    is_spherical boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    distance_from_earth integer,
    age_in_millions_of_years numeric,
    description text,
    has_life boolean,
    is_spherical boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: earth; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.earth VALUES ('Mount Everest', 1, 'Mount Everest is the highest mountain in the world, located in the Himalayas. It has an elevation of 8,848 meters (29,029 feet) above sea level.');
INSERT INTO public.earth VALUES ('Amazon Rainforest', 2, 'The Amazon Rainforest is the largest tropical rainforest in the world, covering much of Brazil. It is known for its biodiversity and vast ecosystem.');
INSERT INTO public.earth VALUES ('Great Barrier Reef', 3, 'The Great Barrier Reef is the world''s largest coral reef system, located in the Coral Sea off the coast of Queensland, Australia. It is composed of over 2,900 individual reefs and 900 islands.');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 0, 13600, 'The Milky Way is a barred spiral galaxy containing our Solar System. It has a visible diameter of about 100,000 light-years and contains an estimated 100-400 billion stars.', true, false, 'Barred spiral galaxy');
INSERT INTO public.galaxy VALUES (2, 'Andromeda (M31)', 2537, 10000, 'Andromeda is the nearest spiral galaxy to the Milky Way and is on a collision course with it, expected to merge in about 4.5 billion years. It is roughly similar in size to the Milky Way.', false, false, 'Spiral galaxy');
INSERT INTO public.galaxy VALUES (3, 'Andromeda (M31)', 2537, 10000, 'Andromeda is the nearest spiral galaxy to the Milky Way and is on a collision course with it, expected to merge in about 4.5 billion years. It is roughly similar in size to the Milky Way.', false, false, 'Spiral galaxy');
INSERT INTO public.galaxy VALUES (4, 'Andromeda (M31)', 2537, 10000, 'Andromeda is the nearest spiral galaxy to the Milky Way and is on a collision course with it, expected to merge in about 4.5 billion years. It is roughly similar in size to the Milky Way.', false, false, 'Spiral galaxy');
INSERT INTO public.galaxy VALUES (5, 'Andromeda (M31)', 2537, 10000, 'Andromeda is the nearest spiral galaxy to the Milky Way and is on a collision course with it, expected to merge in about 4.5 billion years. It is roughly similar in size to the Milky Way.', false, false, 'Spiral galaxy');
INSERT INTO public.galaxy VALUES (6, 'Andromeda (M31)', 2537, 10000, 'Andromeda is the nearest spiral galaxy to the Milky Way and is on a collision course with it, expected to merge in about 4.5 billion years. It is roughly similar in size to the Milky Way.', false, false, 'Spiral galaxy');
INSERT INTO public.galaxy VALUES (7, 'Andromeda (M31)', 2537, 10000, 'Andromeda is the nearest spiral galaxy to the Milky Way and is on a collision course with it, expected to merge in about 4.5 billion years. It is roughly similar in size to the Milky Way.', false, false, 'Spiral galaxy');
INSERT INTO public.galaxy VALUES (8, 'Andromeda (M31)', 2537, 10000, 'Andromeda is the nearest spiral galaxy to the Milky Way and is on a collision course with it, expected to merge in about 4.5 billion years. It is roughly similar in size to the Milky Way.', false, false, 'Spiral galaxy');
INSERT INTO public.galaxy VALUES (9, 'Andromeda (M31)', 2537, 10000, 'Andromeda is the nearest spiral galaxy to the Milky Way and is on a collision course with it, expected to merge in about 4.5 billion years. It is roughly similar in size to the Milky Way.', false, false, 'Spiral galaxy');
INSERT INTO public.galaxy VALUES (10, 'Andromeda (M31)', 2537, 10000, 'Andromeda is the nearest spiral galaxy to the Milky Way and is on a collision course with it, expected to merge in about 4.5 billion years. It is roughly similar in size to the Milky Way.', false, false, 'Spiral galaxy');
INSERT INTO public.galaxy VALUES (11, 'Andromeda (M31)', 2537, 10000, 'Andromeda is the nearest spiral galaxy to the Milky Way and is on a collision course with it, expected to merge in about 4.5 billion years. It is roughly similar in size to the Milky Way.', false, false, 'Spiral galaxy');
INSERT INTO public.galaxy VALUES (12, 'Andromeda (M31)', 2537, 10000, 'Andromeda is the nearest spiral galaxy to the Milky Way and is on a collision course with it, expected to merge in about 4.5 billion years. It is roughly similar in size to the Milky Way.', false, false, 'Spiral galaxy');



--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 0, 4500, 'The Moon is Earth''s only natural satellite. It is the fifth-largest moon in the Solar System and has a significant impact on Earth''s tides.', false, true, 1);
INSERT INTO public.moon VALUES (2, 'Io', 628, 4500, 'Io is the innermost of the four Galilean moons of Jupiter. It is the most geologically active body in the Solar System with over 400 active volcanoes.', false, true, 1);
INSERT INTO public.moon VALUES (3, 'Europa', 628, 4500, 'Europa is the smallest of Jupiter''s four Galilean moons. It has a smooth, icy surface and a subsurface ocean that may harbor life.', false, true, 2);
INSERT INTO public.moon VALUES (4, 'Ganymede', 628, 4500, 'Ganymede is the largest moon in the Solar System. It has a magnetic field and is thought to have a subsurface ocean.', false, true, 2);
INSERT INTO public.moon VALUES (5, 'Callisto', 628, 4500, 'Callisto is the second-largest moon of Jupiter and the third-largest moon in the Solar System. It has a heavily cratered surface.', false, true, 3);
INSERT INTO public.moon VALUES (6, 'Titan', 1277, 4500, 'Titan is the largest moon of Saturn and the second-largest moon in the Solar System. It has a thick atmosphere and surface lakes of liquid methane and ethane.', false, true, 3);
INSERT INTO public.moon VALUES (7, 'Enceladus', 1277, 4500, 'Enceladus is a moon of Saturn known for its geysers that eject water ice and vapor. It is thought to have a subsurface ocean.', false, true, 4);
INSERT INTO public.moon VALUES (8, 'Rhea', 1277, 4500, 'Rhea is the second-largest moon of Saturn. It has a heavily cratered surface and a thin atmosphere of oxygen and carbon dioxide.', false, true, 4);
INSERT INTO public.moon VALUES (9, 'Iapetus', 1277, 4500, 'Iapetus is a moon of Saturn known for its two-tone coloration. One hemisphere is very bright, and the other is very dark.', false, true, 5);
INSERT INTO public.moon VALUES (10, 'Dione', 1277, 4500, 'Dione is a moon of Saturn with a thick icy crust. It has a significant amount of water ice on its surface.', false, true, 5);
INSERT INTO public.moon VALUES (11, 'Triton', 4354, 4500, 'Triton is the largest moon of Neptune. It has a retrograde orbit, meaning it orbits in the opposite direction of Neptune''s rotation.', false, true, 6);
INSERT INTO public.moon VALUES (12, 'Charon', 5870, 4500, 'Charon is the largest moon of the dwarf planet Pluto. It is about half the size of Pluto and may have a subsurface ocean.', false, true, 6);
INSERT INTO public.moon VALUES (13, 'Oberon', 2900, 4500, 'Oberon is the second-largest moon of Uranus. It has many large impact craters and a reddish tint on its surface.', false, true, 7);
INSERT INTO public.moon VALUES (14, 'Titania', 2900, 4500, 'Titania is the largest moon of Uranus. It has a mix of heavily cratered terrain and smooth plains.', false, true, 7);
INSERT INTO public.moon VALUES (15, 'Ariel', 2900, 4500, 'Ariel is a moon of Uranus with a surface that shows signs of extensive geological activity.', false, true, 8);
INSERT INTO public.moon VALUES (16, 'Umbriel', 2900, 4500, 'Umbriel is a moon of Uranus that has a dark surface, likely due to a layer of carbon-rich material.', false, true, 9);
INSERT INTO public.moon VALUES (17, 'Miranda', 2900, 4500, 'Miranda is the smallest of Uranus''s five major moons. It has a unique surface with large canyons and cliffs.', false, true, 9);
INSERT INTO public.moon VALUES (18, 'Mimas', 1277, 4500, 'Mimas is a moon of Saturn known for its large crater, Herschel, which gives it a resemblance to the Death Star from Star Wars.', false, true, 10);
INSERT INTO public.moon VALUES (19, 'Phoebe', 1277, 4500, 'Phoebe is an irregularly shaped moon of Saturn. It has a retrograde orbit and is thought to be a captured object from the Kuiper belt.', false, true, 11);
INSERT INTO public.moon VALUES (20, 'Deimos', 2, 4500, 'Deimos is the smaller and outermost of Mars''s two moons. It has a smooth surface covered in a thick layer of dust.', false, true, 11);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 0, 4500, 'Mercury is the closest planet to the Sun and the smallest planet in the Solar System. It has a rocky surface and no atmosphere.', false, true, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 1, 4500, 'Venus is the second planet from the Sun. It has a thick, toxic atmosphere and surface temperatures hot enough to melt lead.', false, true, 2);
INSERT INTO public.planet VALUES (3, 'Earth', 1, 4500, 'Earth is the third planet from the Sun and the only known planet to support life. It has a diverse climate and surface features.', true, true, 3);
INSERT INTO public.planet VALUES (4, 'Mars', 2, 4500, 'Mars is the fourth planet from the Sun. Known as the Red Planet, it has a thin atmosphere and surface features reminiscent of both Earth and the Moon.', false, true, 4);
INSERT INTO public.planet VALUES (5, 'Jupiter', 5, 4500, 'Jupiter is the largest planet in the Solar System. It is a gas giant with a strong magnetic field and dozens of moons.', false, true, 5);
INSERT INTO public.planet VALUES (6, 'Saturn', 10, 4500, 'Saturn is the sixth planet from the Sun, known for its extensive ring system. It is a gas giant with numerous moons.', false, true, 6);
INSERT INTO public.planet VALUES (7, 'Uranus', 19, 4500, 'Uranus is the seventh planet from the Sun. It is an ice giant with a tilted axis, causing extreme seasonal variations.', false, true, 7);
INSERT INTO public.planet VALUES (8, 'Neptune', 30, 4500, 'Neptune is the eighth and farthest known planet from the Sun. It is an ice giant with strong winds and storms.', false, true, 8);
INSERT INTO public.planet VALUES (9, 'Pluto', 39, 4500, 'Pluto is a dwarf planet in the Kuiper belt. It has a rocky core surrounded by ice and a thin atmosphere.', false, true, 9);
INSERT INTO public.planet VALUES (10, 'Kepler-22b', 620, 4000, 'Kepler-22b is an exoplanet orbiting within the habitable zone of the star Kepler-22. It is a potential candidate for supporting life.', false, true, 10);
INSERT INTO public.planet VALUES (11, 'Gliese 581g', 20, 7800, 'Gliese 581g is an exoplanet orbiting the red dwarf star Gliese 581. It is located in the star''s habitable zone and is considered a potential candidate for supporting life.', false, true, 11);
INSERT INTO public.planet VALUES (12, 'Proxima Centauri b', 4, 4850, 'Proxima Centauri b is an exoplanet orbiting the closest star to the Sun, Proxima Centauri. It is located in the star''s habitable zone and has conditions that might support life.', false, true, 12);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 0, 4600, 'The Sun is the star at the center of the Solar System. It is a nearly perfect sphere of hot plasma, with internal convective motion generating a magnetic field via a dynamo process.', true, true, 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 4, 4850, 'Proxima Centauri is the closest known star to the Sun. It is a red dwarf with a low luminosity and is part of the Alpha Centauri star system.', false, true, 2);
INSERT INTO public.star VALUES (3, 'Sirius', 9, 242, 'Sirius, also known as the Dog Star, is the brightest star in the night sky. It is a binary star system, consisting of Sirius A, a main-sequence star, and Sirius B, a faint white dwarf.', false, true, 3);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 643, 8, 'Betelgeuse is a red supergiant star in the constellation Orion. It is one of the largest and most luminous visible stars and is expected to explode as a supernova in the relatively near future (astronomically speaking).', false, true, 4);
INSERT INTO public.star VALUES (5, 'Vega', 25, 455, 'Vega is the brightest star in the constellation Lyra and the fifth-brightest star in the night sky. It is often used as a baseline for calibrating photometric brightness scales.', false, true, 5);
INSERT INTO public.star VALUES (6, 'Alpha Centauri A', 4, 4850, 'Alpha Centauri A is the primary star in the Alpha Centauri star system, the closest star system to the Solar System. It is similar in size and luminosity to the Sun.', false, true, 6);
INSERT INTO public.star VALUES (7, '', NULL, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.star VALUES (8, '', NULL, NULL, NULL, NULL, NULL, 8);
INSERT INTO public.star VALUES (9, '', NULL, NULL, NULL, NULL, NULL, 9);
INSERT INTO public.star VALUES (10, '', NULL, NULL, NULL, NULL, NULL, 10);
INSERT INTO public.star VALUES (11, '', NULL, NULL, NULL, NULL, NULL, 11);
INSERT INTO public.star VALUES (12, '', NULL, NULL, NULL, NULL, NULL, 12);


--
-- Name: earth earth_earth_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_earth_id_key UNIQUE (earth_id);


--
-- Name: earth earth_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_pkey PRIMARY KEY (earth_id);


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

