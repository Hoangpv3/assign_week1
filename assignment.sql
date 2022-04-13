--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2
-- Dumped by pg_dump version 14.2

-- Started on 2022-04-11 15:38:06

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
-- TOC entry 212 (class 1259 OID 16501)
-- Name: countries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.countries (
    country_id character(2) NOT NULL,
    region__id integer NOT NULL
);


ALTER TABLE public.countries OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 16495)
-- Name: departments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.departments (
    department_id integer NOT NULL,
    department_name character varying(30) NOT NULL,
    manager_id integer NOT NULL,
    location_id integer NOT NULL
);


ALTER TABLE public.departments OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 16504)
-- Name: employees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employees (
    employee_id integer NOT NULL,
    first_name character varying(20) NOT NULL,
    last_name character varying(25) NOT NULL,
    email character varying(25) NOT NULL,
    phone_number character varying(20) NOT NULL,
    hire_date date NOT NULL,
    job_id character varying(10) NOT NULL,
    salary integer NOT NULL,
    commission_pct integer NOT NULL,
    manager_id integer NOT NULL,
    department_id integer NOT NULL
);


ALTER TABLE public.employees OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16513)
-- Name: job_grades; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.job_grades (
    grade_level character varying(2) NOT NULL,
    lowest_sal integer NOT NULL,
    highest_sal integer NOT NULL
);


ALTER TABLE public.job_grades OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 16498)
-- Name: job_history; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.job_history (
    employee_id integer NOT NULL,
    start_date date NOT NULL,
    end_date date NOT NULL,
    job_id character varying(10) NOT NULL,
    department_id integer NOT NULL
);


ALTER TABLE public.job_history OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16510)
-- Name: jobs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jobs (
    job_id character varying(10) NOT NULL,
    job_title character varying(35) NOT NULL,
    min_salary integer NOT NULL,
    max_salary integer NOT NULL
);


ALTER TABLE public.jobs OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16507)
-- Name: locations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.locations (
    location_id integer NOT NULL,
    street_address character varying(25) NOT NULL,
    postal_code character varying(12) NOT NULL,
    city character varying(30) NOT NULL,
    state_province character varying(12) NOT NULL,
    country_id character(2) NOT NULL
);


ALTER TABLE public.locations OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 16492)
-- Name: regions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.regions (
    region_id integer NOT NULL,
    region_name character varying(25) NOT NULL
);


ALTER TABLE public.regions OWNER TO postgres;

-- Completed on 2022-04-11 15:38:06

--
-- PostgreSQL database dump complete
--

