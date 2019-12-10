PGDMP         3        
        w         
   Integrador    10.10    11.5 1    1           0    0    ENCODING    ENCODING         SET client_encoding = 'LATIN1';
                       false            2           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            3           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            4           1262    17740 
   Integrador    DATABASE     �   CREATE DATABASE "Integrador" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';
    DROP DATABASE "Integrador";
             postgres    false            �            1259    17846    bolsas    TABLE     b   CREATE TABLE public.bolsas (
    idbolsa integer NOT NULL,
    nomebolsa character varying(50)
);
    DROP TABLE public.bolsas;
       public         postgres    false            �            1259    17844    bolsas_idbolsa_seq    SEQUENCE     �   CREATE SEQUENCE public.bolsas_idbolsa_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.bolsas_idbolsa_seq;
       public       postgres    false    203            5           0    0    bolsas_idbolsa_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.bolsas_idbolsa_seq OWNED BY public.bolsas.idbolsa;
            public       postgres    false    202            �            1259    17785    cadastro    TABLE     �   CREATE TABLE public.cadastro (
    id_cadastro integer NOT NULL,
    nome character(200),
    sobrenome character(200),
    data_nasc date,
    telefone character(14),
    endereco text
);
    DROP TABLE public.cadastro;
       public         postgres    false            �            1259    17741 	   cadastro1    TABLE     �   CREATE TABLE public.cadastro1 (
    id_cadastro integer NOT NULL,
    id_usuario integer,
    nome character varying(50),
    sobrenome character varying(50),
    data_nasc date,
    telefone character(14),
    endereco character varying(50)
);
    DROP TABLE public.cadastro1;
       public         postgres    false            �            1259    17781    cadastro_id_cadastro_seq    SEQUENCE     �   CREATE SEQUENCE public.cadastro_id_cadastro_seq
    START WITH 5
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.cadastro_id_cadastro_seq;
       public       postgres    false            �            1259    17783    cadastro_id_cadastro_seq1    SEQUENCE     �   CREATE SEQUENCE public.cadastro_id_cadastro_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.cadastro_id_cadastro_seq1;
       public       postgres    false    201            6           0    0    cadastro_id_cadastro_seq1    SEQUENCE OWNED BY     V   ALTER SEQUENCE public.cadastro_id_cadastro_seq1 OWNED BY public.cadastro.id_cadastro;
            public       postgres    false    200            �            1259    17744    login    TABLE     �   CREATE TABLE public.login (
    id_usuario integer NOT NULL,
    email_usuario character varying(50),
    senha_usuario character varying
);
    DROP TABLE public.login;
       public         postgres    false            �            1259    17870 
   newsletter    TABLE     
  CREATE TABLE public.newsletter (
    idusuario integer NOT NULL,
    idbolsa integer,
    idprograma integer,
    nome character varying(50),
    email character varying(50),
    login character varying(50),
    senha integer,
    categoria character varying(50)
);
    DROP TABLE public.newsletter;
       public         postgres    false            �            1259    17868    newsletter_idusuario_seq    SEQUENCE     �   CREATE SEQUENCE public.newsletter_idusuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.newsletter_idusuario_seq;
       public       postgres    false    207            7           0    0    newsletter_idusuario_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.newsletter_idusuario_seq OWNED BY public.newsletter.idusuario;
            public       postgres    false    206            �            1259    17750 	   orcamento    TABLE       CREATE TABLE public.orcamento (
    id_orcamento integer NOT NULL,
    id_usuario integer,
    id_cadastro integer,
    "pa�s" character varying(50),
    tipo_intercambio character varying(50),
    periodo character varying(50),
    preco numeric,
    situacao character varying(50)
);
    DROP TABLE public.orcamento;
       public         postgres    false            �            1259    17854 	   programas    TABLE     �  CREATE TABLE public.programas (
    idprograma integer NOT NULL,
    idbolsa integer,
    nomeprograma character varying(50),
    pais character varying(50),
    idioma character varying(50),
    categoria character varying(50),
    atuacao character varying(50),
    parceiro character varying(50),
    datainicioinscr date,
    datafinalinscr date,
    linkprograma character varying
);
    DROP TABLE public.programas;
       public         postgres    false            �            1259    17852    programas_idprograma_seq    SEQUENCE     �   CREATE SEQUENCE public.programas_idprograma_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.programas_idprograma_seq;
       public       postgres    false    205            8           0    0    programas_idprograma_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.programas_idprograma_seq OWNED BY public.programas.idprograma;
            public       postgres    false    204            �
           2604    17849    bolsas idbolsa    DEFAULT     p   ALTER TABLE ONLY public.bolsas ALTER COLUMN idbolsa SET DEFAULT nextval('public.bolsas_idbolsa_seq'::regclass);
 =   ALTER TABLE public.bolsas ALTER COLUMN idbolsa DROP DEFAULT;
       public       postgres    false    202    203    203            �
           2604    17788    cadastro id_cadastro    DEFAULT     }   ALTER TABLE ONLY public.cadastro ALTER COLUMN id_cadastro SET DEFAULT nextval('public.cadastro_id_cadastro_seq1'::regclass);
 C   ALTER TABLE public.cadastro ALTER COLUMN id_cadastro DROP DEFAULT;
       public       postgres    false    201    200    201            �
           2604    17873    newsletter idusuario    DEFAULT     |   ALTER TABLE ONLY public.newsletter ALTER COLUMN idusuario SET DEFAULT nextval('public.newsletter_idusuario_seq'::regclass);
 C   ALTER TABLE public.newsletter ALTER COLUMN idusuario DROP DEFAULT;
       public       postgres    false    206    207    207            �
           2604    17857    programas idprograma    DEFAULT     |   ALTER TABLE ONLY public.programas ALTER COLUMN idprograma SET DEFAULT nextval('public.programas_idprograma_seq'::regclass);
 C   ALTER TABLE public.programas ALTER COLUMN idprograma DROP DEFAULT;
       public       postgres    false    204    205    205            *          0    17846    bolsas 
   TABLE DATA               4   COPY public.bolsas (idbolsa, nomebolsa) FROM stdin;
    public       postgres    false    203   9       (          0    17785    cadastro 
   TABLE DATA               _   COPY public.cadastro (id_cadastro, nome, sobrenome, data_nasc, telefone, endereco) FROM stdin;
    public       postgres    false    201   �9       #          0    17741 	   cadastro1 
   TABLE DATA               l   COPY public.cadastro1 (id_cadastro, id_usuario, nome, sobrenome, data_nasc, telefone, endereco) FROM stdin;
    public       postgres    false    196   :       $          0    17744    login 
   TABLE DATA               I   COPY public.login (id_usuario, email_usuario, senha_usuario) FROM stdin;
    public       postgres    false    197   ;       .          0    17870 
   newsletter 
   TABLE DATA               j   COPY public.newsletter (idusuario, idbolsa, idprograma, nome, email, login, senha, categoria) FROM stdin;
    public       postgres    false    207   �;       %          0    17750 	   orcamento 
   TABLE DATA               ~   COPY public.orcamento (id_orcamento, id_usuario, id_cadastro, "pa�s", tipo_intercambio, periodo, preco, situacao) FROM stdin;
    public       postgres    false    198   �;       ,          0    17854 	   programas 
   TABLE DATA               �   COPY public.programas (idprograma, idbolsa, nomeprograma, pais, idioma, categoria, atuacao, parceiro, datainicioinscr, datafinalinscr, linkprograma) FROM stdin;
    public       postgres    false    205   Z<       9           0    0    bolsas_idbolsa_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.bolsas_idbolsa_seq', 5, true);
            public       postgres    false    202            :           0    0    cadastro_id_cadastro_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.cadastro_id_cadastro_seq', 5, false);
            public       postgres    false    199            ;           0    0    cadastro_id_cadastro_seq1    SEQUENCE SET     G   SELECT pg_catalog.setval('public.cadastro_id_cadastro_seq1', 3, true);
            public       postgres    false    200            <           0    0    newsletter_idusuario_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.newsletter_idusuario_seq', 1, false);
            public       postgres    false    206            =           0    0    programas_idprograma_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.programas_idprograma_seq', 14, true);
            public       postgres    false    204            �
           2606    17851    bolsas bolsas_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.bolsas
    ADD CONSTRAINT bolsas_pkey PRIMARY KEY (idbolsa);
 <   ALTER TABLE ONLY public.bolsas DROP CONSTRAINT bolsas_pkey;
       public         postgres    false    203            �
           2606    17757    cadastro1 cadastro_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.cadastro1
    ADD CONSTRAINT cadastro_pkey PRIMARY KEY (id_cadastro);
 A   ALTER TABLE ONLY public.cadastro1 DROP CONSTRAINT cadastro_pkey;
       public         postgres    false    196            �
           2606    17793    cadastro cadastro_pkey1 
   CONSTRAINT     ^   ALTER TABLE ONLY public.cadastro
    ADD CONSTRAINT cadastro_pkey1 PRIMARY KEY (id_cadastro);
 A   ALTER TABLE ONLY public.cadastro DROP CONSTRAINT cadastro_pkey1;
       public         postgres    false    201            �
           2606    17759    login login_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.login
    ADD CONSTRAINT login_pkey PRIMARY KEY (id_usuario);
 :   ALTER TABLE ONLY public.login DROP CONSTRAINT login_pkey;
       public         postgres    false    197            �
           2606    17875    newsletter newsletter_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.newsletter
    ADD CONSTRAINT newsletter_pkey PRIMARY KEY (idusuario);
 D   ALTER TABLE ONLY public.newsletter DROP CONSTRAINT newsletter_pkey;
       public         postgres    false    207            �
           2606    17761    orcamento orcamento_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.orcamento
    ADD CONSTRAINT orcamento_pkey PRIMARY KEY (id_orcamento);
 B   ALTER TABLE ONLY public.orcamento DROP CONSTRAINT orcamento_pkey;
       public         postgres    false    198            �
           2606    17862    programas programas_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.programas
    ADD CONSTRAINT programas_pkey PRIMARY KEY (idprograma);
 B   ALTER TABLE ONLY public.programas DROP CONSTRAINT programas_pkey;
       public         postgres    false    205            �
           2606    17863    programas fk_bolsas    FK CONSTRAINT     x   ALTER TABLE ONLY public.programas
    ADD CONSTRAINT fk_bolsas FOREIGN KEY (idbolsa) REFERENCES public.bolsas(idbolsa);
 =   ALTER TABLE ONLY public.programas DROP CONSTRAINT fk_bolsas;
       public       postgres    false    2719    205    203            �
           2606    17876    newsletter fk_bolsas    FK CONSTRAINT     y   ALTER TABLE ONLY public.newsletter
    ADD CONSTRAINT fk_bolsas FOREIGN KEY (idbolsa) REFERENCES public.bolsas(idbolsa);
 >   ALTER TABLE ONLY public.newsletter DROP CONSTRAINT fk_bolsas;
       public       postgres    false    203    207    2719            �
           2606    17762    orcamento fk_cadastro    FK CONSTRAINT     �   ALTER TABLE ONLY public.orcamento
    ADD CONSTRAINT fk_cadastro FOREIGN KEY (id_cadastro) REFERENCES public.cadastro1(id_cadastro);
 ?   ALTER TABLE ONLY public.orcamento DROP CONSTRAINT fk_cadastro;
       public       postgres    false    2711    196    198            �
           2606    17767    cadastro1 fk_login    FK CONSTRAINT     |   ALTER TABLE ONLY public.cadastro1
    ADD CONSTRAINT fk_login FOREIGN KEY (id_usuario) REFERENCES public.login(id_usuario);
 <   ALTER TABLE ONLY public.cadastro1 DROP CONSTRAINT fk_login;
       public       postgres    false    196    2713    197            �
           2606    17772    orcamento fk_login    FK CONSTRAINT     |   ALTER TABLE ONLY public.orcamento
    ADD CONSTRAINT fk_login FOREIGN KEY (id_usuario) REFERENCES public.login(id_usuario);
 <   ALTER TABLE ONLY public.orcamento DROP CONSTRAINT fk_login;
       public       postgres    false    198    2713    197            �
           2606    17881    newsletter fk_programas    FK CONSTRAINT     �   ALTER TABLE ONLY public.newsletter
    ADD CONSTRAINT fk_programas FOREIGN KEY (idprograma) REFERENCES public.programas(idprograma);
 A   ALTER TABLE ONLY public.newsletter DROP CONSTRAINT fk_programas;
       public       postgres    false    205    207    2721            *   s   x�-�;
1 �:s�9��� ���*V6�f0�l&̧��Zؽ�LG��'�iѝYV�*N��u:(����96i��6Vܽ)�\�	s��s�n�tQ�/�{�:�6i�V�� �Y)�      (   �   x�3��M,J�/V��?'�,5�(q�B)�4����50�54��01�43135�5���\F�^��/ڍ� ��9�yɉE��(�,t��q�iba	f  �	�2����fi�=���+F��� pݳo      #   �   x�M�;N�0�z|�9@��L��d���%'YwD��Ģ�g����!~���4�p�Ч�%����ܴ�2�LN��{ �������u�B�Fq"@�i�ؠ�.oh2�);P���Eg!���=�1�;;�
k����g�f�f�A����a�OatCwo�6�G�g�+�@�.i_�e}.�a��:L�k%d��4Go�q���5Ѡ��$8,�R� )S��`t�r�����..�	���n�sN�n!_&L      $   S   x�3��M,�LtH�M���K���4426�2���O�G55���2��"�51
���@6���(�eʙ��"ljnij����� }�",      .      x������ � �      %   �   x�e�M
�0�דS���?t��Н����h���$���y��R�*�b6��� #ڀ���1)t�*!�ơ57T�ɏ��+��O.��Z;�ݨY�X>�Ŝ��h{��l)fz9q?���|�,�Mn�`��)W�b%!%�3t`�B�\i�)��߅��;�c���M1      ,   �  x����n�0���S�<Xκ.��1�m/�z�E�Y��L�]���G:`h������MT��(J���'��:��{S;�����N$y/)��wK�Z<؆*�>rc�X�.�bg]CF}b�A��SZ{�a�oh�4(r=��Y��=�����"�Ƀ%�2y����[�C�$l�B�"�l?zX��C�f��$�[w���s�6����!T:O�^B$:%n����u��{��;��ahzi��o��y��L%dZ푭0P���W-�?���5�.�%�����F�i����z"]$�Kz�L�^I*�e��#�0��:�W���7�����ف{�)���k/#�.��O[���!�nM�=�r	�<�Ў�� �)�[��D���я�r�:1d�B�65`,P��<U�bʱ���ʾȋ���>��L&��{yY     