-- Table: public.espumas

-- DROP TABLE IF EXISTS public.espumas;

CREATE TABLE IF NOT EXISTS public.espumas
(
    id integer NOT NULL DEFAULT nextval('espumas_id_seq'::regclass),
    tipo character varying(100) COLLATE pg_catalog."default" NOT NULL,
    quantidade integer NOT NULL,
    preco numeric(10,2) NOT NULL,
    tecido_id integer,
    CONSTRAINT espumas_pkey PRIMARY KEY (id),
    CONSTRAINT espumas_tecido_id_fkey FOREIGN KEY (tecido_id)
        REFERENCES public.tecidos (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.espumas
    OWNER to postgres;