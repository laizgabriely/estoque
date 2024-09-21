-- Table: public.tecidos

-- DROP TABLE IF EXISTS public.tecidos;

CREATE TABLE IF NOT EXISTS public.tecidos
(
    id integer NOT NULL DEFAULT nextval('tecidos_id_seq'::regclass),
    nome character varying(100) COLLATE pg_catalog."default" NOT NULL,
    quantidade integer NOT NULL,
    preco numeric(10,2) NOT NULL,
    CONSTRAINT tecidos_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.tecidos
    OWNER to postgres;