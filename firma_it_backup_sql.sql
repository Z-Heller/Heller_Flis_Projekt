--
-- PostgreSQL database dump
--

-- Dumped from database version 14.0
-- Dumped by pg_dump version 14.0

-- Started on 2022-02-05 19:31:19

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
-- TOC entry 212 (class 1259 OID 16708)
-- Name: oddzial; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.oddzial (
    id_oddzialu integer NOT NULL,
    miejscowosc character varying(35) NOT NULL
);


ALTER TABLE public.oddzial OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 16707)
-- Name: oddzial_id_oddzialu_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.oddzial_id_oddzialu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.oddzial_id_oddzialu_seq OWNER TO postgres;

--
-- TOC entry 3336 (class 0 OID 0)
-- Dependencies: 211
-- Name: oddzial_id_oddzialu_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.oddzial_id_oddzialu_seq OWNED BY public.oddzial.id_oddzialu;


--
-- TOC entry 214 (class 1259 OID 16749)
-- Name: pracownik; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pracownik (
    id_pracownika integer NOT NULL,
    imie character varying(20) NOT NULL,
    nazwisko character varying(20) NOT NULL,
    id_stanowiska integer NOT NULL,
    id_oddzialu integer NOT NULL,
    id_przelozonego integer,
    data_zatrudnienia date NOT NULL
);


ALTER TABLE public.pracownik OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 16748)
-- Name: pracownik_id_pracownika_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pracownik_id_pracownika_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pracownik_id_pracownika_seq OWNER TO postgres;

--
-- TOC entry 3337 (class 0 OID 0)
-- Dependencies: 213
-- Name: pracownik_id_pracownika_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pracownik_id_pracownika_seq OWNED BY public.pracownik.id_pracownika;


--
-- TOC entry 210 (class 1259 OID 16701)
-- Name: stanowisko; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stanowisko (
    id_stanowiska integer NOT NULL,
    nazwa_stanowiska character varying(35) NOT NULL,
    pensja integer NOT NULL
);


ALTER TABLE public.stanowisko OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 16700)
-- Name: stanowisko_id_stanowiska_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.stanowisko_id_stanowiska_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stanowisko_id_stanowiska_seq OWNER TO postgres;

--
-- TOC entry 3338 (class 0 OID 0)
-- Dependencies: 209
-- Name: stanowisko_id_stanowiska_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.stanowisko_id_stanowiska_seq OWNED BY public.stanowisko.id_stanowiska;


--
-- TOC entry 3175 (class 2604 OID 16711)
-- Name: oddzial id_oddzialu; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.oddzial ALTER COLUMN id_oddzialu SET DEFAULT nextval('public.oddzial_id_oddzialu_seq'::regclass);


--
-- TOC entry 3176 (class 2604 OID 16752)
-- Name: pracownik id_pracownika; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pracownik ALTER COLUMN id_pracownika SET DEFAULT nextval('public.pracownik_id_pracownika_seq'::regclass);


--
-- TOC entry 3174 (class 2604 OID 16704)
-- Name: stanowisko id_stanowiska; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stanowisko ALTER COLUMN id_stanowiska SET DEFAULT nextval('public.stanowisko_id_stanowiska_seq'::regclass);


--
-- TOC entry 3328 (class 0 OID 16708)
-- Dependencies: 212
-- Data for Name: oddzial; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.oddzial (id_oddzialu, miejscowosc) FROM stdin;
1	Rzeszów
2	Warszawa
3	Szczecin
4	Lublin
5	Gdansk
6	Kielce
7	Wrocław
\.


