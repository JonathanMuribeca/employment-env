--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4 (Debian 12.4-1.pgdg100+1)
-- Dumped by pg_dump version 12.4 (Debian 12.4-1.pgdg100+1)

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
-- Name: departments; Type: TABLE; Schema: public; Owner: employment_db
--

CREATE TABLE public.departments (
    department_id bigint NOT NULL,
    department_name character varying(255) NOT NULL,
    manager_id integer NOT NULL
);


ALTER TABLE public.departments OWNER TO employment_db;

--
-- Name: departments_department_id_seq; Type: SEQUENCE; Schema: public; Owner: employment_db
--

CREATE SEQUENCE public.departments_department_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.departments_department_id_seq OWNER TO employment_db;

--
-- Name: departments_department_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: employment_db
--

ALTER SEQUENCE public.departments_department_id_seq OWNED BY public.departments.department_id;


--
-- Name: employees; Type: TABLE; Schema: public; Owner: employment_db
--

CREATE TABLE public.employees (
    employee_id bigint NOT NULL,
    first_name character varying(255) NOT NULL,
    last_name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    phone_number character varying(255) NOT NULL,
    hire_date date NOT NULL,
    salary numeric(8,2) NOT NULL,
    commission_pct numeric(8,2) NOT NULL,
    manager_id integer NOT NULL,
    job_id bigint NOT NULL,
    department_id bigint NOT NULL
);


ALTER TABLE public.employees OWNER TO employment_db;

--
-- Name: employees_employee_id_seq; Type: SEQUENCE; Schema: public; Owner: employment_db
--

CREATE SEQUENCE public.employees_employee_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.employees_employee_id_seq OWNER TO employment_db;

--
-- Name: employees_employee_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: employment_db
--

ALTER SEQUENCE public.employees_employee_id_seq OWNED BY public.employees.employee_id;


--
-- Name: failed_jobs; Type: TABLE; Schema: public; Owner: employment_db
--

CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.failed_jobs OWNER TO employment_db;

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: employment_db
--

CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.failed_jobs_id_seq OWNER TO employment_db;

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: employment_db
--

ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;


--
-- Name: job_history; Type: TABLE; Schema: public; Owner: employment_db
--

CREATE TABLE public.job_history (
    job_history_id bigint NOT NULL,
    start_date date NOT NULL,
    end_date date,
    employee_id bigint NOT NULL,
    job_id bigint NOT NULL,
    department_id bigint NOT NULL
);


ALTER TABLE public.job_history OWNER TO employment_db;

--
-- Name: job_history_job_history_id_seq; Type: SEQUENCE; Schema: public; Owner: employment_db
--

CREATE SEQUENCE public.job_history_job_history_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.job_history_job_history_id_seq OWNER TO employment_db;

--
-- Name: job_history_job_history_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: employment_db
--

ALTER SEQUENCE public.job_history_job_history_id_seq OWNED BY public.job_history.job_history_id;


--
-- Name: jobs; Type: TABLE; Schema: public; Owner: employment_db
--

CREATE TABLE public.jobs (
    job_id bigint NOT NULL,
    job_title character varying(255) NOT NULL,
    min_salary numeric(8,2) NOT NULL,
    max_salary numeric(8,2) NOT NULL
);


ALTER TABLE public.jobs OWNER TO employment_db;

--
-- Name: jobs_job_id_seq; Type: SEQUENCE; Schema: public; Owner: employment_db
--

CREATE SEQUENCE public.jobs_job_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.jobs_job_id_seq OWNER TO employment_db;

--
-- Name: jobs_job_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: employment_db
--

ALTER SEQUENCE public.jobs_job_id_seq OWNED BY public.jobs.job_id;


--
-- Name: migrations; Type: TABLE; Schema: public; Owner: employment_db
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);


ALTER TABLE public.migrations OWNER TO employment_db;

--
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: employment_db
--

CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.migrations_id_seq OWNER TO employment_db;

--
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: employment_db
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- Name: password_resets; Type: TABLE; Schema: public; Owner: employment_db
--

CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);


ALTER TABLE public.password_resets OWNER TO employment_db;

