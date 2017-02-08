--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.5
-- Dumped by pg_dump version 9.5.5

-- Started on 2017-02-06 22:58:48

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = transaction, pg_catalog;

--
-- TOC entry 4211 (class 0 OID 201321)
-- Dependencies: 253
-- Data for Name: transaction; Type: TABLE DATA; Schema: transaction; Owner: postgres
--

INSERT INTO transaction VALUES ('dbe69d38-24ec-457b-9080-22af1404dbaa', NULL, 'approved', NULL, false, true, 'b2f089b8-3303-4e5a-b488-c13e95e9a684', 2, 'u', 'test', '2017-02-06 22:06:32.521754');
INSERT INTO transaction VALUES ('b2a367ff-0f9b-4ee3-aac8-a7b9b1a88a97', NULL, 'approved', NULL, false, true, 'de4b0f4b-c88a-4ce3-a470-4e19620b2b34', 2, 'u', 'test', '2017-02-06 22:10:19.492083');
INSERT INTO transaction VALUES ('dd5ba61e-4241-490f-ab70-ab2265c15da2', NULL, 'approved', NULL, false, true, '926177af-061e-4afc-960b-2c33dfaea8c8', 2, 'u', 'test', '2017-02-06 22:12:53.863942');
INSERT INTO transaction VALUES ('50b99339-451b-4f2d-aa19-ece08a21ba46', NULL, 'pending', NULL, false, true, 'bd454840-7e05-4bc1-97b4-164b5c995b5b', 1, 'i', 'test', '2017-02-06 22:29:58.741344');


-- Completed on 2017-02-06 22:58:48

--
-- PostgreSQL database dump complete
--

