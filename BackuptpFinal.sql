PGDMP     :                
    y            databasetpfinal    13.1    13.1 1    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    17413    databasetpfinal    DATABASE     o   CREATE DATABASE databasetpfinal WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Argentina.1252';
    DROP DATABASE databasetpfinal;
                postgres    false            ?            1259    17414    agenda    TABLE     U   CREATE TABLE public.agenda (
    id integer NOT NULL,
    fecha character varying
);
    DROP TABLE public.agenda;
       public         heap    postgres    false            ?            1259    17417    agenda_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.agenda_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.agenda_id_seq;
       public          postgres    false    200            ?           0    0    agenda_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.agenda_id_seq OWNED BY public.agenda.id;
          public          postgres    false    201            ?            1259    17419    cita    TABLE       CREATE TABLE public.cita (
    id integer NOT NULL,
    id_agenda integer,
    id_locacion integer,
    id_tipoevento integer,
    tipo_evento character varying,
    domicilio character varying,
    id_anfitrion integer,
    fecha_hora character varying
);
    DROP TABLE public.cita;
       public         heap    postgres    false            ?            1259    17425    cita_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.cita_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.cita_id_seq;
       public          postgres    false    202            ?           0    0    cita_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.cita_id_seq OWNED BY public.cita.id;
          public          postgres    false    203            ?            1259    17427    locacion    TABLE     ?   CREATE TABLE public.locacion (
    id integer NOT NULL,
    nombre character varying,
    domicilio character varying,
    estado boolean,
    id_cita integer
);
    DROP TABLE public.locacion;
       public         heap    postgres    false            ?            1259    17433    locacion_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.locacion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.locacion_id_seq;
       public          postgres    false    204            ?           0    0    locacion_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.locacion_id_seq OWNED BY public.locacion.id;
          public          postgres    false    205            ?            1259    17435    persona    TABLE     ?   CREATE TABLE public.persona (
    id integer NOT NULL,
    nombre_apellido character varying,
    rol character varying,
    id_cita integer
);
    DROP TABLE public.persona;
       public         heap    postgres    false            ?            1259    17441    persona_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.persona_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.persona_id_seq;
       public          postgres    false    206            ?           0    0    persona_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.persona_id_seq OWNED BY public.persona.id;
          public          postgres    false    207            ?            1259    17443    tipo_evento    TABLE     o   CREATE TABLE public.tipo_evento (
    id integer NOT NULL,
    nombre character varying,
    estado boolean
);
    DROP TABLE public.tipo_evento;
       public         heap    postgres    false            ?            1259    17449    tipo_evento_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.tipo_evento_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.tipo_evento_id_seq;
       public          postgres    false    208            ?           0    0    tipo_evento_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.tipo_evento_id_seq OWNED BY public.tipo_evento.id;
          public          postgres    false    209            ?           2604    17451 	   agenda id    DEFAULT     f   ALTER TABLE ONLY public.agenda ALTER COLUMN id SET DEFAULT nextval('public.agenda_id_seq'::regclass);
 8   ALTER TABLE public.agenda ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    200            @           2604    17452    cita id    DEFAULT     b   ALTER TABLE ONLY public.cita ALTER COLUMN id SET DEFAULT nextval('public.cita_id_seq'::regclass);
 6   ALTER TABLE public.cita ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202            A           2604    17453    locacion id    DEFAULT     j   ALTER TABLE ONLY public.locacion ALTER COLUMN id SET DEFAULT nextval('public.locacion_id_seq'::regclass);
 :   ALTER TABLE public.locacion ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204            B           2604    17454 
   persona id    DEFAULT     h   ALTER TABLE ONLY public.persona ALTER COLUMN id SET DEFAULT nextval('public.persona_id_seq'::regclass);
 9   ALTER TABLE public.persona ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206            C           2604    17455    tipo_evento id    DEFAULT     p   ALTER TABLE ONLY public.tipo_evento ALTER COLUMN id SET DEFAULT nextval('public.tipo_evento_id_seq'::regclass);
 =   ALTER TABLE public.tipo_evento ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208            ?          0    17414    agenda 
   TABLE DATA           +   COPY public.agenda (id, fecha) FROM stdin;
    public          postgres    false    200   ?3       ?          0    17419    cita 
   TABLE DATA           {   COPY public.cita (id, id_agenda, id_locacion, id_tipoevento, tipo_evento, domicilio, id_anfitrion, fecha_hora) FROM stdin;
    public          postgres    false    202   !4       ?          0    17427    locacion 
   TABLE DATA           J   COPY public.locacion (id, nombre, domicilio, estado, id_cita) FROM stdin;
    public          postgres    false    204   ?4       ?          0    17435    persona 
   TABLE DATA           D   COPY public.persona (id, nombre_apellido, rol, id_cita) FROM stdin;
    public          postgres    false    206   35       ?          0    17443    tipo_evento 
   TABLE DATA           9   COPY public.tipo_evento (id, nombre, estado) FROM stdin;
    public          postgres    false    208   ?5       ?           0    0    agenda_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.agenda_id_seq', 9, true);
          public          postgres    false    201            ?           0    0    cita_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.cita_id_seq', 4, true);
          public          postgres    false    203            ?           0    0    locacion_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.locacion_id_seq', 4, true);
          public          postgres    false    205            ?           0    0    persona_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.persona_id_seq', 14, true);
          public          postgres    false    207            ?           0    0    tipo_evento_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.tipo_evento_id_seq', 4, true);
          public          postgres    false    209            E           2606    17457    agenda agenda_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.agenda
    ADD CONSTRAINT agenda_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.agenda DROP CONSTRAINT agenda_pkey;
       public            postgres    false    200            G           2606    17459    cita cita_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.cita
    ADD CONSTRAINT cita_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.cita DROP CONSTRAINT cita_pkey;
       public            postgres    false    202            L           2606    17461    locacion locacion_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.locacion
    ADD CONSTRAINT locacion_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.locacion DROP CONSTRAINT locacion_pkey;
       public            postgres    false    204            O           2606    17463    persona persona_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.persona
    ADD CONSTRAINT persona_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.persona DROP CONSTRAINT persona_pkey;
       public            postgres    false    206            Q           2606    17465    tipo_evento tipo_evento_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.tipo_evento
    ADD CONSTRAINT tipo_evento_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.tipo_evento DROP CONSTRAINT tipo_evento_pkey;
       public            postgres    false    208            S           2606    17499    tipo_evento uk_nombre 
   CONSTRAINT     R   ALTER TABLE ONLY public.tipo_evento
    ADD CONSTRAINT uk_nombre UNIQUE (nombre);
 ?   ALTER TABLE ONLY public.tipo_evento DROP CONSTRAINT uk_nombre;
       public            postgres    false    208            H           1259    17466    fki_fk_agenda    INDEX     C   CREATE INDEX fki_fk_agenda ON public.cita USING btree (id_agenda);
 !   DROP INDEX public.fki_fk_agenda;
       public            postgres    false    202            I           1259    17467    fki_fk_anfitrio    INDEX     H   CREATE INDEX fki_fk_anfitrio ON public.cita USING btree (id_anfitrion);
 #   DROP INDEX public.fki_fk_anfitrio;
       public            postgres    false    202            M           1259    17468    fki_fk_cita    INDEX     B   CREATE INDEX fki_fk_cita ON public.persona USING btree (id_cita);
    DROP INDEX public.fki_fk_cita;
       public            postgres    false    206            J           1259    17469    fki_fk_citaLocacion    INDEX     M   CREATE INDEX "fki_fk_citaLocacion" ON public.locacion USING btree (id_cita);
 )   DROP INDEX public."fki_fk_citaLocacion";
       public            postgres    false    204            T           2606    17470    cita fk_agenda    FK CONSTRAINT     z   ALTER TABLE ONLY public.cita
    ADD CONSTRAINT fk_agenda FOREIGN KEY (id_agenda) REFERENCES public.agenda(id) NOT VALID;
 8   ALTER TABLE ONLY public.cita DROP CONSTRAINT fk_agenda;
       public          postgres    false    200    2885    202            U           2606    17475    cita fk_anfitrio    FK CONSTRAINT     ?   ALTER TABLE ONLY public.cita
    ADD CONSTRAINT fk_anfitrio FOREIGN KEY (id_anfitrion) REFERENCES public.persona(id) NOT VALID;
 :   ALTER TABLE ONLY public.cita DROP CONSTRAINT fk_anfitrio;
       public          postgres    false    202    2895    206            X           2606    17480    persona fk_cita    FK CONSTRAINT     w   ALTER TABLE ONLY public.persona
    ADD CONSTRAINT fk_cita FOREIGN KEY (id_cita) REFERENCES public.cita(id) NOT VALID;
 9   ALTER TABLE ONLY public.persona DROP CONSTRAINT fk_cita;
       public          postgres    false    202    2887    206            W           2606    17485    locacion fk_cita    FK CONSTRAINT     x   ALTER TABLE ONLY public.locacion
    ADD CONSTRAINT fk_cita FOREIGN KEY (id_cita) REFERENCES public.cita(id) NOT VALID;
 :   ALTER TABLE ONLY public.locacion DROP CONSTRAINT fk_cita;
       public          postgres    false    202    2887    204            V           2606    17490    cita fk_citaLocacion    FK CONSTRAINT     ?   ALTER TABLE ONLY public.cita
    ADD CONSTRAINT "fk_citaLocacion" FOREIGN KEY (id_locacion) REFERENCES public.locacion(id) NOT VALID;
 @   ALTER TABLE ONLY public.cita DROP CONSTRAINT "fk_citaLocacion";
       public          postgres    false    2892    204    202            ?   -   x?3????2f??????FF?\??d?%??%????? ??Y      ?   y   x?}?;
?0D?z?
m?!o䄤tҤv?F??g?????#8魯??cj^???V?? 2?J1<???t???P5&??????(???Ӄ???jД?![??q?[????F?,&      ?   y   x?E?1
?0Eg?>A??/?v??v(tˢ?F.???ץ?,?~??[Z?j?}V??1&0??p?Xk????|??'??????V???cNp?,T6??/TXM?<?S?.?%?ݝOι/5j(?      ?   ?   x?}???@@??W???0?jԑ??	5r5?p??E?	g??k__j?`l<??;?P?a???̐oTk?jrz?WlÚ??*?HF?#???@X?y!v??,ےuZ???nC8??????猁Oy??hbȨ??)???m?-?z޳??dEl7?F?dh???|??z?1jC      ?   $   x?3?J-?????,?2?t??+.?)Irb???? ?U     