--
-- Name: users; Type: TABLE; Schema: public; Owner: employment_db
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.users OWNER TO employment_db;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: employment_db
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO employment_db;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: employment_db
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: departments department_id; Type: DEFAULT; Schema: public; Owner: employment_db
--

ALTER TABLE ONLY public.departments ALTER COLUMN department_id SET DEFAULT nextval('public.departments_department_id_seq'::regclass);


--
-- Name: employees employee_id; Type: DEFAULT; Schema: public; Owner: employment_db
--

ALTER TABLE ONLY public.employees ALTER COLUMN employee_id SET DEFAULT nextval('public.employees_employee_id_seq'::regclass);


--
-- Name: failed_jobs id; Type: DEFAULT; Schema: public; Owner: employment_db
--

ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);


--
-- Name: job_history job_history_id; Type: DEFAULT; Schema: public; Owner: employment_db
--

ALTER TABLE ONLY public.job_history ALTER COLUMN job_history_id SET DEFAULT nextval('public.job_history_job_history_id_seq'::regclass);


--
-- Name: jobs job_id; Type: DEFAULT; Schema: public; Owner: employment_db
--

ALTER TABLE ONLY public.jobs ALTER COLUMN job_id SET DEFAULT nextval('public.jobs_job_id_seq'::regclass);


--
-- Name: migrations id; Type: DEFAULT; Schema: public; Owner: employment_db
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: employment_db
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: departments; Type: TABLE DATA; Schema: public; Owner: employment_db
--

COPY public.departments (department_id, department_name, manager_id) FROM stdin;
1	Inovação WEB	1
3	Financeiro	945
4	Marketing	817
6	Recursos Humanos	500
\.


--
-- Data for Name: employees; Type: TABLE DATA; Schema: public; Owner: employment_db
--

COPY public.employees (employee_id, first_name, last_name, email, phone_number, hire_date, salary, commission_pct, manager_id, job_id, department_id) FROM stdin;
2	Rodrick	Dickens	Jessyca_Batz55@hotmail.com	37-806-208-9774	2021-02-08	792.85	0.15	1	6	1
3	Lesly	Runolfsdottir	Bertrand_Thiel@gmail.com	9-978-843-7161	2021-02-08	301.76	0.15	1	6	1
4	Patricia	Grady	River95@hotmail.com	73-326-673-8508	2021-02-08	840.01	0.15	1	6	1
1	Ottis	Dicki	Marjory.Gerhold@yahoo.com	16-779-273-4635	2020-10-02	164.21	0.15	1	6	1
5	Sammie	Stamm	Monserrate26@hotmail.com	9-730-896-3112	2021-02-08	693.51	0.15	1	6	1
7	Mario	Friesen	Chanelle_Carter7@yahoo.com	45-398-936-2736	2021-02-08	702.44	0.15	1	6	1
8	Pete	Quitzon	Dayton_Yundt@hotmail.com	90-806-854-8610	2021-02-08	514.38	0.15	1	6	1
9	Fatima	Kunze	Maddison.Schultz53@hotmail.com	27-447-214-6647	2021-02-08	371.17	0.15	1	6	1
\.


--
-- Data for Name: failed_jobs; Type: TABLE DATA; Schema: public; Owner: employment_db
--

COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
\.


--
-- Data for Name: job_history; Type: TABLE DATA; Schema: public; Owner: employment_db
--

COPY public.job_history (job_history_id, start_date, end_date, employee_id, job_id, department_id) FROM stdin;
2	2021-02-08	2021-02-08	1	6	1
4	2021-02-08	2021-02-08	9	6	1
5	2021-02-08	2021-02-08	9	6	1
6	2021-02-08	2021-02-08	9	6	1
7	2021-02-08	2021-02-08	3	6	1
8	2021-02-08	2021-02-08	3	6	1
9	2021-02-08	2021-02-08	3	6	1
10	2021-02-08	2021-02-08	1	7	1
11	2021-02-08	2021-02-08	1	7	1
12	2021-02-08	2021-02-08	1	7	1
13	2021-02-08	2021-02-08	1	5	1
14	2021-02-08	2021-02-08	1	5	1
15	2021-02-08	2021-02-08	1	5	1
1	2021-02-08	2021-02-08	1	7	4
\.


--
-- Data for Name: jobs; Type: TABLE DATA; Schema: public; Owner: employment_db
--

