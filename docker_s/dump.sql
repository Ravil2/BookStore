--
-- PostgreSQL database dump
--

\restrict XEpPa0MIsM65c3b53UbmzAalk3q6SKiOLjhdchiCcRW3w5t1fwk8AaseDxZGad7

-- Dumped from database version 13.22 (Debian 13.22-1.pgdg13+1)
-- Dumped by pg_dump version 13.22 (Debian 13.22-1.pgdg13+1)

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
-- Name: authors; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.authors (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.authors OWNER TO "user";

--
-- Name: authors_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.authors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.authors_id_seq OWNER TO "user";

--
-- Name: authors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.authors_id_seq OWNED BY public.authors.id;


--
-- Name: books; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.books (
    id bigint NOT NULL,
    title character varying(255) NOT NULL,
    description text NOT NULL,
    author_id bigint NOT NULL,
    publisher_id bigint NOT NULL,
    price integer NOT NULL,
    rating numeric(2,1) DEFAULT '0'::numeric NOT NULL,
    views integer DEFAULT 0 NOT NULL,
    cover_image character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.books OWNER TO "user";

--
-- Name: books_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.books_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_id_seq OWNER TO "user";

--
-- Name: books_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.books_id_seq OWNED BY public.books.id;


--
-- Name: cache; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.cache (
    key character varying(255) NOT NULL,
    value text NOT NULL,
    expiration integer NOT NULL
);


ALTER TABLE public.cache OWNER TO "user";

--
-- Name: cache_locks; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.cache_locks (
    key character varying(255) NOT NULL,
    owner character varying(255) NOT NULL,
    expiration integer NOT NULL
);


ALTER TABLE public.cache_locks OWNER TO "user";

--
-- Name: failed_jobs; Type: TABLE; Schema: public; Owner: user
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


ALTER TABLE public.failed_jobs OWNER TO "user";

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.failed_jobs_id_seq OWNER TO "user";

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;


--
-- Name: job_batches; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.job_batches (
    id character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    total_jobs integer NOT NULL,
    pending_jobs integer NOT NULL,
    failed_jobs integer NOT NULL,
    failed_job_ids text NOT NULL,
    options text,
    cancelled_at integer,
    created_at integer NOT NULL,
    finished_at integer
);


ALTER TABLE public.job_batches OWNER TO "user";

--
-- Name: jobs; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.jobs (
    id bigint NOT NULL,
    queue character varying(255) NOT NULL,
    payload text NOT NULL,
    attempts smallint NOT NULL,
    reserved_at integer,
    available_at integer NOT NULL,
    created_at integer NOT NULL
);


ALTER TABLE public.jobs OWNER TO "user";

--
-- Name: jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.jobs_id_seq OWNER TO "user";

--
-- Name: jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.jobs_id_seq OWNED BY public.jobs.id;


--
-- Name: migrations; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);


ALTER TABLE public.migrations OWNER TO "user";

--
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.migrations_id_seq OWNER TO "user";

--
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- Name: password_reset_tokens; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.password_reset_tokens (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);


ALTER TABLE public.password_reset_tokens OWNER TO "user";

--
-- Name: publishers; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.publishers (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.publishers OWNER TO "user";

--
-- Name: publishers_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.publishers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.publishers_id_seq OWNER TO "user";

--
-- Name: publishers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.publishers_id_seq OWNED BY public.publishers.id;


--
-- Name: sessions; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.sessions (
    id character varying(255) NOT NULL,
    user_id bigint,
    ip_address character varying(45),
    user_agent text,
    payload text NOT NULL,
    last_activity integer NOT NULL
);


ALTER TABLE public.sessions OWNER TO "user";

--
-- Name: users; Type: TABLE; Schema: public; Owner: user
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


ALTER TABLE public.users OWNER TO "user";

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO "user";

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: authors id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.authors ALTER COLUMN id SET DEFAULT nextval('public.authors_id_seq'::regclass);


--
-- Name: books id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.books ALTER COLUMN id SET DEFAULT nextval('public.books_id_seq'::regclass);


--
-- Name: failed_jobs id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);


--
-- Name: jobs id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.jobs ALTER COLUMN id SET DEFAULT nextval('public.jobs_id_seq'::regclass);


--
-- Name: migrations id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- Name: publishers id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.publishers ALTER COLUMN id SET DEFAULT nextval('public.publishers_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: authors; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.authors (id, name, created_at, updated_at) FROM stdin;
1	Джордж С. Клейсон	2025-11-24 17:42:48	2025-11-24 17:42:48
2	Наполеон Хилл	2025-11-24 17:42:48	2025-11-24 17:42:48
3	Бодо Шефер	2025-11-24 17:42:48	2025-11-24 17:42:48
4	Роберт Кийосаки	2025-11-24 17:42:48	2025-11-24 17:42:48
5	Вики Робин	2025-11-24 17:42:48	2025-11-24 17:42:48
6	Ха-Джун Чанг	2025-11-24 17:42:48	2025-11-24 17:42:48
7	Рамит Сети	2025-11-24 17:42:48	2025-11-24 17:42:48
8	Анастасия Тарасова	2025-11-24 17:42:48	2025-11-24 17:42:48
9	Александр Афанасьев	2025-11-24 17:42:48	2025-11-24 17:42:48
10	Платон	2025-11-24 17:42:48	2025-11-24 17:42:48
11	Аристотель	2025-11-24 17:42:48	2025-11-24 17:42:48
12	Фридрих Ницше	2025-11-24 17:42:48	2025-11-24 17:42:48
13	Мартин Хайдеггер	2025-11-24 17:42:48	2025-11-24 17:42:48
14	Алан Уотс	2025-11-24 17:42:48	2025-11-24 17:42:48
15	Экхарт Толле	2025-11-24 17:42:48	2025-11-24 17:42:48
16	Нил Доналд Уолш	2025-11-24 17:42:48	2025-11-24 17:42:48
17	Колин Типпинг	2025-11-24 17:42:48	2025-11-24 17:42:48
18	Джордж Оруэлл	2025-11-24 17:42:48	2025-11-24 17:42:48
19	Михаил Булгаков	2025-11-24 17:42:48	2025-11-24 17:42:48
20	Фёдор Достоевский	2025-11-24 17:42:48	2025-11-24 17:42:48
21	Лев Толстой	2025-11-24 17:42:48	2025-11-24 17:42:48
22	Иван Тургенев	2025-11-24 17:42:48	2025-11-24 17:42:48
23	Михаил Лермонтов	2025-11-24 17:42:48	2025-11-24 17:42:48
24	Айн Рэнд	2025-11-24 17:42:48	2025-11-24 17:42:48
25	Антуан де Сент-Экзюпери	2025-11-24 17:42:48	2025-11-24 17:42:48
26	Пауло Коэльо	2025-11-24 17:42:48	2025-11-24 17:42:48
27	Эрнест Хемингуэй	2025-11-24 17:42:48	2025-11-24 17:42:48
28	Джон Стейнбек	2025-11-24 17:42:48	2025-11-24 17:42:48
29	Джером Д. Сэлинджер	2025-11-24 17:42:48	2025-11-24 17:42:48
30	Энтони Бёрджесс	2025-11-24 17:42:48	2025-11-24 17:42:48
31	Франц Кафка	2025-11-24 17:42:48	2025-11-24 17:42:48
32	Кэрол Дуэк	2025-11-24 17:42:48	2025-11-24 17:42:48
33	Михай Чиксентмихайи	2025-11-24 17:42:48	2025-11-24 17:42:48
34	Чарльз Дахигг	2025-11-24 17:42:48	2025-11-24 17:42:48
35	Джеймс Клир	2025-11-24 17:42:48	2025-11-24 17:42:48
36	Стивен Кови	2025-11-24 17:42:48	2025-11-24 17:42:48
37	Даниэль Канеман	2025-11-24 17:42:48	2025-11-24 17:42:48
38	Нассим Талеб	2025-11-24 17:42:48	2025-11-24 17:42:48
39	Виктор Франкл	2025-11-24 17:42:48	2025-11-24 17:42:48
40	Джозеф Мёрфи	2025-11-24 17:42:48	2025-11-24 17:42:48
41	Марк Аврелий	2025-11-24 17:42:48	2025-11-24 17:42:48
42	Питер Друкер	2025-11-24 17:42:48	2025-11-24 17:42:48
43	Феликс Деннис	2025-11-24 17:42:48	2025-11-24 17:42:48
44	Ричард Талер	2025-11-24 17:42:48	2025-11-24 17:42:48
45	Бенджамин Грэм	2025-11-24 17:42:48	2025-11-24 17:42:48
46	Адам Смит	2025-11-24 17:42:48	2025-11-24 17:42:48
47	Петер Линч	2025-11-24 17:42:48	2025-11-24 17:42:48
48	Томас Станли	2025-11-24 17:42:48	2025-11-24 17:42:48
49	Дарон Аджемоглу	2025-11-24 17:42:48	2025-11-24 17:42:48
50	Михаил Веллер	2025-11-24 17:42:48	2025-11-24 17:42:48
\.


--
-- Data for Name: books; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.books (id, title, description, author_id, publisher_id, price, rating, views, cover_image, created_at, updated_at) FROM stdin;
94	Человек в поисках смысла	Как не сломаться в тяжелые времена.	39	12	480	4.9	234	https://i0.wp.com/vitaliyeliseev.com/wp-content/uploads/2019/10/332.png?fit=1200%2C675&ssl=1	2025-11-24 17:43:04	2025-11-24 17:43:04
77	Атлант расправил плечи	Борьба сильных людей с системой.	24	1	750	4.6	31	https://alpinabook.ru/upload/iblock/a22/a229f0f8d9bec47dd63b83dae7309a1e.jpg	2025-11-24 17:43:04	2025-11-24 17:43:04
29	Атлант расправил плечи	Борьба сильных людей с системой.	24	1	750	4.6	188	https://alpinabook.ru/upload/iblock/a22/a229f0f8d9bec47dd63b83dae7309a1e.jpg	2025-11-24 17:42:48	2025-11-24 17:42:48
4	Богатый папа, бедный папа	Легендарная книга по личным финансам и инвестициям.	4	2	580	4.6	65	https://i.ytimg.com/vi/vyZRaD6dYCY/hq720.jpg?sqp=-oaymwE7CK4FEIIDSFryq4qpAy0IARUAAAAAGAElAADIQj0AgKJD8AEB-AH-CYAC0AWKAgwIABABGHIgRShnMA8=&rs=AOn4CLDadnWPYG5nwZXRPhl8YjusBdgLzQ	2025-11-24 17:42:48	2025-11-24 17:42:48
6	Как устроена экономика	Популярно об экономике и важности основ финансов.	6	1	650	4.5	56	https://s.f.kz/prod/873/872839_1000.jpg	2025-11-24 17:42:48	2025-11-24 17:42:48
31	Маленький принц	Притча о любви и настоящей дружбе.	25	6	350	4.9	166	https://simg.marwin.kz/media/catalog/product/cache/41deb699a7fea062a8915debbbb0442c/c/o/cover1__w600_12_92.jpg	2025-11-24 17:42:48	2025-11-24 17:42:48
45	Рискуя собственной шкурой	Как принимать сложные решения.	38	14	680	4.6	111	https://simg.marwin.kz/media/catalog/product/cache/8d1771fdd19ec2393e47701ba45e606d/t/a/taleb_nundefined_nundefinedund_1049864_18.png	2025-11-24 17:42:48	2025-11-24 17:42:48
83	Гроздья гнева	Борьба за справедливость.	28	10	480	4.6	21	https://s.f.kz/prod/300/299213_1000.jpg	2025-11-24 17:43:04	2025-11-24 17:43:04
32	Алхимик	Поиски мечты и смысл жизни.	26	1	380	4.6	155	https://simg.marwin.kz/media/catalog/product/f/u/fullimage_19_95.jpg	2025-11-24 17:42:48	2025-11-24 17:42:48
63	Путь Дзэн	Постижение простоты и глубины бытия.	14	20	550	4.6	236	https://i.ytimg.com/vi/WqEqPi5YmJk/mqdefault.jpg	2025-11-24 17:43:04	2025-11-24 17:43:04
16	Сила настоящего	Как жить моментом и быть настоящим.	15	5	520	4.7	64	https://cdn.litres.ru/pub/c/cover/39962380.jpg	2025-11-24 17:42:48	2025-11-24 17:42:48
33	Старик и море	О достоинстве и стойкости.	27	6	320	4.7	144	https://www.litres.ru/pub/c/cover/67248765.jpg	2025-11-24 17:42:48	2025-11-24 17:42:48
90	Атомные привычки	Как маленькие шаги меняют жизнь.	35	4	620	4.8	12	https://www.litres.ru/pub/c/cover/72482002.jpg	2025-11-24 17:43:04	2025-11-24 17:43:04
3	Путь к финансовой свободе	Пошаговое руководство по достижению финансовой независимости.	3	1	600	4.6	12	https://www.litres.ru/pub/c/cover/11279304.jpg	2025-11-24 17:42:48	2025-11-24 17:42:48
42	Атомные привычки	Как маленькие шаги меняют жизнь.	35	4	620	4.8	113	https://simg.marwin.kz/media/catalog/product/cache/41deb699a7fea062a8915debbbb0442c/6/0/klir_d_atomnye_privychki_kak_priobresti_horoshie_privychki_i_izbavitsya_ot_plohih.jpg	2025-11-24 17:42:48	2025-11-24 17:42:48
19	1984	Антиутопия о контроле, свободе и личности.	18	6	400	4.9	23	https://simg.marwin.kz/media/catalog/product/f/u/fullimage_18_123.jpg	2025-11-24 17:42:48	2025-11-24 17:42:48
27	Отцы и дети	Конфликт поколений и нигилизм.	22	6	420	4.7	2	https://simg.marwin.kz/media/catalog/product/cache/41deb699a7fea062a8915debbbb0442c/c/o/cover1_74_777.jpg	2025-11-24 17:42:48	2025-11-24 17:42:48
61	Так говорил Заратустра	О смысле жизни, воле и сверхчеловеке.	12	1	480	4.6	73	https://simg.marwin.kz/media/catalog/product/cache/8d1771fdd19ec2393e47701ba45e606d/c/o/cover1_6_101.jpg	2025-11-24 17:43:04	2025-11-24 17:43:04
34	По ком звонит колокол	Любовь на фоне войны.	27	6	520	4.6	133	https://simg.marwin.kz/media/catalog/product/cache/41deb699a7fea062a8915debbbb0442c/1/0/1036898266.jpg	2025-11-24 17:42:48	2025-11-24 17:42:48
75	Отцы и дети	Конфликт поколений и нигилизм.	22	6	420	4.7	32	https://simg.marwin.kz/media/catalog/product/cache/41deb699a7fea062a8915debbbb0442c/c/o/cover1_74_777.jpg	2025-11-24 17:43:04	2025-11-24 17:43:04
17	Беседы с Богом	Смысл жизни, свобода и ответственность.	16	5	600	4.5	42	https://cdn.litres.ru/pub/c/cover/67669143.jpg	2025-11-24 17:42:48	2025-11-24 17:42:48
15	Путь Дзэн	Постижение простоты и глубины бытия.	14	20	550	4.6	12	https://s5-page.ozstatic.by/1000/988/149/101/101149988_2.jpg	2025-11-24 17:42:48	2025-11-24 17:42:48
91	7 навыков высокоэффективных людей	Фундамент лидерства.	36	3	650	4.7	77	https://simg.marwin.kz/media/catalog/product/9/7/kovi_s_sem_navykov_vysokoeffektivnyh_lyudey_moshchnye_instrumenty_razvitiya_lichnosti_yubileynoe_izdan.jpg	2025-11-24 17:43:04	2025-11-24 17:43:04
76	Герой нашего времени	Сложная личность на фоне эпохи.	23	6	400	4.7	23	https://cdn.litres.ru/pub/c/cover/67419684.jpg	2025-11-24 17:43:04	2025-11-24 17:43:04
21	Мастер и Маргарита	О добре, зле и смысле жизни.	19	1	550	4.9	64	https://simg.marwin.kz/media/catalog/product/cache/8d1771fdd19ec2393e47701ba45e606d/c/o/cover1_38_215.jpg	2025-11-24 17:42:48	2025-11-24 17:42:48
41	Сила привычки	Как создать полезные изменения.	34	4	520	4.6	141	https://lh4.googleusercontent.com/proxy/LjC5dfBydRJPiNm7AhMjjlAMSucEweBEKWyY05obxfeWS2anKHEXUhptJiQg_jNvR2lTuZ3h3PJpk-lBPRA	2025-11-24 17:42:48	2025-11-24 17:42:48
40	Поток. Психология оптимального переживания	О счастье и эффективности в жизни.	33	3	600	4.7	115	https://static.tildacdn.com/tild6363-6235-4231-a631-353932316164/mdQChtT1.jpg	2025-11-24 17:42:48	2025-11-24 17:42:48
81	Старик и море	О достоинстве и стойкости.	27	6	320	4.7	23	https://cdn.ast.ru/v2/ASE000000000830188/COVER/cover1__w340.jpg	2025-11-24 17:43:04	2025-11-24 17:43:04
39	Гибкое сознание	Психология саморазвития.	32	4	550	4.7	116	https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhPNld5UzgyfZ3j69Vd8Ma-Aqo-3FsB_R0a7GxxIxtFkfk2Z7-nLKuVifjMScQk1STkc-uufRysqgoswSLOMTzUxKfaIjg4t0cdW5BHB4DaVF5OvcaRuCN5ZtfNxZu2FuNgiffIeLxG6A/s1600/gibsoz-big.png	2025-11-24 17:42:48	2025-11-24 17:42:48
80	Алхимик	Поиски мечты и смысл жизни.	26	1	380	4.6	24	https://simg.marwin.kz/media/catalog/product/c/o/cover1__w600_149_105.jpg	2025-11-24 17:43:04	2025-11-24 17:43:04
48	Размышления	О смысле жизни, долге и добродетели.	41	6	420	4.8	101	https://writercenter.ru/uploads/images/00/83/77/2015/04/15/avatar_blog_razmyshlenie-o-zhizni-001.jpg	2025-11-24 17:42:48	2025-11-24 17:42:48
49	Самый богатый человек в Вавилоне	Классика по финансовой грамотности и накоплению капитала.	1	1	500	4.8	100	https://www.litres.ru/pub/c/cover/69607327.jpg	2025-11-24 17:43:04	2025-11-24 17:43:04
24	Братья Карамазовы	Роман о религии, сомнении и поиске смысла.	20	1	650	4.9	25	https://cdn.ast.ru/v2/ASE000000000716852/COVER/cover1__w340.jpg	2025-11-24 17:42:48	2025-11-24 17:42:48
10	Апология Сократа	Платон о мудрости и мужестве идти за истиной.	10	6	300	4.7	71	https://simg.marwin.kz/media/catalog/product/cache/8d1771fdd19ec2393e47701ba45e606d/c/o/cover1__w600_142_668.jpg	2025-11-24 17:42:48	2025-11-24 17:42:48
26	Анна Каренина	История трагической любви.	21	6	620	4.8	0	https://alpinabook.ru/upload/resize_cache/converted/90/iblock/976/wr221v1p447gahdrfb3i0btqua3kusvq/1410_1410_1/face_AnnaKarenina.jpg.webp	2025-11-24 17:42:48	2025-11-24 17:42:48
47	Сила вашего подсознания	Психология счастья и успеха.	40	1	430	4.6	213	https://mnogoknig.com/storage/media/1040185/conversions/608190-large.webp	2025-11-24 17:42:48	2025-11-24 17:42:48
30	Источник	Архитектор против толпы.	24	1	700	4.6	177	https://alpinabook.ru/upload/iblock/caf/cafaac7f578bb258b8434bb09df9c363.jpg	2025-11-24 17:42:48	2025-11-24 17:42:48
79	Маленький принц	Притча о любви и настоящей дружбе.	25	6	350	4.9	25	https://simg.marwin.kz/media/catalog/product/cache/41deb699a7fea062a8915debbbb0442c/c/o/cover1__w600_12_92.jpg	2025-11-24 17:43:04	2025-11-24 17:43:04
12	Никомахова этика	Аристотель объясняет искусство счастья и гармонии.	11	8	550	4.7	145	https://simg.marwin.kz/media/catalog/product/c/o/aristotel_etika.jpg	2025-11-24 17:42:48	2025-11-24 17:42:48
67	1984	Антиутопия о контроле, свободе и личности.	18	6	400	4.9	52	https://simg.marwin.kz/media/catalog/product/f/u/fullimage_18_123.jpg	2025-11-24 17:43:04	2025-11-24 17:43:04
36	Над пропастью во ржи	Одиночество и искренность.	29	1	450	4.6	121	https://simg.marwin.kz/media/catalog/product/cache/8d1771fdd19ec2393e47701ba45e606d/f/u/fullimage_19_98.jpg	2025-11-24 17:42:48	2025-11-24 17:42:48
5	Кошелек или жизнь	Осознанно о деньгах, времени и ценности жизни.	5	3	590	4.7	77	https://cdn.litres.ru/pub/c/cover/12241499.jpg	2025-11-24 17:42:48	2025-11-24 17:42:48
1	Самый богатый человек в Вавилоне	Классика по финансовой грамотности и накоплению капитала.	1	1	500	4.8	25	https://www.litres.ru/pub/c/cover/69607327.jpg	2025-11-24 17:42:48	2025-11-24 17:42:48
23	Идиот	Человек вне времени и общества.	20	6	530	4.8	55	https://simg.marwin.kz/media/catalog/product/cache/8d1771fdd19ec2393e47701ba45e606d/c/o/dostoevskiy_f_m_idiot_18.jpg	2025-11-24 17:42:48	2025-11-24 17:42:48
38	Процесс	Бюрократия уничтожает личность.	31	6	410	4.4	117	https://s.f.kz/prod/537/536310_1000.jpg	2025-11-24 17:42:48	2025-11-24 17:42:48
8	Сам себе финансист	Личный бюджет, инвестиции и финансовая защита.	8	3	520	4.5	23	https://simg.marwin.kz/media/catalog/product/cache/41deb699a7fea062a8915debbbb0442c/1/0/1022332492.jpg	2025-11-24 17:42:48	2025-11-24 17:42:48
73	Война и мир	Величайшая эпопея о жизни и любви.	21	1	800	4.9	34	https://simg.marwin.kz/media/catalog/product/cache/41deb699a7fea062a8915debbbb0442c/c/o/cover1__w600_55_171.jpg	2025-11-24 17:43:04	2025-11-24 17:43:04
57	Нескучные финансы	Как эффективно управлять финансами малого бизнеса.	9	4	700	4.5	33	https://simg.marwin.kz/media/catalog/product/cache/8d1771fdd19ec2393e47701ba45e606d/6/0/afanasev_a_o_bodreyshiy_a_neskuchnye_finansy_kak_upravlyat_biznesom_na_osnove_cifr_i_ne_soyti_s.jpg	2025-11-24 17:43:04	2025-11-24 17:43:04
70	Преступление и наказание	Глубокая драма о совести и вине.	20	6	520	4.9	41	https://simg.marwin.kz/media/catalog/product/c/o/cover1__w600_135_916.jpg	2025-11-24 17:43:04	2025-11-24 17:43:04
71	Идиот	Человек вне времени и общества.	20	6	530	4.8	36	https://simg.marwin.kz/media/catalog/product/cache/8d1771fdd19ec2393e47701ba45e606d/c/o/dostoevskiy_f_m_idiot_18.jpg	2025-11-24 17:43:04	2025-11-24 17:43:04
43	7 навыков высокоэффективных людей	Фундамент лидерства.	36	3	650	4.7	112	https://simg.marwin.kz/media/catalog/product/9/7/kovi_s_sem_navykov_vysokoeffektivnyh_lyudey_moshchnye_instrumenty_razvitiya_lichnosti_yubileynoe_izdan.jpg	2025-11-24 17:42:48	2025-11-24 17:42:48
18	Радикальное прощение	О прощении себя и других.	17	5	480	4.5	55	https://m.media-amazon.com/images/I/818XihuYUJL._UF350,350_QL50_.jpg	2025-11-24 17:42:48	2025-11-24 17:42:48
35	Гроздья гнева	Борьба за справедливость.	28	10	480	4.6	122	https://s.f.kz/prod/300/299213_1000.jpg	2025-11-24 17:42:48	2025-11-24 17:42:48
86	Процесс	Бюрократия уничтожает личность.	31	6	410	4.4	15	https://m.media-amazon.com/images/I/610blisiOmL._AC_UF1000,1000_QL80_.jpg	2025-11-24 17:43:04	2025-11-24 17:43:04
52	Богатый папа, бедный папа	Легендарная книга по личным финансам и инвестициям.	4	2	580	4.6	77	https://m.media-amazon.com/images/I/71m9fX5HlkL._UF1000,1000_QL80_.jpg	2025-11-24 17:43:04	2025-11-24 17:43:04
14	Бытие и время	О подлинности и времени бытия.	13	16	900	4.3	21	https://content.img-gorod.ru/pim/products/images/76/e0/018ed71c-3d3b-714f-8dfd-2f72eb4476e0.jpg	2025-11-24 17:42:48	2025-11-24 17:42:48
82	По ком звонит колокол	Любовь на фоне войны.	27	6	520	4.6	22	https://simg.marwin.kz/media/catalog/product/cache/41deb699a7fea062a8915debbbb0442c/1/0/1036898266.jpg	2025-11-24 17:43:04	2025-11-24 17:43:04
87	Гибкое сознание	Психология саморазвития.	32	4	550	4.7	14	https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhPNld5UzgyfZ3j69Vd8Ma-Aqo-3FsB_R0a7GxxIxtFkfk2Z7-nLKuVifjMScQk1STkc-uufRysqgoswSLOMTzUxKfaIjg4t0cdW5BHB4DaVF5OvcaRuCN5ZtfNxZu2FuNgiffIeLxG6A/s1600/gibsoz-big.png	2025-11-24 17:43:04	2025-11-24 17:43:04
65	Беседы с Богом	Смысл жизни, свобода и ответственность.	16	5	600	4.5	12	https://cdn.litres.ru/pub/c/cover/39962388.jpg	2025-11-24 17:43:04	2025-11-24 17:43:04
64	Сила настоящего	Как жить моментом и быть настоящим.	15	5	520	4.7	63	https://cdn.litres.ru/pub/c/cover/39962380.jpg	2025-11-24 17:43:04	2025-11-24 17:43:04
28	Герой нашего времени	Сложная личность на фоне эпохи.	23	6	400	4.7	5	https://old.prodalit.ru/images/150000/149495.jpg	2025-11-24 17:42:48	2025-11-24 17:42:48
72	Братья Карамазовы	Роман о религии, сомнении и поиске смысла.	20	1	650	4.9	35	https://cdn.ast.ru/v2/ASE000000000716852/COVER/cover1__w340.jpg	2025-11-24 17:43:04	2025-11-24 17:43:04
88	Поток. Психология оптимального переживания	О счастье и эффективности в жизни.	33	3	600	4.7	13	https://simg.marwin.kz/media/catalog/product/cache/8d1771fdd19ec2393e47701ba45e606d/1/0/1015058127_1.jpg	2025-11-24 17:43:04	2025-11-24 17:43:04
85	Механический апельсин	Социальный эксперимент в обществе.	30	1	430	4.4	16	https://geekach.com.ua/content/images/1/341x536l99nn0/mekhanichniy-apelsin-tverda-obkladinka-21237637581003.jpg	2025-11-24 17:43:04	2025-11-24 17:43:04
2	Думай и богатей	Культовая книга по целеполаганию и развитию богатства.	2	2	550	4.7	23	https://simg.marwin.kz/media/catalog/product/cache/41deb699a7fea062a8915debbbb0442c/c/o/hill_n_dumay_i_bogatey.jpg	2025-11-24 17:42:48	2025-11-24 17:42:48
66	Радикальное прощение	О прощении себя и других.	17	5	480	4.5	62	https://cdn.litres.ru/pub/c/cover/69687280.jpg	2025-11-24 17:43:04	2025-11-24 17:43:04
59	Государство	Диалог Платона о правильном устройстве общества.	10	7	520	4.8	11	https://cdn.litres.ru/pub/c/cover/22079963.jpg	2025-11-24 17:43:04	2025-11-24 17:43:04
69	Мастер и Маргарита	О добре, зле и смысле жизни.	19	1	550	4.9	42	https://simg.marwin.kz/media/catalog/product/cache/8d1771fdd19ec2393e47701ba45e606d/c/o/cover1_38_215.jpg	2025-11-24 17:43:04	2025-11-24 17:43:04
13	Так говорил Заратустра	О смысле жизни, воле и сверхчеловеке.	12	1	480	4.6	13	https://cdn.ast.ru/v2/ASE000000000835014/COVER/cover1__w340.jpg	2025-11-24 17:42:48	2025-11-24 17:42:48
50	Думай и богатей	Культовая книга по целеполаганию и развитию богатства.	2	2	550	4.7	99	https://www.litres.ru/pub/c/cover/68640074.jpg	2025-11-24 17:43:04	2025-11-24 17:43:04
54	Как устроена экономика	Популярно об экономике и важности основ финансов.	6	1	650	4.5	44	https://flibusta.su/b/img/big/194.jpg	2025-11-24 17:43:04	2025-11-24 17:43:04
37	Механический апельсин	Социальный эксперимент в обществе.	30	1	430	4.4	118	https://geekach.com.ua/content/images/1/341x536l99nn0/mekhanichniy-apelsin-tverda-obkladinka-21237637581003.jpg	2025-11-24 17:42:48	2025-11-24 17:42:48
84	Над пропастью во ржи	Одиночество и искренность.	29	1	450	4.6	17	https://www.litres.ru/pub/c/cover/71329891.jpg	2025-11-24 17:43:04	2025-11-24 17:43:04
53	Кошелек или жизнь	Осознанно о деньгах, времени и ценности жизни.	5	3	590	4.7	66	https://www.litres.ru/pub/c/cover/12241499.jpg	2025-11-24 17:43:04	2025-11-24 17:43:04
11	Государство	Диалог Платона о правильном устройстве общества.	10	7	520	4.8	61	https://imo10.labirint.ru/books/780425/cover.jpg/242-0	2025-11-24 17:42:48	2025-11-24 17:42:48
56	Сам себе финансист	Личный бюджет, инвестиции и финансовая защита.	8	3	520	4.5	34	https://simg.marwin.kz/media/catalog/product/cache/41deb699a7fea062a8915debbbb0442c/1/0/1022332492.jpg	2025-11-24 17:43:04	2025-11-24 17:43:04
96	Размышления	О смысле жизни, долге и добродетели.	41	6	420	4.8	23	https://writercenter.ru/uploads/images/00/83/77/2016/04/14/avatar_blog_razmyshlenie-o-zhizni-003.jpg	2025-11-24 17:43:04	2025-11-24 17:43:04
7	Я научу тебя быть богатым	Управление бюджетом и простые инвестиции для всех.	7	4	620	4.6	52	https://simg.marwin.kz/media/catalog/product/cache/8d1771fdd19ec2393e47701ba45e606d/c/o/seti_r_ya_nauchu_tebya_byt_bogatym_6nedelnaya_programma_po_uvelicheniyu_blagosostoyaniya.jpg	2025-11-24 17:42:48	2025-11-24 17:42:48
9	Нескучные финансы	Как эффективно управлять финансами малого бизнеса.	9	4	700	4.5	23	https://simg.marwin.kz/media/catalog/product/cache/8d1771fdd19ec2393e47701ba45e606d/6/0/afanasev_a_o_bodreyshiy_a_neskuchnye_finansy_kak_upravlyat_biznesom_na_osnove_cifr_i_ne_soyti_s.jpg	2025-11-24 17:42:48	2025-11-24 17:42:48
25	Война и мир	Величайшая эпопея о жизни и любви.	21	1	800	4.9	1	https://simg.marwin.kz/media/catalog/product/cache/41deb699a7fea062a8915debbbb0442c/c/o/cover1__w600_55_171.jpg	2025-11-24 17:42:48	2025-11-24 17:42:48
89	Сила привычки	Как создать полезные изменения.	34	4	520	4.6	11	https://lh4.googleusercontent.com/proxy/LjC5dfBydRJPiNm7AhMjjlAMSucEweBEKWyY05obxfeWS2anKHEXUhptJiQg_jNvR2lTuZ3h3PJpk-lBPRA	2025-11-24 17:43:04	2025-11-24 17:43:04
58	Апология Сократа	Платон о мудрости и мужестве идти за истиной.	10	6	300	4.7	22	https://simg.marwin.kz/media/catalog/product/cache/8d1771fdd19ec2393e47701ba45e606d/c/o/cover1__w600_142_668.jpg	2025-11-24 17:43:04	2025-11-24 17:43:04
46	Человек в поисках смысла	Как не сломаться в тяжелые времена.	39	12	480	4.9	122	https://cdn.litres.ru/pub/c/cover_415/19196265.jpg	2025-11-24 17:42:48	2025-11-24 17:42:48
60	Никомахова этика	Аристотель объясняет искусство счастья и гармонии.	11	8	550	4.7	77	https://content.img-gorod.ru/pim/products/images/1d/3f/018f5cce-6280-734a-82fc-a17b2db41d3f.jpg	2025-11-24 17:43:04	2025-11-24 17:43:04
62	Бытие и время	О подлинности и времени бытия.	13	16	900	4.3	63	https://static.insales-cdn.com/images/products/1/7041/460979073/cover__2_.jpg	2025-11-24 17:43:04	2025-11-24 17:43:04
68	Скотный двор	Аллегория власти и революции.	18	6	350	4.8	42	https://simg.marwin.kz/media/catalog/product/c/o/cover1__w600_109_1.jpg	2025-11-24 17:43:04	2025-11-24 17:43:04
55	Я научу тебя быть богатым	Управление бюджетом и простые инвестиции для всех.	7	4	620	4.6	55	https://simg.marwin.kz/media/catalog/product/cache/8d1771fdd19ec2393e47701ba45e606d/c/o/seti_r_ya_nauchu_tebya_byt_bogatym_6nedelnaya_programma_po_uvelicheniyu_blagosostoyaniya.jpg	2025-11-24 17:43:04	2025-11-24 17:43:04
93	Рискуя собственной шкурой	Как принимать сложные решения.	38	14	680	4.6	15	https://simg.marwin.kz/media/catalog/product/cache/8d1771fdd19ec2393e47701ba45e606d/t/a/taleb_nundefined_nundefinedund_1049864_18.png	2025-11-24 17:43:04	2025-11-24 17:43:04
95	Сила вашего подсознания	Психология счастья и успеха.	40	1	430	4.6	11	https://simg.marwin.kz/media/catalog/product/cache/41deb699a7fea062a8915debbbb0442c/1/0/1010732724.jpg	2025-11-24 17:43:04	2025-11-24 17:43:04
22	Преступление и наказание	Глубокая драма о совести и вине.	20	6	520	4.9	77	https://alpinabook.ru/upload/iblock/95d/xu9yczcp7oaa5j5v2klusfske51vwwni/GkQP6ps2_cover512.webp	2025-11-24 17:42:48	2025-11-24 17:42:48
44	Думай медленно... решай быстро	Когнитивная психология для всех.	37	7	700	4.7	122	https://flibusta.su/b/img/big/118.jpg	2025-11-24 17:42:48	2025-11-24 17:42:48
20	Скотный двор	Аллегория власти и революции.	18	6	350	4.8	86	https://simg.marwin.kz/media/catalog/product/c/o/cover1__w600_109_1.jpg	2025-11-24 17:42:48	2025-11-24 17:42:48
74	Анна Каренина	История трагической любви.	21	6	620	4.8	33	https://simg.marwin.kz/media/catalog/product/cache/8d1771fdd19ec2393e47701ba45e606d/c/o/cover1__w600_55_177.jpg	2025-11-24 17:43:04	2025-11-24 17:43:04
51	Путь к финансовой свободе	Пошаговое руководство по достижению финансовой независимости.	3	1	600	4.6	88	https://www.litres.ru/pub/c/cover/11279304.jpg	2025-11-24 17:43:04	2025-11-24 17:43:04
92	Думай медленно... решай быстро	Когнитивная психология для всех.	37	7	700	4.7	16	https://cdn.litres.ru/pub/c/cover/70843111.jpg	2025-11-24 17:43:04	2025-11-24 17:43:04
78	Источник	Архитектор против толпы.	24	1	700	4.6	26	https://i.ebayimg.com/images/g/qtwAAOSwvRpnNkUa/s-l400.jpg	2025-11-24 17:43:04	2025-11-24 17:43:04
\.


--
-- Data for Name: cache; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.cache (key, value, expiration) FROM stdin;
\.


--
-- Data for Name: cache_locks; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.cache_locks (key, owner, expiration) FROM stdin;
\.


--
-- Data for Name: failed_jobs; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
\.


--
-- Data for Name: job_batches; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.job_batches (id, name, total_jobs, pending_jobs, failed_jobs, failed_job_ids, options, cancelled_at, created_at, finished_at) FROM stdin;
\.


--
-- Data for Name: jobs; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.jobs (id, queue, payload, attempts, reserved_at, available_at, created_at) FROM stdin;
\.


--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.migrations (id, migration, batch) FROM stdin;
1	0001_01_01_000000_create_users_table	1
2	0001_01_01_000001_create_cache_table	1
3	0001_01_01_000002_create_jobs_table	1
4	2025_11_24_172838_create_authors_table	1
5	2025_11_24_172908_create_publishers_table	1
6	2025_11_24_172949_create_books_table	1
\.


--
-- Data for Name: password_reset_tokens; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.password_reset_tokens (email, token, created_at) FROM stdin;
\.


--
-- Data for Name: publishers; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.publishers (id, name, created_at, updated_at) FROM stdin;
1	Эксмо	2025-11-24 17:42:48	2025-11-24 17:42:48
2	Попурри	2025-11-24 17:42:48	2025-11-24 17:42:48
3	Альпина Паблишер	2025-11-24 17:42:48	2025-11-24 17:42:48
4	Манн, Иванов и Фербер	2025-11-24 17:42:48	2025-11-24 17:42:48
5	София	2025-11-24 17:42:48	2025-11-24 17:42:48
6	Азбука	2025-11-24 17:42:48	2025-11-24 17:42:48
7	АСТ	2025-11-24 17:42:48	2025-11-24 17:42:48
8	Наука	2025-11-24 17:42:48	2025-11-24 17:42:48
9	Питер	2025-11-24 17:42:48	2025-11-24 17:42:48
10	Прайм-Еврознак	2025-11-24 17:42:48	2025-11-24 17:42:48
11	Бомбора	2025-11-24 17:42:48	2025-11-24 17:42:48
12	Вильямс	2025-11-24 17:42:48	2025-11-24 17:42:48
13	Проспект	2025-11-24 17:42:48	2025-11-24 17:42:48
14	КоЛибри	2025-11-24 17:42:48	2025-11-24 17:42:48
15	Corpus	2025-11-24 17:42:48	2025-11-24 17:42:48
16	Академический проект	2025-11-24 17:42:48	2025-11-24 17:42:48
17	Стрекоза-Пресс	2025-11-24 17:42:48	2025-11-24 17:42:48
18	Росмэн	2025-11-24 17:42:48	2025-11-24 17:42:48
19	Дрофа	2025-11-24 17:42:48	2025-11-24 17:42:48
20	Ориенталия	2025-11-24 17:42:48	2025-11-24 17:42:48
21	Эксмо	2025-11-24 17:42:57	2025-11-24 17:42:57
22	Попурри	2025-11-24 17:42:57	2025-11-24 17:42:57
23	Альпина Паблишер	2025-11-24 17:42:57	2025-11-24 17:42:57
24	Манн, Иванов и Фербер	2025-11-24 17:42:57	2025-11-24 17:42:57
25	София	2025-11-24 17:42:57	2025-11-24 17:42:57
26	Азбука	2025-11-24 17:42:57	2025-11-24 17:42:57
27	АСТ	2025-11-24 17:42:57	2025-11-24 17:42:57
28	Наука	2025-11-24 17:42:57	2025-11-24 17:42:57
29	Питер	2025-11-24 17:42:57	2025-11-24 17:42:57
30	Прайм-Еврознак	2025-11-24 17:42:57	2025-11-24 17:42:57
31	Бомбора	2025-11-24 17:42:57	2025-11-24 17:42:57
32	Вильямс	2025-11-24 17:42:57	2025-11-24 17:42:57
33	Проспект	2025-11-24 17:42:57	2025-11-24 17:42:57
34	КоЛибри	2025-11-24 17:42:57	2025-11-24 17:42:57
35	Corpus	2025-11-24 17:42:57	2025-11-24 17:42:57
36	Академический проект	2025-11-24 17:42:57	2025-11-24 17:42:57
37	Стрекоза-Пресс	2025-11-24 17:42:57	2025-11-24 17:42:57
38	Росмэн	2025-11-24 17:42:57	2025-11-24 17:42:57
39	Дрофа	2025-11-24 17:42:57	2025-11-24 17:42:57
40	Ориенталия	2025-11-24 17:42:57	2025-11-24 17:42:57
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.sessions (id, user_id, ip_address, user_agent, payload, last_activity) FROM stdin;
9J3SBDa4hzmhf7CozQ8rejEDizlBQ85yUswyn9jh	\N	172.18.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiVjJqdklOM3AxWDJlOGJ3Mk1CeGJzQklRajVjY2xzVzlHUVd0VzhYbSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly9sb2NhbGhvc3Q6OTIiO3M6NToicm91dGUiO3M6NDoiaG9tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=	1764235557
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at) FROM stdin;
\.


--
-- Name: authors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.authors_id_seq', 50, true);


--
-- Name: books_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.books_id_seq', 96, true);


--
-- Name: failed_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);


