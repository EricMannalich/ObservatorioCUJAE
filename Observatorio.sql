PGDMP         4                y           Observatorio1    13.1    13.1 ?    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    25675    Observatorio1    DATABASE     k   CREATE DATABASE "Observatorio1" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE "Observatorio1";
                postgres    false            ?            1259    25928 	   app_amigo    TABLE     ?   CREATE TABLE public.app_amigo (
    id integer NOT NULL,
    nivel_amistad integer,
    persona_id integer NOT NULL,
    usuario_id integer NOT NULL
);
    DROP TABLE public.app_amigo;
       public         heap    postgres    false            ?            1259    25926    app_amigo_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.app_amigo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.app_amigo_id_seq;
       public          postgres    false    236            ?           0    0    app_amigo_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.app_amigo_id_seq OWNED BY public.app_amigo.id;
          public          postgres    false    235            ?            1259    25920    app_autor_tutor    TABLE     ?   CREATE TABLE public.app_autor_tutor (
    id integer NOT NULL,
    documento_id integer NOT NULL,
    persona_id integer NOT NULL,
    participacion character varying(1)
);
 #   DROP TABLE public.app_autor_tutor;
       public         heap    postgres    false            ?            1259    25918    app_autor_tutor_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.app_autor_tutor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.app_autor_tutor_id_seq;
       public          postgres    false    234            ?           0    0    app_autor_tutor_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.app_autor_tutor_id_seq OWNED BY public.app_autor_tutor.id;
          public          postgres    false    233            ?            1259    25846    app_carrera    TABLE     q   CREATE TABLE public.app_carrera (
    id integer NOT NULL,
    nombre_carrera character varying(127) NOT NULL
);
    DROP TABLE public.app_carrera;
       public         heap    postgres    false            ?            1259    25844    app_carrera_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.app_carrera_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.app_carrera_id_seq;
       public          postgres    false    220            ?           0    0    app_carrera_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.app_carrera_id_seq OWNED BY public.app_carrera.id;
          public          postgres    false    219            ?            1259    25909    app_documento    TABLE       CREATE TABLE public.app_documento (
    id integer NOT NULL,
    titulo character varying(127) NOT NULL,
    resumen text,
    fecha date,
    idioma character varying(2),
    pais character varying(63),
    link character varying(200),
    tema character varying(4)
);
 !   DROP TABLE public.app_documento;
       public         heap    postgres    false            ?            1259    25907    app_documento_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.app_documento_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.app_documento_id_seq;
       public          postgres    false    232            ?           0    0    app_documento_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.app_documento_id_seq OWNED BY public.app_documento.id;
          public          postgres    false    231            ?            1259    25854    app_persona    TABLE       CREATE TABLE public.app_persona (
    id integer NOT NULL,
    primer_nombre character varying(30),
    segundo_nombbre character varying(30),
    primer_apellido character varying(30),
    segundo_apellido character varying(30),
    sexo boolean NOT NULL,
    fecha_nacimiento date
);
    DROP TABLE public.app_persona;
       public         heap    postgres    false            ?            1259    25852    app_persona_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.app_persona_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.app_persona_id_seq;
       public          postgres    false    222            ?           0    0    app_persona_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.app_persona_id_seq OWNED BY public.app_persona.id;
          public          postgres    false    221            ?            1259    25870    app_trabajo    TABLE     p   CREATE TABLE public.app_trabajo (
    id integer NOT NULL,
    nombre_centro character varying(127) NOT NULL
);
    DROP TABLE public.app_trabajo;
       public         heap    postgres    false            ?            1259    25868    app_trabajo_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.app_trabajo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.app_trabajo_id_seq;
       public          postgres    false    224            ?           0    0    app_trabajo_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.app_trabajo_id_seq OWNED BY public.app_trabajo.id;
          public          postgres    false    223            ?            1259    25898    app_usuario_carrera    TABLE     [  CREATE TABLE public.app_usuario_carrera (
    id integer NOT NULL,
    anno integer NOT NULL,
    completado boolean NOT NULL,
    maestria boolean NOT NULL,
    titulo_maestria character varying(255),
    doctorado boolean NOT NULL,
    titulo_doctorado character varying(255),
    carrera_id integer NOT NULL,
    usuario_id integer NOT NULL
);
 '   DROP TABLE public.app_usuario_carrera;
       public         heap    postgres    false            ?            1259    25896    app_usuario_carrera_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.app_usuario_carrera_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.app_usuario_carrera_id_seq;
       public          postgres    false    230            ?           0    0    app_usuario_carrera_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.app_usuario_carrera_id_seq OWNED BY public.app_usuario_carrera.id;
          public          postgres    false    229            ?            1259    25878    app_usuario_estendido    TABLE     2  CREATE TABLE public.app_usuario_estendido (
    id integer NOT NULL,
    pais_origen character varying(30),
    pais_actual character varying(30),
    notificacion_correo boolean NOT NULL,
    nivel_academico character varying(1),
    persona_id integer NOT NULL,
    usuario_basico_id integer NOT NULL
);
 )   DROP TABLE public.app_usuario_estendido;
       public         heap    postgres    false            ?            1259    25876    app_usuario_estendido_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.app_usuario_estendido_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.app_usuario_estendido_id_seq;
       public          postgres    false    226            ?           0    0    app_usuario_estendido_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.app_usuario_estendido_id_seq OWNED BY public.app_usuario_estendido.id;
          public          postgres    false    225            ?            1259    25890    app_usuario_trabajo    TABLE     ?   CREATE TABLE public.app_usuario_trabajo (
    id integer NOT NULL,
    cargo character varying(127),
    especialidad character varying(127),
    trabajo_id integer NOT NULL,
    usuario_id integer NOT NULL
);
 '   DROP TABLE public.app_usuario_trabajo;
       public         heap    postgres    false            ?            1259    25888    app_usuario_trabajo_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.app_usuario_trabajo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.app_usuario_trabajo_id_seq;
       public          postgres    false    228            ?           0    0    app_usuario_trabajo_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.app_usuario_trabajo_id_seq OWNED BY public.app_usuario_trabajo.id;
          public          postgres    false    227            ?            1259    25707 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            ?            1259    25705    auth_group_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    207            ?           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    206            ?            1259    25717    auth_group_permissions    TABLE     ?   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            ?            1259    25715    auth_group_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    209            ?           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    208            ?            1259    25699    auth_permission    TABLE     ?   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            ?            1259    25697    auth_permission_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    205            ?           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    204            ?            1259    25725 	   auth_user    TABLE     ?  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            ?            1259    25735    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            ?            1259    25733    auth_user_groups_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    213            ?           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    212            ?            1259    25723    auth_user_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    211            ?           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    210            ?            1259    25743    auth_user_user_permissions    TABLE     ?   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            ?            1259    25741 !   auth_user_user_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    215            ?           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    214            ?            1259    25803    django_admin_log    TABLE     ?  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            ?            1259    25801    django_admin_log_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    217            ?           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    216            ?            1259    25689    django_content_type    TABLE     ?   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            ?            1259    25687    django_content_type_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    203            ?           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    202            ?            1259    25678    django_migrations    TABLE     ?   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            ?            1259    25676    django_migrations_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    201            ?           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    200            ?            1259    25834    django_session    TABLE     ?   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            ?           2604    25931    app_amigo id    DEFAULT     l   ALTER TABLE ONLY public.app_amigo ALTER COLUMN id SET DEFAULT nextval('public.app_amigo_id_seq'::regclass);
 ;   ALTER TABLE public.app_amigo ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    235    236            ?           2604    25923    app_autor_tutor id    DEFAULT     x   ALTER TABLE ONLY public.app_autor_tutor ALTER COLUMN id SET DEFAULT nextval('public.app_autor_tutor_id_seq'::regclass);
 A   ALTER TABLE public.app_autor_tutor ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    234    234            ?           2604    25849    app_carrera id    DEFAULT     p   ALTER TABLE ONLY public.app_carrera ALTER COLUMN id SET DEFAULT nextval('public.app_carrera_id_seq'::regclass);
 =   ALTER TABLE public.app_carrera ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            ?           2604    25912    app_documento id    DEFAULT     t   ALTER TABLE ONLY public.app_documento ALTER COLUMN id SET DEFAULT nextval('public.app_documento_id_seq'::regclass);
 ?   ALTER TABLE public.app_documento ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    232    232            ?           2604    25857    app_persona id    DEFAULT     p   ALTER TABLE ONLY public.app_persona ALTER COLUMN id SET DEFAULT nextval('public.app_persona_id_seq'::regclass);
 =   ALTER TABLE public.app_persona ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222            ?           2604    25873    app_trabajo id    DEFAULT     p   ALTER TABLE ONLY public.app_trabajo ALTER COLUMN id SET DEFAULT nextval('public.app_trabajo_id_seq'::regclass);
 =   ALTER TABLE public.app_trabajo ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223    224            ?           2604    25901    app_usuario_carrera id    DEFAULT     ?   ALTER TABLE ONLY public.app_usuario_carrera ALTER COLUMN id SET DEFAULT nextval('public.app_usuario_carrera_id_seq'::regclass);
 E   ALTER TABLE public.app_usuario_carrera ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229    230            ?           2604    25881    app_usuario_estendido id    DEFAULT     ?   ALTER TABLE ONLY public.app_usuario_estendido ALTER COLUMN id SET DEFAULT nextval('public.app_usuario_estendido_id_seq'::regclass);
 G   ALTER TABLE public.app_usuario_estendido ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    226    226            ?           2604    25893    app_usuario_trabajo id    DEFAULT     ?   ALTER TABLE ONLY public.app_usuario_trabajo ALTER COLUMN id SET DEFAULT nextval('public.app_usuario_trabajo_id_seq'::regclass);
 E   ALTER TABLE public.app_usuario_trabajo ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227    228            ?           2604    25710    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206    207            ?           2604    25720    auth_group_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    209    209            ?           2604    25702    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205            ?           2604    25728    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    211    211            ?           2604    25738    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212    213            ?           2604    25746    auth_user_user_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            ?           2604    25806    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            ?           2604    25692    django_content_type id    DEFAULT     ?   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            ?           2604    25681    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    200    201    201            ?          0    25928 	   app_amigo 
   TABLE DATA           N   COPY public.app_amigo (id, nivel_amistad, persona_id, usuario_id) FROM stdin;
    public          postgres    false    236   ?       ?          0    25920    app_autor_tutor 
   TABLE DATA           V   COPY public.app_autor_tutor (id, documento_id, persona_id, participacion) FROM stdin;
    public          postgres    false    234   :?       ?          0    25846    app_carrera 
   TABLE DATA           9   COPY public.app_carrera (id, nombre_carrera) FROM stdin;
    public          postgres    false    220   f?       ?          0    25909    app_documento 
   TABLE DATA           ]   COPY public.app_documento (id, titulo, resumen, fecha, idioma, pais, link, tema) FROM stdin;
    public          postgres    false    232   ??       ?          0    25854    app_persona 
   TABLE DATA           ?   COPY public.app_persona (id, primer_nombre, segundo_nombbre, primer_apellido, segundo_apellido, sexo, fecha_nacimiento) FROM stdin;
    public          postgres    false    222   ??       ?          0    25870    app_trabajo 
   TABLE DATA           8   COPY public.app_trabajo (id, nombre_centro) FROM stdin;
    public          postgres    false    224   ??       ?          0    25898    app_usuario_carrera 
   TABLE DATA           ?   COPY public.app_usuario_carrera (id, anno, completado, maestria, titulo_maestria, doctorado, titulo_doctorado, carrera_id, usuario_id) FROM stdin;
    public          postgres    false    230   ??       ?          0    25878    app_usuario_estendido 
   TABLE DATA           ?   COPY public.app_usuario_estendido (id, pais_origen, pais_actual, notificacion_correo, nivel_academico, persona_id, usuario_basico_id) FROM stdin;
    public          postgres    false    226   ?       ?          0    25890    app_usuario_trabajo 
   TABLE DATA           ^   COPY public.app_usuario_trabajo (id, cargo, especialidad, trabajo_id, usuario_id) FROM stdin;
    public          postgres    false    228   C?       ?          0    25707 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    207   ??       ?          0    25717    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    209   ??       ?          0    25699    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    205   ??       ?          0    25725 	   auth_user 
   TABLE DATA           ?   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    211   E?       ?          0    25735    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    213    ?       ?          0    25743    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    215   ?       ?          0    25803    django_admin_log 
   TABLE DATA           ?   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    217   :?       ?          0    25689    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    203   ??       ?          0    25678    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    201   7?       ?          0    25834    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    218   ?      ?           0    0    app_amigo_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.app_amigo_id_seq', 1, false);
          public          postgres    false    235            ?           0    0    app_autor_tutor_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.app_autor_tutor_id_seq', 3, true);
          public          postgres    false    233            ?           0    0    app_carrera_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.app_carrera_id_seq', 1, true);
          public          postgres    false    219            ?           0    0    app_documento_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.app_documento_id_seq', 3, true);
          public          postgres    false    231            ?           0    0    app_persona_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.app_persona_id_seq', 1, true);
          public          postgres    false    221            ?           0    0    app_trabajo_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.app_trabajo_id_seq', 2, true);
          public          postgres    false    223            ?           0    0    app_usuario_carrera_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.app_usuario_carrera_id_seq', 1, true);
          public          postgres    false    229            ?           0    0    app_usuario_estendido_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.app_usuario_estendido_id_seq', 4, true);
          public          postgres    false    225            ?           0    0    app_usuario_trabajo_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.app_usuario_trabajo_id_seq', 1, true);
          public          postgres    false    227            ?           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    206            ?           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    208            ?           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 64, true);
          public          postgres    false    204            ?           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    212            ?           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);
          public          postgres    false    210            ?           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    214            ?           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 25, true);
          public          postgres    false    216            ?           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 16, true);
          public          postgres    false    202            ?           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 27, true);
          public          postgres    false    200            ?           2606    25933    app_amigo app_amigo_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.app_amigo
    ADD CONSTRAINT app_amigo_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.app_amigo DROP CONSTRAINT app_amigo_pkey;
       public            postgres    false    236            ?           2606    25925 $   app_autor_tutor app_autor_tutor_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.app_autor_tutor
    ADD CONSTRAINT app_autor_tutor_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.app_autor_tutor DROP CONSTRAINT app_autor_tutor_pkey;
       public            postgres    false    234            ?           2606    25851    app_carrera app_carrera_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.app_carrera
    ADD CONSTRAINT app_carrera_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.app_carrera DROP CONSTRAINT app_carrera_pkey;
       public            postgres    false    220            ?           2606    25917     app_documento app_documento_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.app_documento
    ADD CONSTRAINT app_documento_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.app_documento DROP CONSTRAINT app_documento_pkey;
       public            postgres    false    232            ?           2606    25859    app_persona app_persona_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.app_persona
    ADD CONSTRAINT app_persona_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.app_persona DROP CONSTRAINT app_persona_pkey;
       public            postgres    false    222            ?           2606    25875    app_trabajo app_trabajo_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.app_trabajo
    ADD CONSTRAINT app_trabajo_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.app_trabajo DROP CONSTRAINT app_trabajo_pkey;
       public            postgres    false    224            ?           2606    25906 ,   app_usuario_carrera app_usuario_carrera_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.app_usuario_carrera
    ADD CONSTRAINT app_usuario_carrera_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.app_usuario_carrera DROP CONSTRAINT app_usuario_carrera_pkey;
       public            postgres    false    230            ?           2606    25885 :   app_usuario_estendido app_usuario_estendido_persona_id_key 
   CONSTRAINT     {   ALTER TABLE ONLY public.app_usuario_estendido
    ADD CONSTRAINT app_usuario_estendido_persona_id_key UNIQUE (persona_id);
 d   ALTER TABLE ONLY public.app_usuario_estendido DROP CONSTRAINT app_usuario_estendido_persona_id_key;
       public            postgres    false    226            ?           2606    25883 0   app_usuario_estendido app_usuario_estendido_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.app_usuario_estendido
    ADD CONSTRAINT app_usuario_estendido_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.app_usuario_estendido DROP CONSTRAINT app_usuario_estendido_pkey;
       public            postgres    false    226            ?           2606    25887 A   app_usuario_estendido app_usuario_estendido_usuario_basico_id_key 
   CONSTRAINT     ?   ALTER TABLE ONLY public.app_usuario_estendido
    ADD CONSTRAINT app_usuario_estendido_usuario_basico_id_key UNIQUE (usuario_basico_id);
 k   ALTER TABLE ONLY public.app_usuario_estendido DROP CONSTRAINT app_usuario_estendido_usuario_basico_id_key;
       public            postgres    false    226            ?           2606    25895 ,   app_usuario_trabajo app_usuario_trabajo_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.app_usuario_trabajo
    ADD CONSTRAINT app_usuario_trabajo_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.app_usuario_trabajo DROP CONSTRAINT app_usuario_trabajo_pkey;
       public            postgres    false    228            ?           2606    25832    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    207            ?           2606    25769 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    209    209            ?           2606    25722 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    209            ?           2606    25712    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    207            ?           2606    25755 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    205    205            ?           2606    25704 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    205            ?           2606    25740 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    213            ?           2606    25784 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    213    213            ?           2606    25730    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    211            ?           2606    25748 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    215            ?           2606    25798 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 ?   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    215    215            ?           2606    25826     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    211            ?           2606    25812 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    217            ?           2606    25696 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    203    203            ?           2606    25694 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    203            ?           2606    25686 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    201            ?           2606    25841 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    218            ?           1259    25996    app_amigo_persona_id_d7b6df73    INDEX     Y   CREATE INDEX app_amigo_persona_id_d7b6df73 ON public.app_amigo USING btree (persona_id);
 1   DROP INDEX public.app_amigo_persona_id_d7b6df73;
       public            postgres    false    236            ?           1259    25997    app_amigo_usuario_id_e194d9b8    INDEX     Y   CREATE INDEX app_amigo_usuario_id_e194d9b8 ON public.app_amigo USING btree (usuario_id);
 1   DROP INDEX public.app_amigo_usuario_id_e194d9b8;
       public            postgres    false    236            ?           1259    25984 %   app_autor_tutor_documento_id_aa16fbf0    INDEX     i   CREATE INDEX app_autor_tutor_documento_id_aa16fbf0 ON public.app_autor_tutor USING btree (documento_id);
 9   DROP INDEX public.app_autor_tutor_documento_id_aa16fbf0;
       public            postgres    false    234            ?           1259    25985 #   app_autor_tutor_persona_id_fa1189ac    INDEX     e   CREATE INDEX app_autor_tutor_persona_id_fa1189ac ON public.app_autor_tutor USING btree (persona_id);
 7   DROP INDEX public.app_autor_tutor_persona_id_fa1189ac;
       public            postgres    false    234            ?           1259    25966 '   app_usuario_carrera_carrera_id_6e3c779c    INDEX     m   CREATE INDEX app_usuario_carrera_carrera_id_6e3c779c ON public.app_usuario_carrera USING btree (carrera_id);
 ;   DROP INDEX public.app_usuario_carrera_carrera_id_6e3c779c;
       public            postgres    false    230            ?           1259    25967 '   app_usuario_carrera_usuario_id_ac4e577c    INDEX     m   CREATE INDEX app_usuario_carrera_usuario_id_ac4e577c ON public.app_usuario_carrera USING btree (usuario_id);
 ;   DROP INDEX public.app_usuario_carrera_usuario_id_ac4e577c;
       public            postgres    false    230            ?           1259    25954 '   app_usuario_trabajo_trabajo_id_27ed77c5    INDEX     m   CREATE INDEX app_usuario_trabajo_trabajo_id_27ed77c5 ON public.app_usuario_trabajo USING btree (trabajo_id);
 ;   DROP INDEX public.app_usuario_trabajo_trabajo_id_27ed77c5;
       public            postgres    false    228            ?           1259    25955 '   app_usuario_trabajo_usuario_id_52bd409c    INDEX     m   CREATE INDEX app_usuario_trabajo_usuario_id_52bd409c ON public.app_usuario_trabajo USING btree (usuario_id);
 ;   DROP INDEX public.app_usuario_trabajo_usuario_id_52bd409c;
       public            postgres    false    228            ?           1259    25833    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    207            ?           1259    25770 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    209            ?           1259    25771 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    209            ?           1259    25756 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    205            ?           1259    25786 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    213            ?           1259    25785 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    213            ?           1259    25800 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     ?   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    215            ?           1259    25799 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    215            ?           1259    25827     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    211            ?           1259    25823 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    217            ?           1259    25824 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    217            ?           1259    25843 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    218            ?           1259    25842 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    218                       2606    25986 9   app_amigo app_amigo_persona_id_d7b6df73_fk_app_persona_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.app_amigo
    ADD CONSTRAINT app_amigo_persona_id_d7b6df73_fk_app_persona_id FOREIGN KEY (persona_id) REFERENCES public.app_persona(id) DEFERRABLE INITIALLY DEFERRED;
 c   ALTER TABLE ONLY public.app_amigo DROP CONSTRAINT app_amigo_persona_id_d7b6df73_fk_app_persona_id;
       public          postgres    false    236    222    3031                       2606    25991 C   app_amigo app_amigo_usuario_id_e194d9b8_fk_app_usuario_estendido_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.app_amigo
    ADD CONSTRAINT app_amigo_usuario_id_e194d9b8_fk_app_usuario_estendido_id FOREIGN KEY (usuario_id) REFERENCES public.app_usuario_estendido(id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY public.app_amigo DROP CONSTRAINT app_amigo_usuario_id_e194d9b8_fk_app_usuario_estendido_id;
       public          postgres    false    226    236    3037                       2606    25974 I   app_autor_tutor app_autor_tutor_documento_id_aa16fbf0_fk_app_documento_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.app_autor_tutor
    ADD CONSTRAINT app_autor_tutor_documento_id_aa16fbf0_fk_app_documento_id FOREIGN KEY (documento_id) REFERENCES public.app_documento(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.app_autor_tutor DROP CONSTRAINT app_autor_tutor_documento_id_aa16fbf0_fk_app_documento_id;
       public          postgres    false    234    3049    232                       2606    25979 E   app_autor_tutor app_autor_tutor_persona_id_fa1189ac_fk_app_persona_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.app_autor_tutor
    ADD CONSTRAINT app_autor_tutor_persona_id_fa1189ac_fk_app_persona_id FOREIGN KEY (persona_id) REFERENCES public.app_persona(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.app_autor_tutor DROP CONSTRAINT app_autor_tutor_persona_id_fa1189ac_fk_app_persona_id;
       public          postgres    false    222    3031    234            ?           2606    25956 M   app_usuario_carrera app_usuario_carrera_carrera_id_6e3c779c_fk_app_carrera_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.app_usuario_carrera
    ADD CONSTRAINT app_usuario_carrera_carrera_id_6e3c779c_fk_app_carrera_id FOREIGN KEY (carrera_id) REFERENCES public.app_carrera(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.app_usuario_carrera DROP CONSTRAINT app_usuario_carrera_carrera_id_6e3c779c_fk_app_carrera_id;
       public          postgres    false    220    3029    230                        2606    25961 H   app_usuario_carrera app_usuario_carrera_usuario_id_ac4e577c_fk_app_usuar    FK CONSTRAINT     ?   ALTER TABLE ONLY public.app_usuario_carrera
    ADD CONSTRAINT app_usuario_carrera_usuario_id_ac4e577c_fk_app_usuar FOREIGN KEY (usuario_id) REFERENCES public.app_usuario_estendido(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.app_usuario_carrera DROP CONSTRAINT app_usuario_carrera_usuario_id_ac4e577c_fk_app_usuar;
       public          postgres    false    3037    226    230            ?           2606    25939 R   app_usuario_estendido app_usuario_estendid_usuario_basico_id_149d3d35_fk_auth_user    FK CONSTRAINT     ?   ALTER TABLE ONLY public.app_usuario_estendido
    ADD CONSTRAINT app_usuario_estendid_usuario_basico_id_149d3d35_fk_auth_user FOREIGN KEY (usuario_basico_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.app_usuario_estendido DROP CONSTRAINT app_usuario_estendid_usuario_basico_id_149d3d35_fk_auth_user;
       public          postgres    false    3004    226    211            ?           2606    25934 Q   app_usuario_estendido app_usuario_estendido_persona_id_d8556890_fk_app_persona_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.app_usuario_estendido
    ADD CONSTRAINT app_usuario_estendido_persona_id_d8556890_fk_app_persona_id FOREIGN KEY (persona_id) REFERENCES public.app_persona(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.app_usuario_estendido DROP CONSTRAINT app_usuario_estendido_persona_id_d8556890_fk_app_persona_id;
       public          postgres    false    3031    222    226            ?           2606    25944 M   app_usuario_trabajo app_usuario_trabajo_trabajo_id_27ed77c5_fk_app_trabajo_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.app_usuario_trabajo
    ADD CONSTRAINT app_usuario_trabajo_trabajo_id_27ed77c5_fk_app_trabajo_id FOREIGN KEY (trabajo_id) REFERENCES public.app_trabajo(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.app_usuario_trabajo DROP CONSTRAINT app_usuario_trabajo_trabajo_id_27ed77c5_fk_app_trabajo_id;
       public          postgres    false    224    3033    228            ?           2606    25949 H   app_usuario_trabajo app_usuario_trabajo_usuario_id_52bd409c_fk_app_usuar    FK CONSTRAINT     ?   ALTER TABLE ONLY public.app_usuario_trabajo
    ADD CONSTRAINT app_usuario_trabajo_usuario_id_52bd409c_fk_app_usuar FOREIGN KEY (usuario_id) REFERENCES public.app_usuario_estendido(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.app_usuario_trabajo DROP CONSTRAINT app_usuario_trabajo_usuario_id_52bd409c_fk_app_usuar;
       public          postgres    false    228    3037    226            ?           2606    25763 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    209    205    2991            ?           2606    25758 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    207    209    2996            ?           2606    25749 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    205    2986    203            ?           2606    25778 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    207    213    2996            ?           2606    25773 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    211    3004    213            ?           2606    25792 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    215    205    2991            ?           2606    25787 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    211    3004    215            ?           2606    25813 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    203    217    2986            ?           2606    25818 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    3004    217    211            ?      x?????? ? ?      ?      x?3?4? .#N#0m?i?c???? 9V?      ?   (   x?3???KO??L-:?6Q?3/-?(????D?=... ?i      ?   ?  x??V?r#7????P*??????Uk??h??H??fq????C?@?
\Μ?O?K??1$????D}??{?'?6eӑ?)?2N?1?&Qg??Ai?4吔I???-e????hK>?P???QO8?m?B?<!?ʑZU?u??????????T4m?M???????E?????R%Ҩ?+??Wg?M|?|,??-?w????nԓSih9?3m??ซ?'vc5iy??Чm?J?\*????"?4?)ݨg?66?~???)???H?????m?i? ?:??ٚm?+K?#??YOx?%U<????rF??????t?[??wRo39B?4U?ᤝ????1܏??Ғ????P??i???7??????ۇ??????d&~?????dЋ7??=?H???чgkt???`&??YBV??N?rдٽ???Z?|*?.ѼL??g?pA???ϬZd_@SxÈʌJ`3???f?ՊC{?z@?4????C?S???:?N????ޓ????vE??~??)?fԡZ????rQ}?l??pǕ????}3G]Q?????l>b???J9?L?,?H|???{e/?L4 WP??ߜs?!?\0	f?Q5???}X?ѩG?d???Ϭ??rX??+c[XD???0?Z??m??><????"???(?(@??V?nlY}??`v?04I? &Иs1??Hे???S??=;?*4k?h????p?
?t$q??d???c?????ڇ???t"?
??=??t??#????JM??? H?$!?%֒?ÈM?ٽ???a:?HU(S
3jU:H?NE>MAi,A'kc?9?	???@˞??w??}<???}??2????;????#u£????????a3?i?(??}?Uw?_?~w}w1?N#??إu$???Ǣ:??â?>??{C?{?o??d`d??I?XG5???_{K?`?j???ڴ??dv?L?8̗????Zv???J.Z̛#?ma???%?{[????,Dj?iP??`??uUjCi5!?`,??ƫN?T@???,)2??!WdEr??[?'=ﳎ?ƎO?w???,??G;??=???x6d:?w.?@#????5?Q[??*V??taj??????J+3?w?P??f??O???Nϊ???U??? c??A?$CN"??8v?W????ռ???tSq?.p?
}?~^*?I?p?????g???7WWW"??      ?   5   x?3?t-?L?????M<?11'39??9??83???????D??@?М+F??? ??H      ?      x?3?t?rt?????? ?V      ?      x?3?4?,?L??????&\1z\\\ =?Z      ?      x?3?t.MJ?%??????\1z\\\ Nn      ?   /   x?3?tL????,.)JL?/?(?O/J?ML?<?9?ӈӄ+F??? ??      ?      x?????? ? ?      ?      x?????? ? ?      ?   y  x?m?I??0E??)|????a?k4?`,?QЖINз?Ěi?,_?__???~?????5?iX?oܺ?\?y髌?~???%?v?+-???M???????@-+{????s???Ҥ?OZ?Q?b?Z?aQ?b/"ѐY?⮬?>?????????Q??}ԅHКA9?T"????kV?????,`{?????.@?OG ?$g?v>6?|?m?????grmV?????E)`d???U??O??Qdt?k????_????WfޅA???i?1?f]?????[??4Ewa?+3?s????#L??@?!W??y??P𶕯?E쐑???!&q?2aC?????W?????_q??L?P????A(??L??q>?>??.?M?#	Z?#??c{????&3????0)!?e?Q???,vû????????e?T?????Un?w]U??????تڌ??$?bn&L?Dg2?8??8*E???\??N??????J??q???q?s?Y???î惡p^5W;ޛV??j???G_Q???·&??; cR?JEF%????%]????:7ۏpAA-?|k?VҤL7???$S5?TK4kX?ٍ??c??֗?k??d?h@T?X??âXŪ?2?????????|?      ?   ?   x?-??
?@E?ǯ??W?3㙑? +?bH&E?F??????3h?`=,6#?????~???:?Ng???q???.??s?)???{Ar???:?N??5U?f?n?yC???O8pf?ip?????I?i! i??^?+!$?y??"?h?*??66?{??0a#؈?#??4@h;?i??.?      ?      x?????? ? ?      ?      x?????? ? ?      ?   6  x?͖?n?0ǯۧ?z????8w? ?+>n????<?q??? ?0< ?G??q??cM?"?? M??8??;?'|??G?rnre(d?\U#>zQ???v?n?\8?2qe??IN?|??q???z2 r`?fZ%?g.PG?ud.?7:|??:?U????#/??Xϖ??P?E???/?rȨ4Ri;??K???#?^?r??b\?? ?C?????f(k??/?s?+??*?gq6???ZO??vd????M???+??gEJ?^??ω???*?Pd??M????j??lE?t????m?%???-y????q?[O.s? n(H???}?bO΂???{<?}???j??&A??r?sn?V??0@???]Lmh?8yB&?q?n?a?o?!??/m6x?ȾYQg=?Q*?????yTf?\20|='{/??,l???wq
2mgwޡ9?u????]??]?i??b??RQN?X׾kg??????BWp?Ÿ???Nvh??V?1F?޽z?b?Az^??O?B-ځ????K?'??E?#@9?3?sA3+G?`?7?I?n???y߸Y???Էҵ?!?i]???????̗???????6ss?7BQ?S?7ly]?t?I?BR?A?,1?M&??p??*?#?H??????
?W??o?p[DC(????????g?p֌?LKlIW?^?Z??Dfۈ_l?0??ۅx?rv?v?{mA??????q?`???~????j}?D?F"?>??Pk3P"%??~C??~ Qc??`N????????b??(-???j??????60G`?	k???N?͉F!%?2;?|??>??x?wd       ?   ?   x?U???0???????]L?d???@{???vY?n?9? ֠>?/???,?eI???#?????EI`43?\???H?&?Ԧuo?b0%3?	µQݢn??Ϗ=c?M?jo?,??7???Ȏ?!EZr?Uch?T7(?????$?s	???	 ?7!_x      ?   @  x????n?0?????yf<>?,+YV¦H?Hվ?ڀIJ?R	q??oƿ????6cь?WW!??)??W'?????dBky|ă???? ?P?????e??Bj2?w]?^C???닺?(\??:??;H?}?]AwE????e۸?????{[?C ?*??v?SZ??Y>???5?.?U?4٨?k|?|5?늾.?!?yW?OW?5??UY??ʬ*ZT?!??ڗ?+???ͮ?h???????1?˞@?~tT~c?e?٭??s?)?բB??ne??;??bh?Hx???S/?|???????????o{W??????UG?????*fe?I?&??ѯTF??8?@,?k?޺?i욷Z5?n]??p]?~~=L?~>V?|?@?bY??v[??r?ܮ?' ???@9BFF??ӳ???????or ????2?&?*??y?c??̸?s?x????	?[??9?g??M0&??`?C??Y?Pj?)?j?pWa????/?ļg?`?K??C`Be?jX*s???B}?u s?2?y?*???%ܰD?0????`?^?8?+L8啺??y?1??"gQ?d???? ?ǈ      ?   D  x????n?0 E??W?4m?(${?(??	"m?" ?@Q?2?׏?a_???ܜ?枲?G)4l??ݥy?????f??E??^x????p?4D???????>m(????%k??V?Ly]?#?,?df?yV??NF2x?KfhK_TeFۢu$;Оp?????U9l?.?????W??+FLs??:??\??vV??ƁJ?	Q??Ϧ?? ????*???z??? ?{??A?Lt???+JB??Fx{A ??3d?¥-?4?`iۚlg\]Z??S?]?c???i??}??v????$jr\ \lα?-???????[???     