COPY public.jobs (job_id, job_title, min_salary, max_salary) FROM stdin;
6	Future Web Strategist	905.73	592.47
7	Corporate Metrics Planner	873.32	879.36
5	Central Accounts Coordinators	565.79	905.28
\.


--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: employment_db
--

COPY public.migrations (id, migration, batch) FROM stdin;
11	2014_10_12_000000_create_users_table	1
12	2014_10_12_100000_create_password_resets_table	1
13	2019_08_19_000000_create_failed_jobs_table	1
14	2021_02_07_164139_departments	1
15	2021_02_07_170827_jobs	1
16	2021_02_07_185238_employees	1
17	2021_02_07_190435_job_history	1
\.


--
-- Data for Name: password_resets; Type: TABLE DATA; Schema: public; Owner: employment_db
--

COPY public.password_resets (email, token, created_at) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: employment_db
--

COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at) FROM stdin;
\.


--
-- Name: departments_department_id_seq; Type: SEQUENCE SET; Schema: public; Owner: employment_db
--

SELECT pg_catalog.setval('public.departments_department_id_seq', 6, true);


--
-- Name: employees_employee_id_seq; Type: SEQUENCE SET; Schema: public; Owner: employment_db
--

SELECT pg_catalog.setval('public.employees_employee_id_seq', 10, true);


--
-- Name: failed_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: employment_db
--

SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);


--
-- Name: job_history_job_history_id_seq; Type: SEQUENCE SET; Schema: public; Owner: employment_db
--

SELECT pg_catalog.setval('public.job_history_job_history_id_seq', 16, true);


--
-- Name: jobs_job_id_seq; Type: SEQUENCE SET; Schema: public; Owner: employment_db
--

SELECT pg_catalog.setval('public.jobs_job_id_seq', 7, true);


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: employment_db
--

SELECT pg_catalog.setval('public.migrations_id_seq', 17, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: employment_db
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- Name: departments departments_pkey; Type: CONSTRAINT; Schema: public; Owner: employment_db
--

ALTER TABLE ONLY public.departments
    ADD CONSTRAINT departments_pkey PRIMARY KEY (department_id);


--
-- Name: employees employees_pkey; Type: CONSTRAINT; Schema: public; Owner: employment_db
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (employee_id);


--
-- Name: failed_jobs failed_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: employment_db
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);


--
-- Name: failed_jobs failed_jobs_uuid_unique; Type: CONSTRAINT; Schema: public; Owner: employment_db
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);


--
-- Name: job_history job_history_pkey; Type: CONSTRAINT; Schema: public; Owner: employment_db
--

ALTER TABLE ONLY public.job_history
    ADD CONSTRAINT job_history_pkey PRIMARY KEY (job_history_id);


--
-- Name: jobs jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: employment_db
--

ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT jobs_pkey PRIMARY KEY (job_id);


--
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: employment_db
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- Name: users users_email_unique; Type: CONSTRAINT; Schema: public; Owner: employment_db
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: employment_db
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: password_resets_email_index; Type: INDEX; Schema: public; Owner: employment_db
--

CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);


--
-- Name: employees employees_department_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: employment_db
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_department_id_foreign FOREIGN KEY (department_id) REFERENCES public.departments(department_id);


--
-- Name: employees employees_job_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: employment_db
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_job_id_foreign FOREIGN KEY (job_id) REFERENCES public.jobs(job_id);


--
-- Name: job_history job_history_department_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: employment_db
--

ALTER TABLE ONLY public.job_history
    ADD CONSTRAINT job_history_department_id_foreign FOREIGN KEY (department_id) REFERENCES public.departments(department_id);


--
-- Name: job_history job_history_employee_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: employment_db
--

ALTER TABLE ONLY public.job_history
    ADD CONSTRAINT job_history_employee_id_foreign FOREIGN KEY (employee_id) REFERENCES public.employees(employee_id);


--
-- Name: job_history job_history_job_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: employment_db
--

ALTER TABLE ONLY public.job_history
    ADD CONSTRAINT job_history_job_id_foreign FOREIGN KEY (job_id) REFERENCES public.jobs(job_id);


--
-- PostgreSQL database dump complete
--