--
-- Name: jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.jobs_id_seq', 1, false);


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.migrations_id_seq', 6, true);


--
-- Name: publishers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.publishers_id_seq', 40, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- Name: authors authors_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_pkey PRIMARY KEY (id);


--
-- Name: books books_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (id);


--
-- Name: cache_locks cache_locks_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.cache_locks
    ADD CONSTRAINT cache_locks_pkey PRIMARY KEY (key);


--
-- Name: cache cache_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.cache
    ADD CONSTRAINT cache_pkey PRIMARY KEY (key);


--
-- Name: failed_jobs failed_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);


--
-- Name: failed_jobs failed_jobs_uuid_unique; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);


--
-- Name: job_batches job_batches_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.job_batches
    ADD CONSTRAINT job_batches_pkey PRIMARY KEY (id);


--
-- Name: jobs jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT jobs_pkey PRIMARY KEY (id);


--
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- Name: password_reset_tokens password_reset_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.password_reset_tokens
    ADD CONSTRAINT password_reset_tokens_pkey PRIMARY KEY (email);


--
-- Name: publishers publishers_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.publishers
    ADD CONSTRAINT publishers_pkey PRIMARY KEY (id);


--
-- Name: sessions sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);


--
-- Name: users users_email_unique; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: jobs_queue_index; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX jobs_queue_index ON public.jobs USING btree (queue);


--
-- Name: sessions_last_activity_index; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX sessions_last_activity_index ON public.sessions USING btree (last_activity);


--
-- Name: sessions_user_id_index; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX sessions_user_id_index ON public.sessions USING btree (user_id);


--
-- Name: books books_author_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_author_id_foreign FOREIGN KEY (author_id) REFERENCES public.authors(id) ON DELETE CASCADE;


--
-- Name: books books_publisher_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_publisher_id_foreign FOREIGN KEY (publisher_id) REFERENCES public.publishers(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

\unrestrict XEpPa0MIsM65c3b53UbmzAalk3q6SKiOLjhdchiCcRW3w5t1fwk8AaseDxZGad7