--
-- TOC entry 3330 (class 0 OID 16749)
-- Dependencies: 214
-- Data for Name: pracownik; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pracownik (id_pracownika, imie, nazwisko, id_stanowiska, id_oddzialu, id_przelozonego, data_zatrudnienia) FROM stdin;
1	Julianna	Czarnecka	1	1	\N	2005-08-01
2	Otylia	Zielińska	6	3	14	2017-11-28
3	Julian	Gajewski	6	5	26	2010-11-30
4	Miłosz	Rutkowski	4	1	1	2007-01-03
5	Alfred	Kowalski	3	4	20	2019-09-23
6	Jowita	Jankowska	3	5	26	2007-10-08
7	Konstancja	Wiśniewska	2	4	20	2018-10-10
8	Remigiusz	Szewczyk	1	2	\N	2008-07-24
9	Grzegorz	Kowalski	2	5	26	2007-03-19
10	Michał	Nowak	4	3	14	2014-03-31
11	Maciej	Szewczyk	5	6	32	2013-11-28
12	Piotr	Wójcik	4	5	26	2007-12-12
13	Anastazja	Krupa	3	1	1	2006-02-16
14	Jagoda	Przybylska	1	3	\N	2011-11-07
15	Dorota	Szymańska	6	2	8	2011-10-10
16	Kamil	Szymański	2	6	32	2012-03-28
17	Andrzej	Sokołowski	2	3	14	2012-04-19
18	Kewin	Zalewski	4	4	20	2020-02-14
19	Edyta	Jakubowska	5	5	26	2009-08-13
20	Dawid	Andrzejewski	1	4	\N	2018-08-28
21	Irena	Nowak	6	6	32	2015-03-20
22	Jarosław	Bąk	3	7	38	2015-11-20
23	Anastazja	Wojciechowska	5	2	8	2011-06-10
24	Kamila	Sikorska	5	1	1	2008-03-04
25	Arkadiusz	Nowak	5	7	38	2016-04-07
26	Eleonora	Wasilewska	1	5	\N	2006-08-15
27	Natasza	Jasińska	3	3	14	2013-04-01
28	Adrianna	Szulc	4	7	38	2016-03-31
29	Jakub	Witkowski	4	2	8	2011-05-30
30	Gabriela	Kozłowska	2	2	8	2009-02-03
31	Andrzej	Chmielewski	6	4	20	2005-03-08
32	Anna	Kowalska	1	6	\N	2011-02-22
33	Anita	Mazurek	5	4	20	2005-03-02
34	Anita	Kowalczyk	3	2	8	2010-04-16
35	Eugeniusz	Brzeziński	5	3	14	2017-04-10
36	Jacek	Borkowski	4	6	32	2013-09-23
37	Beata	Chmielewska	2	1	1	2005-09-02
38	Aureliusz	Pawlak	1	7	\N	2015-03-26
39	Jędrzej	Kwiatkowski	6	1	1	2007-04-26
40	Kazimierz	Baran	3	6	32	2012-04-20
41	Bogumił	Michalak	5	1	1	2007-02-19
42	Anna	Pietrzak	6	7	38	2016-04-18
43	Elżbieta	Baran	2	7	38	2015-07-27
\.


--
-- TOC entry 3326 (class 0 OID 16701)
-- Dependencies: 210
-- Data for Name: stanowisko; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stanowisko (id_stanowiska, nazwa_stanowiska, pensja) FROM stdin;
1	Project Manager	6500
2	Analityk biznesowy	7600
3	UI/UX Designer	5800
4	Architekt systemu	8000
5	Programista	7500
6	Tester	6200
\.


--
-- TOC entry 3339 (class 0 OID 0)
-- Dependencies: 211
-- Name: oddzial_id_oddzialu_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.oddzial_id_oddzialu_seq', 7, true);


--
-- TOC entry 3340 (class 0 OID 0)
-- Dependencies: 213
-- Name: pracownik_id_pracownika_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pracownik_id_pracownika_seq', 43, true);


--
-- TOC entry 3341 (class 0 OID 0)
-- Dependencies: 209
-- Name: stanowisko_id_stanowiska_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stanowisko_id_stanowiska_seq', 6, true);


--
-- TOC entry 3180 (class 2606 OID 16713)
-- Name: oddzial oddzial_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.oddzial
    ADD CONSTRAINT oddzial_pkey PRIMARY KEY (id_oddzialu);


--
-- TOC entry 3182 (class 2606 OID 16754)
-- Name: pracownik pracownik_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pracownik
    ADD CONSTRAINT pracownik_pkey PRIMARY KEY (id_pracownika);


--
-- TOC entry 3178 (class 2606 OID 16706)
-- Name: stanowisko stanowisko_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stanowisko
    ADD CONSTRAINT stanowisko_pkey PRIMARY KEY (id_stanowiska);


--
-- TOC entry 3185 (class 2606 OID 16765)
-- Name: pracownik pracownik_id_dzialu_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pracownik
    ADD CONSTRAINT pracownik_id_dzialu_fkey FOREIGN KEY (id_oddzialu) REFERENCES public.oddzial(id_oddzialu);


--
-- TOC entry 3184 (class 2606 OID 16760)
-- Name: pracownik pracownik_id_przelozonego_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pracownik
    ADD CONSTRAINT pracownik_id_przelozonego_fkey FOREIGN KEY (id_przelozonego) REFERENCES public.pracownik(id_pracownika);


--
-- TOC entry 3183 (class 2606 OID 16755)
-- Name: pracownik pracownik_id_stanowiska_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pracownik
    ADD CONSTRAINT pracownik_id_stanowiska_fkey FOREIGN KEY (id_stanowiska) REFERENCES public.stanowisko(id_stanowiska);


-- Completed on 2022-02-05 19:31:20

--
-- PostgreSQL database dump complete
--

