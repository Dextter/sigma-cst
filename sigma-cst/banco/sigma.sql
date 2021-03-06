PGDMP         8                u            sigmaDB    9.6.2    9.6.2     e	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            f	           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            g	           1262    16393    sigmaDB    DATABASE     g   CREATE DATABASE "sigmaDB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C' LC_CTYPE = 'C';
    DROP DATABASE "sigmaDB";
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            h	           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12655    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            i	           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16407    componente_curricular    TABLE     �   CREATE TABLE componente_curricular (
    id integer NOT NULL,
    nome text NOT NULL,
    creditos integer NOT NULL,
    ementa text NOT NULL,
    id_matriz integer NOT NULL,
    semestre integer NOT NULL
);
 )   DROP TABLE public.componente_curricular;
       public         postgres    false    3            �            1259    16405    componente_curricular_id_seq    SEQUENCE     ~   CREATE SEQUENCE componente_curricular_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.componente_curricular_id_seq;
       public       postgres    false    3    188            j	           0    0    componente_curricular_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE componente_curricular_id_seq OWNED BY componente_curricular.id;
            public       postgres    false    187            �            1259    16396    matriz_curricular    TABLE     �   CREATE TABLE matriz_curricular (
    id integer NOT NULL,
    descricao text NOT NULL,
    ativa boolean NOT NULL,
    id_curso integer
);
 %   DROP TABLE public.matriz_curricular;
       public         postgres    false    3            �            1259    16394    matriz_curricular_id_seq    SEQUENCE     z   CREATE SEQUENCE matriz_curricular_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.matriz_curricular_id_seq;
       public       postgres    false    3    186            k	           0    0    matriz_curricular_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE matriz_curricular_id_seq OWNED BY matriz_curricular.id;
            public       postgres    false    185            �           2604    16410    componente_curricular id    DEFAULT     v   ALTER TABLE ONLY componente_curricular ALTER COLUMN id SET DEFAULT nextval('componente_curricular_id_seq'::regclass);
 G   ALTER TABLE public.componente_curricular ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    188    187    188            �           2604    16399    matriz_curricular id    DEFAULT     n   ALTER TABLE ONLY matriz_curricular ALTER COLUMN id SET DEFAULT nextval('matriz_curricular_id_seq'::regclass);
 C   ALTER TABLE public.matriz_curricular ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    185    186    186            b	          0    16407    componente_curricular 
   TABLE DATA                     public       postgres    false    188   z       l	           0    0    componente_curricular_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('componente_curricular_id_seq', 1, false);
            public       postgres    false    187            `	          0    16396    matriz_curricular 
   TABLE DATA                     public       postgres    false    186          m	           0    0    matriz_curricular_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('matriz_curricular_id_seq', 2, true);
            public       postgres    false    185            �           2606    16415 0   componente_curricular componente_curricular_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY componente_curricular
    ADD CONSTRAINT componente_curricular_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.componente_curricular DROP CONSTRAINT componente_curricular_pkey;
       public         postgres    false    188    188            �           2606    16404 (   matriz_curricular matriz_curricular_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY matriz_curricular
    ADD CONSTRAINT matriz_curricular_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.matriz_curricular DROP CONSTRAINT matriz_curricular_pkey;
       public         postgres    false    186    186            �           2606    16416 *   componente_curricular fk_componente_matriz    FK CONSTRAINT     �   ALTER TABLE ONLY componente_curricular
    ADD CONSTRAINT fk_componente_matriz FOREIGN KEY (id_matriz) REFERENCES matriz_curricular(id);
 T   ALTER TABLE ONLY public.componente_curricular DROP CONSTRAINT fk_componente_matriz;
       public       postgres    false    188    186    2278            b	   �   x���v
Q���WH��-��K�+I�O.-*�L.�I,Rs�	uV�0�QP��K�/�=��$39Q]G�(�ZQ�������ԙ����0"Mk.O�7��Z��������h��F$�Ԡ�_TR�^zxU1N�� ҴT�      `	   y   x���
�0�=O�m*dq�$�A(Lڵ�x)�7�C��g��zβ�y�XV�DtU���M�}N��٠5:K>吿�@S����@�S�t�pp�T3v��R)��~�&)�F�F�pSJ�t�'�     