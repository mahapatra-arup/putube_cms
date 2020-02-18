PGDMP         1    
            x            pytube    12.0    12.0 ;   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    116397    pytube    DATABASE     �   CREATE DATABASE pytube WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE pytube;
                postgres    false            �            1259    116581    Menu    TABLE     �  CREATE TABLE public."Menu" (
    id integer NOT NULL,
    title character varying(100) NOT NULL,
    toolstrip character varying(255) NOT NULL,
    url character varying(255) NOT NULL,
    status boolean NOT NULL,
    lvl integer NOT NULL,
    slug character varying(50) NOT NULL,
    image character varying(100),
    view_title character varying(10) NOT NULL,
    page_template_id integer NOT NULL,
    parent_id integer
);
    DROP TABLE public."Menu";
       public         heap    postgres    false            �            1259    116566    Page_Template    TABLE     �   CREATE TABLE public."Page_Template" (
    id integer NOT NULL,
    name character varying(20) NOT NULL,
    url character varying(20) NOT NULL,
    description character varying(500) NOT NULL,
    is_active boolean NOT NULL
);
 #   DROP TABLE public."Page_Template";
       public         heap    postgres    false            �            1259    116658    Post    TABLE     B  CREATE TABLE public."Post" (
    id integer NOT NULL,
    title character varying(100) NOT NULL,
    slug character varying(100) NOT NULL,
    created_on timestamp with time zone NOT NULL,
    updated_on date NOT NULL,
    content text NOT NULL,
    meta_description text,
    keywords text NOT NULL,
    featured_image character varying(100),
    document_file character varying(100),
    status character varying(10) NOT NULL,
    category_id integer NOT NULL,
    menu_id integer NOT NULL,
    parent_id integer,
    term_id integer NOT NULL,
    user_id integer NOT NULL
);
    DROP TABLE public."Post";
       public         heap    postgres    false            �            1259    116673    Post_photos    TABLE     �   CREATE TABLE public."Post_photos" (
    id integer NOT NULL,
    post_id integer NOT NULL,
    gal_image_id integer NOT NULL
);
 !   DROP TABLE public."Post_photos";
       public         heap    postgres    false            �            1259    116681 	   Post_tags    TABLE     y   CREATE TABLE public."Post_tags" (
    id integer NOT NULL,
    post_id integer NOT NULL,
    tags_id integer NOT NULL
);
    DROP TABLE public."Post_tags";
       public         heap    postgres    false            �            1259    116429 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    116427    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    209            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    208            �            1259    116439    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    116437    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    211            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    210            �            1259    116421    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    116419    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    207            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    206            �            1259    116447 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
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
       public         heap    postgres    false            �            1259    116457    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    116455    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    215            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    214            �            1259    116445    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    213            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    212            �            1259    116465    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    116463 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    217            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    216                       1259    116935    dashboard_userdashboardmodule    TABLE        CREATE TABLE public.dashboard_userdashboardmodule (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    module character varying(255) NOT NULL,
    app_label character varying(255),
    "user" integer NOT NULL,
    "column" integer NOT NULL,
    "order" integer NOT NULL,
    settings text NOT NULL,
    children text NOT NULL,
    collapsed boolean NOT NULL,
    CONSTRAINT dashboard_userdashboardmodule_column_check CHECK (("column" >= 0)),
    CONSTRAINT dashboard_userdashboardmodule_user_check CHECK (("user" >= 0))
);
 1   DROP TABLE public.dashboard_userdashboardmodule;
       public         heap    postgres    false                       1259    116933 $   dashboard_userdashboardmodule_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dashboard_userdashboardmodule_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.dashboard_userdashboardmodule_id_seq;
       public          postgres    false    258            �           0    0 $   dashboard_userdashboardmodule_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.dashboard_userdashboardmodule_id_seq OWNED BY public.dashboard_userdashboardmodule.id;
          public          postgres    false    257            �            1259    116525    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
       public         heap    postgres    false            �            1259    116523    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    219            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    218            �            1259    116411    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    116409    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    205            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    204            �            1259    116400    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    116398    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    203            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    202            �            1259    116765    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    116623 	   gal_image    TABLE     �   CREATE TABLE public.gal_image (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    photo character varying(100)
);
    DROP TABLE public.gal_image;
       public         heap    postgres    false            �            1259    116621    gal_image_id_seq    SEQUENCE     �   CREATE SEQUENCE public.gal_image_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.gal_image_id_seq;
       public          postgres    false    227            �           0    0    gal_image_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.gal_image_id_seq OWNED BY public.gal_image.id;
          public          postgres    false    226            �            1259    116904    jet_bookmark    TABLE       CREATE TABLE public.jet_bookmark (
    id integer NOT NULL,
    url character varying(200) NOT NULL,
    title character varying(255) NOT NULL,
    "user" integer NOT NULL,
    date_add timestamp with time zone NOT NULL,
    CONSTRAINT jet_bookmark_user_check CHECK (("user" >= 0))
);
     DROP TABLE public.jet_bookmark;
       public         heap    postgres    false            �            1259    116902    jet_bookmark_id_seq    SEQUENCE     �   CREATE SEQUENCE public.jet_bookmark_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.jet_bookmark_id_seq;
       public          postgres    false    254            �           0    0    jet_bookmark_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.jet_bookmark_id_seq OWNED BY public.jet_bookmark.id;
          public          postgres    false    253                        1259    116913    jet_pinnedapplication    TABLE     
  CREATE TABLE public.jet_pinnedapplication (
    id integer NOT NULL,
    app_label character varying(255) NOT NULL,
    "user" integer NOT NULL,
    date_add timestamp with time zone NOT NULL,
    CONSTRAINT jet_pinnedapplication_user_check CHECK (("user" >= 0))
);
 )   DROP TABLE public.jet_pinnedapplication;
       public         heap    postgres    false            �            1259    116911    jet_pinnedapplication_id_seq    SEQUENCE     �   CREATE SEQUENCE public.jet_pinnedapplication_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.jet_pinnedapplication_id_seq;
       public          postgres    false    256            �           0    0    jet_pinnedapplication_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.jet_pinnedapplication_id_seq OWNED BY public.jet_pinnedapplication.id;
          public          postgres    false    255            �            1259    116816    organization_org_contactno    TABLE     �   CREATE TABLE public.organization_org_contactno (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    ph character varying(13) NOT NULL
);
 .   DROP TABLE public.organization_org_contactno;
       public         heap    postgres    false            �            1259    116814 !   organization_org_contactno_id_seq    SEQUENCE     �   CREATE SEQUENCE public.organization_org_contactno_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.organization_org_contactno_id_seq;
       public          postgres    false    244            �           0    0 !   organization_org_contactno_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.organization_org_contactno_id_seq OWNED BY public.organization_org_contactno.id;
          public          postgres    false    243            �            1259    116839    organization_org_details    TABLE     �  CREATE TABLE public.organization_org_details (
    id integer NOT NULL,
    org_name character varying(200) NOT NULL,
    org_code character varying(200) NOT NULL,
    at character varying(200) NOT NULL,
    po character varying(200) NOT NULL,
    block character varying(200) NOT NULL,
    sub_division character varying(200) NOT NULL,
    ps character varying(200) NOT NULL,
    dist character varying(200) NOT NULL,
    pin integer NOT NULL,
    state character varying(200) NOT NULL,
    state_code character varying(200) NOT NULL,
    country character varying(200) NOT NULL,
    area character varying(100) NOT NULL,
    map_url text NOT NULL,
    logo character varying(100),
    logo1 character varying(100),
    banner_logo character varying(100),
    website character varying(200) NOT NULL,
    email character varying(254) NOT NULL,
    fax character varying(50) NOT NULL,
    slug character varying(50) NOT NULL,
    updated_on date NOT NULL
);
 ,   DROP TABLE public.organization_org_details;
       public         heap    postgres    false            �            1259    116854 #   organization_org_details_contact_no    TABLE     �   CREATE TABLE public.organization_org_details_contact_no (
    id integer NOT NULL,
    org_details_id integer NOT NULL,
    org_contactno_id integer NOT NULL
);
 7   DROP TABLE public.organization_org_details_contact_no;
       public         heap    postgres    false            �            1259    116852 *   organization_org_details_contact_no_id_seq    SEQUENCE     �   CREATE SEQUENCE public.organization_org_details_contact_no_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public.organization_org_details_contact_no_id_seq;
       public          postgres    false    250            �           0    0 *   organization_org_details_contact_no_id_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public.organization_org_details_contact_no_id_seq OWNED BY public.organization_org_details_contact_no.id;
          public          postgres    false    249            �            1259    116837    organization_org_details_id_seq    SEQUENCE     �   CREATE SEQUENCE public.organization_org_details_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.organization_org_details_id_seq;
       public          postgres    false    248            �           0    0    organization_org_details_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.organization_org_details_id_seq OWNED BY public.organization_org_details.id;
          public          postgres    false    247            �            1259    116862 '   organization_org_details_social_details    TABLE     �   CREATE TABLE public.organization_org_details_social_details (
    id integer NOT NULL,
    org_details_id integer NOT NULL,
    org_socialdetails_id integer NOT NULL
);
 ;   DROP TABLE public.organization_org_details_social_details;
       public         heap    postgres    false            �            1259    116860 .   organization_org_details_social_details_id_seq    SEQUENCE     �   CREATE SEQUENCE public.organization_org_details_social_details_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE public.organization_org_details_social_details_id_seq;
       public          postgres    false    252            �           0    0 .   organization_org_details_social_details_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.organization_org_details_social_details_id_seq OWNED BY public.organization_org_details_social_details.id;
          public          postgres    false    251            �            1259    116826    organization_org_socialdetails    TABLE     #  CREATE TABLE public.organization_org_socialdetails (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    icon character varying(100) NOT NULL,
    css_class character varying(100) NOT NULL,
    activity boolean NOT NULL,
    social_link character varying(500) NOT NULL
);
 2   DROP TABLE public.organization_org_socialdetails;
       public         heap    postgres    false            �            1259    116824 %   organization_org_socialdetails_id_seq    SEQUENCE     �   CREATE SEQUENCE public.organization_org_socialdetails_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.organization_org_socialdetails_id_seq;
       public          postgres    false    246            �           0    0 %   organization_org_socialdetails_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.organization_org_socialdetails_id_seq OWNED BY public.organization_org_socialdetails.id;
          public          postgres    false    245                       1259    134077    organization_org_usefullinks    TABLE     �   CREATE TABLE public.organization_org_usefullinks (
    id integer NOT NULL,
    title character varying(100) NOT NULL,
    links character varying(200) NOT NULL
);
 0   DROP TABLE public.organization_org_usefullinks;
       public         heap    postgres    false                       1259    134075 #   organization_org_usefullinks_id_seq    SEQUENCE     �   CREATE SEQUENCE public.organization_org_usefullinks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.organization_org_usefullinks_id_seq;
       public          postgres    false    260            �           0    0 #   organization_org_usefullinks_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.organization_org_usefullinks_id_seq OWNED BY public.organization_org_usefullinks.id;
          public          postgres    false    259            �            1259    116579    page_menu_id_seq    SEQUENCE     �   CREATE SEQUENCE public.page_menu_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.page_menu_id_seq;
       public          postgres    false    223            �           0    0    page_menu_id_seq    SEQUENCE OWNED BY     B   ALTER SEQUENCE public.page_menu_id_seq OWNED BY public."Menu".id;
          public          postgres    false    222            �            1259    116564    page_page_template_id_seq    SEQUENCE     �   CREATE SEQUENCE public.page_page_template_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.page_page_template_id_seq;
       public          postgres    false    221            �           0    0    page_page_template_id_seq    SEQUENCE OWNED BY     T   ALTER SEQUENCE public.page_page_template_id_seq OWNED BY public."Page_Template".id;
          public          postgres    false    220            �            1259    116656    post_post_id_seq    SEQUENCE     �   CREATE SEQUENCE public.post_post_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.post_post_id_seq;
       public          postgres    false    233            �           0    0    post_post_id_seq    SEQUENCE OWNED BY     B   ALTER SEQUENCE public.post_post_id_seq OWNED BY public."Post".id;
          public          postgres    false    232            �            1259    116671    post_post_photos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.post_post_photos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.post_post_photos_id_seq;
       public          postgres    false    235            �           0    0    post_post_photos_id_seq    SEQUENCE OWNED BY     P   ALTER SEQUENCE public.post_post_photos_id_seq OWNED BY public."Post_photos".id;
          public          postgres    false    234            �            1259    116679    post_post_tags_id_seq    SEQUENCE     �   CREATE SEQUENCE public.post_post_tags_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.post_post_tags_id_seq;
       public          postgres    false    237            �           0    0    post_post_tags_id_seq    SEQUENCE OWNED BY     L   ALTER SEQUENCE public.post_post_tags_id_seq OWNED BY public."Post_tags".id;
          public          postgres    false    236            �            1259    116643 	   post_term    TABLE     �   CREATE TABLE public.post_term (
    id integer NOT NULL,
    name character varying(20) NOT NULL,
    slug character varying(20) NOT NULL,
    description character varying(500) NOT NULL,
    is_active boolean NOT NULL,
    user_id integer NOT NULL
);
    DROP TABLE public.post_term;
       public         heap    postgres    false            �            1259    116641    post_term_id_seq    SEQUENCE     �   CREATE SEQUENCE public.post_term_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.post_term_id_seq;
       public          postgres    false    231            �           0    0    post_term_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.post_term_id_seq OWNED BY public.post_term.id;
          public          postgres    false    230            �            1259    116608    pt_Category    TABLE     3  CREATE TABLE public."pt_Category" (
    id integer NOT NULL,
    name character varying(20) NOT NULL,
    slug character varying(20) NOT NULL,
    description character varying(500) NOT NULL,
    is_active boolean NOT NULL,
    meta_description text,
    meta_keywords text,
    user_id integer NOT NULL
);
 !   DROP TABLE public."pt_Category";
       public         heap    postgres    false            �            1259    116606    pt_Category_id_seq    SEQUENCE     �   CREATE SEQUENCE public."pt_Category_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."pt_Category_id_seq";
       public          postgres    false    225            �           0    0    pt_Category_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."pt_Category_id_seq" OWNED BY public."pt_Category".id;
          public          postgres    false    224            �            1259    116787    pt_Staff    TABLE     �  CREATE TABLE public."pt_Staff" (
    id integer NOT NULL,
    display_name character varying(50) NOT NULL,
    gender character varying(10) NOT NULL,
    dob timestamp with time zone NOT NULL,
    edu_qualification character varying(50) NOT NULL,
    designation character varying(50) NOT NULL,
    opinion text NOT NULL,
    contact_no character varying(13) NOT NULL,
    description text NOT NULL,
    staff_image character varying(100),
    slug character varying(100) NOT NULL,
    created_on timestamp with time zone NOT NULL,
    updated_on date NOT NULL,
    group_id integer NOT NULL,
    user_id integer NOT NULL,
    address text NOT NULL
);
    DROP TABLE public."pt_Staff";
       public         heap    postgres    false            �            1259    116777    pt_Staff_Group    TABLE     �   CREATE TABLE public."pt_Staff_Group" (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    is_active boolean NOT NULL,
    slug character varying(100) NOT NULL,
    lvl integer NOT NULL
);
 $   DROP TABLE public."pt_Staff_Group";
       public         heap    postgres    false            �            1259    116775    pt_Staff_Group_id_seq    SEQUENCE     �   CREATE SEQUENCE public."pt_Staff_Group_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."pt_Staff_Group_id_seq";
       public          postgres    false    240            �           0    0    pt_Staff_Group_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."pt_Staff_Group_id_seq" OWNED BY public."pt_Staff_Group".id;
          public          postgres    false    239            �            1259    116785    pt_Staff_id_seq    SEQUENCE     �   CREATE SEQUENCE public."pt_Staff_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."pt_Staff_id_seq";
       public          postgres    false    242            �           0    0    pt_Staff_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."pt_Staff_id_seq" OWNED BY public."pt_Staff".id;
          public          postgres    false    241            �            1259    116631    pt_Tags    TABLE     �   CREATE TABLE public."pt_Tags" (
    id integer NOT NULL,
    name character varying(20) NOT NULL,
    slug character varying(20) NOT NULL
);
    DROP TABLE public."pt_Tags";
       public         heap    postgres    false            �            1259    116629    pt_Tags_id_seq    SEQUENCE     �   CREATE SEQUENCE public."pt_Tags_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."pt_Tags_id_seq";
       public          postgres    false    229            �           0    0    pt_Tags_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."pt_Tags_id_seq" OWNED BY public."pt_Tags".id;
          public          postgres    false    228            C           2604    116584    Menu id    DEFAULT     i   ALTER TABLE ONLY public."Menu" ALTER COLUMN id SET DEFAULT nextval('public.page_menu_id_seq'::regclass);
 8   ALTER TABLE public."Menu" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223            B           2604    116569    Page_Template id    DEFAULT     {   ALTER TABLE ONLY public."Page_Template" ALTER COLUMN id SET DEFAULT nextval('public.page_page_template_id_seq'::regclass);
 A   ALTER TABLE public."Page_Template" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221            H           2604    116661    Post id    DEFAULT     i   ALTER TABLE ONLY public."Post" ALTER COLUMN id SET DEFAULT nextval('public.post_post_id_seq'::regclass);
 8   ALTER TABLE public."Post" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    233    233            I           2604    116676    Post_photos id    DEFAULT     w   ALTER TABLE ONLY public."Post_photos" ALTER COLUMN id SET DEFAULT nextval('public.post_post_photos_id_seq'::regclass);
 ?   ALTER TABLE public."Post_photos" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    235    235            J           2604    116684    Post_tags id    DEFAULT     s   ALTER TABLE ONLY public."Post_tags" ALTER COLUMN id SET DEFAULT nextval('public.post_post_tags_id_seq'::regclass);
 =   ALTER TABLE public."Post_tags" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    237    237            ;           2604    116432    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208    209            <           2604    116442    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    211    211            :           2604    116424    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207            =           2604    116450    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212    213            >           2604    116460    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            ?           2604    116468    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            V           2604    116938     dashboard_userdashboardmodule id    DEFAULT     �   ALTER TABLE ONLY public.dashboard_userdashboardmodule ALTER COLUMN id SET DEFAULT nextval('public.dashboard_userdashboardmodule_id_seq'::regclass);
 O   ALTER TABLE public.dashboard_userdashboardmodule ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    257    258    258            @           2604    116528    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            9           2604    116414    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            8           2604    116403    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203            E           2604    116626    gal_image id    DEFAULT     l   ALTER TABLE ONLY public.gal_image ALTER COLUMN id SET DEFAULT nextval('public.gal_image_id_seq'::regclass);
 ;   ALTER TABLE public.gal_image ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    227    227            R           2604    116907    jet_bookmark id    DEFAULT     r   ALTER TABLE ONLY public.jet_bookmark ALTER COLUMN id SET DEFAULT nextval('public.jet_bookmark_id_seq'::regclass);
 >   ALTER TABLE public.jet_bookmark ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    254    253    254            T           2604    116916    jet_pinnedapplication id    DEFAULT     �   ALTER TABLE ONLY public.jet_pinnedapplication ALTER COLUMN id SET DEFAULT nextval('public.jet_pinnedapplication_id_seq'::regclass);
 G   ALTER TABLE public.jet_pinnedapplication ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    256    255    256            M           2604    116819    organization_org_contactno id    DEFAULT     �   ALTER TABLE ONLY public.organization_org_contactno ALTER COLUMN id SET DEFAULT nextval('public.organization_org_contactno_id_seq'::regclass);
 L   ALTER TABLE public.organization_org_contactno ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    243    244    244            O           2604    116842    organization_org_details id    DEFAULT     �   ALTER TABLE ONLY public.organization_org_details ALTER COLUMN id SET DEFAULT nextval('public.organization_org_details_id_seq'::regclass);
 J   ALTER TABLE public.organization_org_details ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    247    248    248            P           2604    116857 &   organization_org_details_contact_no id    DEFAULT     �   ALTER TABLE ONLY public.organization_org_details_contact_no ALTER COLUMN id SET DEFAULT nextval('public.organization_org_details_contact_no_id_seq'::regclass);
 U   ALTER TABLE public.organization_org_details_contact_no ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    249    250    250            Q           2604    116865 *   organization_org_details_social_details id    DEFAULT     �   ALTER TABLE ONLY public.organization_org_details_social_details ALTER COLUMN id SET DEFAULT nextval('public.organization_org_details_social_details_id_seq'::regclass);
 Y   ALTER TABLE public.organization_org_details_social_details ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    251    252    252            N           2604    116829 !   organization_org_socialdetails id    DEFAULT     �   ALTER TABLE ONLY public.organization_org_socialdetails ALTER COLUMN id SET DEFAULT nextval('public.organization_org_socialdetails_id_seq'::regclass);
 P   ALTER TABLE public.organization_org_socialdetails ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    246    245    246            Y           2604    134080    organization_org_usefullinks id    DEFAULT     �   ALTER TABLE ONLY public.organization_org_usefullinks ALTER COLUMN id SET DEFAULT nextval('public.organization_org_usefullinks_id_seq'::regclass);
 N   ALTER TABLE public.organization_org_usefullinks ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    260    259    260            G           2604    116646    post_term id    DEFAULT     l   ALTER TABLE ONLY public.post_term ALTER COLUMN id SET DEFAULT nextval('public.post_term_id_seq'::regclass);
 ;   ALTER TABLE public.post_term ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230    231            D           2604    116611    pt_Category id    DEFAULT     t   ALTER TABLE ONLY public."pt_Category" ALTER COLUMN id SET DEFAULT nextval('public."pt_Category_id_seq"'::regclass);
 ?   ALTER TABLE public."pt_Category" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            L           2604    116790    pt_Staff id    DEFAULT     n   ALTER TABLE ONLY public."pt_Staff" ALTER COLUMN id SET DEFAULT nextval('public."pt_Staff_id_seq"'::regclass);
 <   ALTER TABLE public."pt_Staff" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    242    241    242            K           2604    116780    pt_Staff_Group id    DEFAULT     z   ALTER TABLE ONLY public."pt_Staff_Group" ALTER COLUMN id SET DEFAULT nextval('public."pt_Staff_Group_id_seq"'::regclass);
 B   ALTER TABLE public."pt_Staff_Group" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    240    240            F           2604    116634 
   pt_Tags id    DEFAULT     l   ALTER TABLE ONLY public."pt_Tags" ALTER COLUMN id SET DEFAULT nextval('public."pt_Tags_id_seq"'::regclass);
 ;   ALTER TABLE public."pt_Tags" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228    229            �          0    116581    Menu 
   TABLE DATA           ~   COPY public."Menu" (id, title, toolstrip, url, status, lvl, slug, image, view_title, page_template_id, parent_id) FROM stdin;
    public          postgres    false    223   Ь      �          0    116566    Page_Template 
   TABLE DATA           P   COPY public."Page_Template" (id, name, url, description, is_active) FROM stdin;
    public          postgres    false    221   ��      �          0    116658    Post 
   TABLE DATA           �   COPY public."Post" (id, title, slug, created_on, updated_on, content, meta_description, keywords, featured_image, document_file, status, category_id, menu_id, parent_id, term_id, user_id) FROM stdin;
    public          postgres    false    233   *�      �          0    116673    Post_photos 
   TABLE DATA           B   COPY public."Post_photos" (id, post_id, gal_image_id) FROM stdin;
    public          postgres    false    235   -�      �          0    116681 	   Post_tags 
   TABLE DATA           ;   COPY public."Post_tags" (id, post_id, tags_id) FROM stdin;
    public          postgres    false    237   q�      �          0    116429 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    209   ¸      �          0    116439    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    211   ߸      �          0    116421    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    207   ��      �          0    116447 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    213   �      �          0    116457    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    215   V�      �          0    116465    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    217   s�      �          0    116935    dashboard_userdashboardmodule 
   TABLE DATA           �   COPY public.dashboard_userdashboardmodule (id, title, module, app_label, "user", "column", "order", settings, children, collapsed) FROM stdin;
    public          postgres    false    258   ��      �          0    116525    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    219   x�      �          0    116411    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    205   ��      �          0    116400    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    203   ��      �          0    116765    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    238   ��      �          0    116623 	   gal_image 
   TABLE DATA           4   COPY public.gal_image (id, name, photo) FROM stdin;
    public          postgres    false    227   >�      �          0    116904    jet_bookmark 
   TABLE DATA           H   COPY public.jet_bookmark (id, url, title, "user", date_add) FROM stdin;
    public          postgres    false    254   9�      �          0    116913    jet_pinnedapplication 
   TABLE DATA           P   COPY public.jet_pinnedapplication (id, app_label, "user", date_add) FROM stdin;
    public          postgres    false    256   ��      �          0    116816    organization_org_contactno 
   TABLE DATA           B   COPY public.organization_org_contactno (id, name, ph) FROM stdin;
    public          postgres    false    244   ��      �          0    116839    organization_org_details 
   TABLE DATA           �   COPY public.organization_org_details (id, org_name, org_code, at, po, block, sub_division, ps, dist, pin, state, state_code, country, area, map_url, logo, logo1, banner_logo, website, email, fax, slug, updated_on) FROM stdin;
    public          postgres    false    248   ��      �          0    116854 #   organization_org_details_contact_no 
   TABLE DATA           c   COPY public.organization_org_details_contact_no (id, org_details_id, org_contactno_id) FROM stdin;
    public          postgres    false    250   ��      �          0    116862 '   organization_org_details_social_details 
   TABLE DATA           k   COPY public.organization_org_details_social_details (id, org_details_id, org_socialdetails_id) FROM stdin;
    public          postgres    false    252   ��      �          0    116826    organization_org_socialdetails 
   TABLE DATA           j   COPY public.organization_org_socialdetails (id, name, icon, css_class, activity, social_link) FROM stdin;
    public          postgres    false    246   �      �          0    134077    organization_org_usefullinks 
   TABLE DATA           H   COPY public.organization_org_usefullinks (id, title, links) FROM stdin;
    public          postgres    false    260   z�      �          0    116643 	   post_term 
   TABLE DATA           T   COPY public.post_term (id, name, slug, description, is_active, user_id) FROM stdin;
    public          postgres    false    231   ��      �          0    116608    pt_Category 
   TABLE DATA           y   COPY public."pt_Category" (id, name, slug, description, is_active, meta_description, meta_keywords, user_id) FROM stdin;
    public          postgres    false    225   <�      �          0    116787    pt_Staff 
   TABLE DATA           �   COPY public."pt_Staff" (id, display_name, gender, dob, edu_qualification, designation, opinion, contact_no, description, staff_image, slug, created_on, updated_on, group_id, user_id, address) FROM stdin;
    public          postgres    false    242   ��      �          0    116777    pt_Staff_Group 
   TABLE DATA           J   COPY public."pt_Staff_Group" (id, name, is_active, slug, lvl) FROM stdin;
    public          postgres    false    240   ��      �          0    116631    pt_Tags 
   TABLE DATA           3   COPY public."pt_Tags" (id, name, slug) FROM stdin;
    public          postgres    false    229   +�      �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    208            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    210            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 96, true);
          public          postgres    false    206            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    214            �           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 3, true);
          public          postgres    false    212            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    216            �           0    0 $   dashboard_userdashboardmodule_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.dashboard_userdashboardmodule_id_seq', 20, true);
          public          postgres    false    257            �           0    0    django_admin_log_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 144, true);
          public          postgres    false    218                        0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 24, true);
          public          postgres    false    204                       0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 35, true);
          public          postgres    false    202                       0    0    gal_image_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.gal_image_id_seq', 8, true);
          public          postgres    false    226                       0    0    jet_bookmark_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.jet_bookmark_id_seq', 1, true);
          public          postgres    false    253                       0    0    jet_pinnedapplication_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.jet_pinnedapplication_id_seq', 1, false);
          public          postgres    false    255                       0    0 !   organization_org_contactno_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.organization_org_contactno_id_seq', 2, true);
          public          postgres    false    243                       0    0 *   organization_org_details_contact_no_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public.organization_org_details_contact_no_id_seq', 2, true);
          public          postgres    false    249                       0    0    organization_org_details_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.organization_org_details_id_seq', 1, true);
          public          postgres    false    247                       0    0 .   organization_org_details_social_details_id_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public.organization_org_details_social_details_id_seq', 2, true);
          public          postgres    false    251            	           0    0 %   organization_org_socialdetails_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.organization_org_socialdetails_id_seq', 2, true);
          public          postgres    false    245            
           0    0 #   organization_org_usefullinks_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.organization_org_usefullinks_id_seq', 1, false);
          public          postgres    false    259                       0    0    page_menu_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.page_menu_id_seq', 11, true);
          public          postgres    false    222                       0    0    page_page_template_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.page_page_template_id_seq', 5, true);
          public          postgres    false    220                       0    0    post_post_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.post_post_id_seq', 9, true);
          public          postgres    false    232                       0    0    post_post_photos_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.post_post_photos_id_seq', 17, true);
          public          postgres    false    234                       0    0    post_post_tags_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.post_post_tags_id_seq', 25, true);
          public          postgres    false    236                       0    0    post_term_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.post_term_id_seq', 6, true);
          public          postgres    false    230                       0    0    pt_Category_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."pt_Category_id_seq"', 6, true);
          public          postgres    false    224                       0    0    pt_Staff_Group_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."pt_Staff_Group_id_seq"', 2, true);
          public          postgres    false    239                       0    0    pt_Staff_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."pt_Staff_id_seq"', 2, true);
          public          postgres    false    241                       0    0    pt_Tags_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."pt_Tags_id_seq"', 6, true);
          public          postgres    false    228            g           2606    116562    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    209            l           2606    116481 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    211    211            o           2606    116444 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    211            i           2606    116434    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    209            b           2606    116472 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    207    207            d           2606    116426 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    207            w           2606    116462 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    215            z           2606    116496 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    215    215            q           2606    116452    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    213            }           2606    116470 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    217            �           2606    116510 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    217    217            t           2606    116556     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    213            �           2606    116945 @   dashboard_userdashboardmodule dashboard_userdashboardmodule_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.dashboard_userdashboardmodule
    ADD CONSTRAINT dashboard_userdashboardmodule_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.dashboard_userdashboardmodule DROP CONSTRAINT dashboard_userdashboardmodule_pkey;
       public            postgres    false    258            �           2606    116534 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    219            ]           2606    116418 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    205    205            _           2606    116416 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    205            [           2606    116408 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    203            �           2606    116772 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    238            �           2606    116628    gal_image gal_image_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.gal_image
    ADD CONSTRAINT gal_image_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.gal_image DROP CONSTRAINT gal_image_pkey;
       public            postgres    false    227            �           2606    116910    jet_bookmark jet_bookmark_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.jet_bookmark
    ADD CONSTRAINT jet_bookmark_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.jet_bookmark DROP CONSTRAINT jet_bookmark_pkey;
       public            postgres    false    254            �           2606    116919 0   jet_pinnedapplication jet_pinnedapplication_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.jet_pinnedapplication
    ADD CONSTRAINT jet_pinnedapplication_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.jet_pinnedapplication DROP CONSTRAINT jet_pinnedapplication_pkey;
       public            postgres    false    256            �           2606    116823 <   organization_org_contactno organization_org_contactno_ph_key 
   CONSTRAINT     u   ALTER TABLE ONLY public.organization_org_contactno
    ADD CONSTRAINT organization_org_contactno_ph_key UNIQUE (ph);
 f   ALTER TABLE ONLY public.organization_org_contactno DROP CONSTRAINT organization_org_contactno_ph_key;
       public            postgres    false    244            �           2606    116821 :   organization_org_contactno organization_org_contactno_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.organization_org_contactno
    ADD CONSTRAINT organization_org_contactno_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.organization_org_contactno DROP CONSTRAINT organization_org_contactno_pkey;
       public            postgres    false    244            �           2606    116859 L   organization_org_details_contact_no organization_org_details_contact_no_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.organization_org_details_contact_no
    ADD CONSTRAINT organization_org_details_contact_no_pkey PRIMARY KEY (id);
 v   ALTER TABLE ONLY public.organization_org_details_contact_no DROP CONSTRAINT organization_org_details_contact_no_pkey;
       public            postgres    false    250            �           2606    116849 >   organization_org_details organization_org_details_org_Name_key 
   CONSTRAINT        ALTER TABLE ONLY public.organization_org_details
    ADD CONSTRAINT "organization_org_details_org_Name_key" UNIQUE (org_name);
 j   ALTER TABLE ONLY public.organization_org_details DROP CONSTRAINT "organization_org_details_org_Name_key";
       public            postgres    false    248            �           2606    116873 c   organization_org_details_contact_no organization_org_details_org_details_id_org_conta_7728a141_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.organization_org_details_contact_no
    ADD CONSTRAINT organization_org_details_org_details_id_org_conta_7728a141_uniq UNIQUE (org_details_id, org_contactno_id);
 �   ALTER TABLE ONLY public.organization_org_details_contact_no DROP CONSTRAINT organization_org_details_org_details_id_org_conta_7728a141_uniq;
       public            postgres    false    250    250            �           2606    116887 g   organization_org_details_social_details organization_org_details_org_details_id_org_socia_df8d83b9_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.organization_org_details_social_details
    ADD CONSTRAINT organization_org_details_org_details_id_org_socia_df8d83b9_uniq UNIQUE (org_details_id, org_socialdetails_id);
 �   ALTER TABLE ONLY public.organization_org_details_social_details DROP CONSTRAINT organization_org_details_org_details_id_org_socia_df8d83b9_uniq;
       public            postgres    false    252    252            �           2606    116847 6   organization_org_details organization_org_details_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.organization_org_details
    ADD CONSTRAINT organization_org_details_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.organization_org_details DROP CONSTRAINT organization_org_details_pkey;
       public            postgres    false    248            �           2606    116851 :   organization_org_details organization_org_details_slug_key 
   CONSTRAINT     u   ALTER TABLE ONLY public.organization_org_details
    ADD CONSTRAINT organization_org_details_slug_key UNIQUE (slug);
 d   ALTER TABLE ONLY public.organization_org_details DROP CONSTRAINT organization_org_details_slug_key;
       public            postgres    false    248            �           2606    116867 T   organization_org_details_social_details organization_org_details_social_details_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.organization_org_details_social_details
    ADD CONSTRAINT organization_org_details_social_details_pkey PRIMARY KEY (id);
 ~   ALTER TABLE ONLY public.organization_org_details_social_details DROP CONSTRAINT organization_org_details_social_details_pkey;
       public            postgres    false    252            �           2606    116836 F   organization_org_socialdetails organization_org_socialdetails_name_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.organization_org_socialdetails
    ADD CONSTRAINT organization_org_socialdetails_name_key UNIQUE (name);
 p   ALTER TABLE ONLY public.organization_org_socialdetails DROP CONSTRAINT organization_org_socialdetails_name_key;
       public            postgres    false    246            �           2606    116834 B   organization_org_socialdetails organization_org_socialdetails_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.organization_org_socialdetails
    ADD CONSTRAINT organization_org_socialdetails_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.organization_org_socialdetails DROP CONSTRAINT organization_org_socialdetails_pkey;
       public            postgres    false    246            �           2606    134082 >   organization_org_usefullinks organization_org_usefullinks_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.organization_org_usefullinks
    ADD CONSTRAINT organization_org_usefullinks_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.organization_org_usefullinks DROP CONSTRAINT organization_org_usefullinks_pkey;
       public            postgres    false    260            �           2606    116589    Menu page_menu_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public."Menu"
    ADD CONSTRAINT page_menu_pkey PRIMARY KEY (id);
 ?   ALTER TABLE ONLY public."Menu" DROP CONSTRAINT page_menu_pkey;
       public            postgres    false    223            �           2606    125884 !   Menu page_menu_slug_b9590e11_uniq 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Menu"
    ADD CONSTRAINT page_menu_slug_b9590e11_uniq UNIQUE (slug);
 M   ALTER TABLE ONLY public."Menu" DROP CONSTRAINT page_menu_slug_b9590e11_uniq;
       public            postgres    false    223            �           2606    116576 )   Page_Template page_page_template_name_key 
   CONSTRAINT     f   ALTER TABLE ONLY public."Page_Template"
    ADD CONSTRAINT page_page_template_name_key UNIQUE (name);
 U   ALTER TABLE ONLY public."Page_Template" DROP CONSTRAINT page_page_template_name_key;
       public            postgres    false    221            �           2606    116574 %   Page_Template page_page_template_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public."Page_Template"
    ADD CONSTRAINT page_page_template_pkey PRIMARY KEY (id);
 Q   ALTER TABLE ONLY public."Page_Template" DROP CONSTRAINT page_page_template_pkey;
       public            postgres    false    221            �           2606    116578 (   Page_Template page_page_template_url_key 
   CONSTRAINT     d   ALTER TABLE ONLY public."Page_Template"
    ADD CONSTRAINT page_page_template_url_key UNIQUE (url);
 T   ALTER TABLE ONLY public."Page_Template" DROP CONSTRAINT page_page_template_url_key;
       public            postgres    false    221            �           2606    116678 !   Post_photos post_post_photos_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public."Post_photos"
    ADD CONSTRAINT post_post_photos_pkey PRIMARY KEY (id);
 M   ALTER TABLE ONLY public."Post_photos" DROP CONSTRAINT post_post_photos_pkey;
       public            postgres    false    235            �           2606    116738 ?   Post_photos post_post_photos_post_id_gal_image_id_863507da_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public."Post_photos"
    ADD CONSTRAINT post_post_photos_post_id_gal_image_id_863507da_uniq UNIQUE (post_id, gal_image_id);
 k   ALTER TABLE ONLY public."Post_photos" DROP CONSTRAINT post_post_photos_post_id_gal_image_id_863507da_uniq;
       public            postgres    false    235    235            �           2606    116666    Post post_post_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public."Post"
    ADD CONSTRAINT post_post_pkey PRIMARY KEY (id);
 ?   ALTER TABLE ONLY public."Post" DROP CONSTRAINT post_post_pkey;
       public            postgres    false    233            �           2606    116670    Post post_post_slug_key 
   CONSTRAINT     T   ALTER TABLE ONLY public."Post"
    ADD CONSTRAINT post_post_slug_key UNIQUE (slug);
 C   ALTER TABLE ONLY public."Post" DROP CONSTRAINT post_post_slug_key;
       public            postgres    false    233            �           2606    116686    Post_tags post_post_tags_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Post_tags"
    ADD CONSTRAINT post_post_tags_pkey PRIMARY KEY (id);
 I   ALTER TABLE ONLY public."Post_tags" DROP CONSTRAINT post_post_tags_pkey;
       public            postgres    false    237            �           2606    116752 6   Post_tags post_post_tags_post_id_tags_id_387acdef_uniq 
   CONSTRAINT        ALTER TABLE ONLY public."Post_tags"
    ADD CONSTRAINT post_post_tags_post_id_tags_id_387acdef_uniq UNIQUE (post_id, tags_id);
 b   ALTER TABLE ONLY public."Post_tags" DROP CONSTRAINT post_post_tags_post_id_tags_id_387acdef_uniq;
       public            postgres    false    237    237            �           2606    116668    Post post_post_title_key 
   CONSTRAINT     V   ALTER TABLE ONLY public."Post"
    ADD CONSTRAINT post_post_title_key UNIQUE (title);
 D   ALTER TABLE ONLY public."Post" DROP CONSTRAINT post_post_title_key;
       public            postgres    false    233            �           2606    116653    post_term post_term_name_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.post_term
    ADD CONSTRAINT post_term_name_key UNIQUE (name);
 F   ALTER TABLE ONLY public.post_term DROP CONSTRAINT post_term_name_key;
       public            postgres    false    231            �           2606    116651    post_term post_term_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.post_term
    ADD CONSTRAINT post_term_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.post_term DROP CONSTRAINT post_term_pkey;
       public            postgres    false    231            �           2606    116655    post_term post_term_slug_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.post_term
    ADD CONSTRAINT post_term_slug_key UNIQUE (slug);
 F   ALTER TABLE ONLY public.post_term DROP CONSTRAINT post_term_slug_key;
       public            postgres    false    231            �           2606    116618     pt_Category pt_Category_name_key 
   CONSTRAINT     _   ALTER TABLE ONLY public."pt_Category"
    ADD CONSTRAINT "pt_Category_name_key" UNIQUE (name);
 N   ALTER TABLE ONLY public."pt_Category" DROP CONSTRAINT "pt_Category_name_key";
       public            postgres    false    225            �           2606    116616    pt_Category pt_Category_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."pt_Category"
    ADD CONSTRAINT "pt_Category_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."pt_Category" DROP CONSTRAINT "pt_Category_pkey";
       public            postgres    false    225            �           2606    116620     pt_Category pt_Category_slug_key 
   CONSTRAINT     _   ALTER TABLE ONLY public."pt_Category"
    ADD CONSTRAINT "pt_Category_slug_key" UNIQUE (slug);
 N   ALTER TABLE ONLY public."pt_Category" DROP CONSTRAINT "pt_Category_slug_key";
       public            postgres    false    225            �           2606    116782 "   pt_Staff_Group pt_Staff_Group_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."pt_Staff_Group"
    ADD CONSTRAINT "pt_Staff_Group_pkey" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public."pt_Staff_Group" DROP CONSTRAINT "pt_Staff_Group_pkey";
       public            postgres    false    240            �           2606    116784 &   pt_Staff_Group pt_Staff_Group_slug_key 
   CONSTRAINT     e   ALTER TABLE ONLY public."pt_Staff_Group"
    ADD CONSTRAINT "pt_Staff_Group_slug_key" UNIQUE (slug);
 T   ALTER TABLE ONLY public."pt_Staff_Group" DROP CONSTRAINT "pt_Staff_Group_slug_key";
       public            postgres    false    240            �           2606    116795    pt_Staff pt_Staff_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."pt_Staff"
    ADD CONSTRAINT "pt_Staff_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."pt_Staff" DROP CONSTRAINT "pt_Staff_pkey";
       public            postgres    false    242            �           2606    116797    pt_Staff pt_Staff_slug_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public."pt_Staff"
    ADD CONSTRAINT "pt_Staff_slug_key" UNIQUE (slug);
 H   ALTER TABLE ONLY public."pt_Staff" DROP CONSTRAINT "pt_Staff_slug_key";
       public            postgres    false    242            �           2606    116799    pt_Staff pt_Staff_user_id_key 
   CONSTRAINT     _   ALTER TABLE ONLY public."pt_Staff"
    ADD CONSTRAINT "pt_Staff_user_id_key" UNIQUE (user_id);
 K   ALTER TABLE ONLY public."pt_Staff" DROP CONSTRAINT "pt_Staff_user_id_key";
       public            postgres    false    242            �           2606    116638    pt_Tags pt_Tags_name_key 
   CONSTRAINT     W   ALTER TABLE ONLY public."pt_Tags"
    ADD CONSTRAINT "pt_Tags_name_key" UNIQUE (name);
 F   ALTER TABLE ONLY public."pt_Tags" DROP CONSTRAINT "pt_Tags_name_key";
       public            postgres    false    229            �           2606    116636    pt_Tags pt_Tags_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."pt_Tags"
    ADD CONSTRAINT "pt_Tags_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."pt_Tags" DROP CONSTRAINT "pt_Tags_pkey";
       public            postgres    false    229            �           2606    116640    pt_Tags pt_Tags_slug_key 
   CONSTRAINT     W   ALTER TABLE ONLY public."pt_Tags"
    ADD CONSTRAINT "pt_Tags_slug_key" UNIQUE (slug);
 F   ALTER TABLE ONLY public."pt_Tags" DROP CONSTRAINT "pt_Tags_slug_key";
       public            postgres    false    229            e           1259    116563    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    209            j           1259    116492 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    211            m           1259    116493 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    211            `           1259    116478 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    207            u           1259    116508 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    215            x           1259    116507 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    215            {           1259    116522 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    217            ~           1259    116521 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    217            r           1259    116557     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    213            �           1259    116545 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    219            �           1259    116546 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    219            �           1259    116774 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    238            �           1259    116773 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    238            �           1259    116868 +   organization_org_contactno_ph_4085d94e_like    INDEX     �   CREATE INDEX organization_org_contactno_ph_4085d94e_like ON public.organization_org_contactno USING btree (ph varchar_pattern_ops);
 ?   DROP INDEX public.organization_org_contactno_ph_4085d94e_like;
       public            postgres    false    244            �           1259    116885 =   organization_org_details_contact_no_org_contactno_id_84574a13    INDEX     �   CREATE INDEX organization_org_details_contact_no_org_contactno_id_84574a13 ON public.organization_org_details_contact_no USING btree (org_contactno_id);
 Q   DROP INDEX public.organization_org_details_contact_no_org_contactno_id_84574a13;
       public            postgres    false    250            �           1259    116884 ;   organization_org_details_contact_no_org_details_id_94433cf8    INDEX     �   CREATE INDEX organization_org_details_contact_no_org_details_id_94433cf8 ON public.organization_org_details_contact_no USING btree (org_details_id);
 O   DROP INDEX public.organization_org_details_contact_no_org_details_id_94433cf8;
       public            postgres    false    250            �           1259    116870 /   organization_org_details_org_Name_938e8335_like    INDEX     �   CREATE INDEX "organization_org_details_org_Name_938e8335_like" ON public.organization_org_details USING btree (org_name varchar_pattern_ops);
 E   DROP INDEX public."organization_org_details_org_Name_938e8335_like";
       public            postgres    false    248            �           1259    116899 8   organization_org_details_s_org_socialdetails_id_6000024e    INDEX     �   CREATE INDEX organization_org_details_s_org_socialdetails_id_6000024e ON public.organization_org_details_social_details USING btree (org_socialdetails_id);
 L   DROP INDEX public.organization_org_details_s_org_socialdetails_id_6000024e;
       public            postgres    false    252            �           1259    116871 +   organization_org_details_slug_5386fff9_like    INDEX     �   CREATE INDEX organization_org_details_slug_5386fff9_like ON public.organization_org_details USING btree (slug varchar_pattern_ops);
 ?   DROP INDEX public.organization_org_details_slug_5386fff9_like;
       public            postgres    false    248            �           1259    116898 ?   organization_org_details_social_details_org_details_id_46060de6    INDEX     �   CREATE INDEX organization_org_details_social_details_org_details_id_46060de6 ON public.organization_org_details_social_details USING btree (org_details_id);
 S   DROP INDEX public.organization_org_details_social_details_org_details_id_46060de6;
       public            postgres    false    252            �           1259    116869 1   organization_org_socialdetails_name_7c633360_like    INDEX     �   CREATE INDEX organization_org_socialdetails_name_7c633360_like ON public.organization_org_socialdetails USING btree (name varchar_pattern_ops);
 E   DROP INDEX public.organization_org_socialdetails_name_7c633360_like;
       public            postgres    false    246            �           1259    116604 #   page_menu_page_template_id_c05f14c6    INDEX     b   CREATE INDEX page_menu_page_template_id_c05f14c6 ON public."Menu" USING btree (page_template_id);
 7   DROP INDEX public.page_menu_page_template_id_c05f14c6;
       public            postgres    false    223            �           1259    116605    page_menu_parent_id_e3f6ba5f    INDEX     T   CREATE INDEX page_menu_parent_id_e3f6ba5f ON public."Menu" USING btree (parent_id);
 0   DROP INDEX public.page_menu_parent_id_e3f6ba5f;
       public            postgres    false    223            �           1259    125885    page_menu_slug_b9590e11_like    INDEX     c   CREATE INDEX page_menu_slug_b9590e11_like ON public."Menu" USING btree (slug varchar_pattern_ops);
 0   DROP INDEX public.page_menu_slug_b9590e11_like;
       public            postgres    false    223            �           1259    116590 %   page_page_template_name_906603ff_like    INDEX     u   CREATE INDEX page_page_template_name_906603ff_like ON public."Page_Template" USING btree (name varchar_pattern_ops);
 9   DROP INDEX public.page_page_template_name_906603ff_like;
       public            postgres    false    221            �           1259    116591 $   page_page_template_url_84d336d4_like    INDEX     s   CREATE INDEX page_page_template_url_84d336d4_like ON public."Page_Template" USING btree (url varchar_pattern_ops);
 8   DROP INDEX public.page_page_template_url_84d336d4_like;
       public            postgres    false    221            �           1259    116732    post_post_category_id_f4001070    INDEX     X   CREATE INDEX post_post_category_id_f4001070 ON public."Post" USING btree (category_id);
 2   DROP INDEX public.post_post_category_id_f4001070;
       public            postgres    false    233            �           1259    116733    post_post_menu_id_0e4a23f6    INDEX     P   CREATE INDEX post_post_menu_id_0e4a23f6 ON public."Post" USING btree (menu_id);
 .   DROP INDEX public.post_post_menu_id_0e4a23f6;
       public            postgres    false    233            �           1259    116734    post_post_parent_id_6d60180c    INDEX     T   CREATE INDEX post_post_parent_id_6d60180c ON public."Post" USING btree (parent_id);
 0   DROP INDEX public.post_post_parent_id_6d60180c;
       public            postgres    false    233            �           1259    116750 &   post_post_photos_gal_image_id_aafb53bc    INDEX     h   CREATE INDEX post_post_photos_gal_image_id_aafb53bc ON public."Post_photos" USING btree (gal_image_id);
 :   DROP INDEX public.post_post_photos_gal_image_id_aafb53bc;
       public            postgres    false    235            �           1259    116749 !   post_post_photos_post_id_71eec3fa    INDEX     ^   CREATE INDEX post_post_photos_post_id_71eec3fa ON public."Post_photos" USING btree (post_id);
 5   DROP INDEX public.post_post_photos_post_id_71eec3fa;
       public            postgres    false    235            �           1259    116731    post_post_slug_56a89051_like    INDEX     c   CREATE INDEX post_post_slug_56a89051_like ON public."Post" USING btree (slug varchar_pattern_ops);
 0   DROP INDEX public.post_post_slug_56a89051_like;
       public            postgres    false    233            �           1259    116763    post_post_tags_post_id_6adf1c1b    INDEX     Z   CREATE INDEX post_post_tags_post_id_6adf1c1b ON public."Post_tags" USING btree (post_id);
 3   DROP INDEX public.post_post_tags_post_id_6adf1c1b;
       public            postgres    false    237            �           1259    116764    post_post_tags_tags_id_07240c11    INDEX     Z   CREATE INDEX post_post_tags_tags_id_07240c11 ON public."Post_tags" USING btree (tags_id);
 3   DROP INDEX public.post_post_tags_tags_id_07240c11;
       public            postgres    false    237            �           1259    116735    post_post_term_id_75b27274    INDEX     P   CREATE INDEX post_post_term_id_75b27274 ON public."Post" USING btree (term_id);
 .   DROP INDEX public.post_post_term_id_75b27274;
       public            postgres    false    233            �           1259    116730    post_post_title_d798caad_like    INDEX     e   CREATE INDEX post_post_title_d798caad_like ON public."Post" USING btree (title varchar_pattern_ops);
 1   DROP INDEX public.post_post_title_d798caad_like;
       public            postgres    false    233            �           1259    116736    post_post_user_id_b9c97aef    INDEX     P   CREATE INDEX post_post_user_id_b9c97aef ON public."Post" USING btree (user_id);
 .   DROP INDEX public.post_post_user_id_b9c97aef;
       public            postgres    false    233            �           1259    116702    post_term_name_05401c81_like    INDEX     f   CREATE INDEX post_term_name_05401c81_like ON public.post_term USING btree (name varchar_pattern_ops);
 0   DROP INDEX public.post_term_name_05401c81_like;
       public            postgres    false    231            �           1259    116703    post_term_slug_36f1eb2c_like    INDEX     f   CREATE INDEX post_term_slug_36f1eb2c_like ON public.post_term USING btree (slug varchar_pattern_ops);
 0   DROP INDEX public.post_term_slug_36f1eb2c_like;
       public            postgres    false    231            �           1259    116704    post_term_user_id_e9b7e24b    INDEX     S   CREATE INDEX post_term_user_id_e9b7e24b ON public.post_term USING btree (user_id);
 .   DROP INDEX public.post_term_user_id_e9b7e24b;
       public            postgres    false    231            �           1259    116692    pt_Category_name_d4ef13cf_like    INDEX     n   CREATE INDEX "pt_Category_name_d4ef13cf_like" ON public."pt_Category" USING btree (name varchar_pattern_ops);
 4   DROP INDEX public."pt_Category_name_d4ef13cf_like";
       public            postgres    false    225            �           1259    116693    pt_Category_slug_43c5164d_like    INDEX     n   CREATE INDEX "pt_Category_slug_43c5164d_like" ON public."pt_Category" USING btree (slug varchar_pattern_ops);
 4   DROP INDEX public."pt_Category_slug_43c5164d_like";
       public            postgres    false    225            �           1259    116694    pt_Category_user_id_4b1b0177    INDEX     [   CREATE INDEX "pt_Category_user_id_4b1b0177" ON public."pt_Category" USING btree (user_id);
 2   DROP INDEX public."pt_Category_user_id_4b1b0177";
       public            postgres    false    225            �           1259    116800 !   pt_Staff_Group_slug_00cf43a5_like    INDEX     t   CREATE INDEX "pt_Staff_Group_slug_00cf43a5_like" ON public."pt_Staff_Group" USING btree (slug varchar_pattern_ops);
 7   DROP INDEX public."pt_Staff_Group_slug_00cf43a5_like";
       public            postgres    false    240            �           1259    116812    pt_Staff_group_id_95814a17    INDEX     W   CREATE INDEX "pt_Staff_group_id_95814a17" ON public."pt_Staff" USING btree (group_id);
 0   DROP INDEX public."pt_Staff_group_id_95814a17";
       public            postgres    false    242            �           1259    116811    pt_Staff_slug_50b1bd89_like    INDEX     h   CREATE INDEX "pt_Staff_slug_50b1bd89_like" ON public."pt_Staff" USING btree (slug varchar_pattern_ops);
 1   DROP INDEX public."pt_Staff_slug_50b1bd89_like";
       public            postgres    false    242            �           1259    116695    pt_Tags_name_4496e9e9_like    INDEX     f   CREATE INDEX "pt_Tags_name_4496e9e9_like" ON public."pt_Tags" USING btree (name varchar_pattern_ops);
 0   DROP INDEX public."pt_Tags_name_4496e9e9_like";
       public            postgres    false    229            �           1259    116696    pt_Tags_slug_4831e168_like    INDEX     f   CREATE INDEX "pt_Tags_slug_4831e168_like" ON public."pt_Tags" USING btree (slug varchar_pattern_ops);
 0   DROP INDEX public."pt_Tags_slug_4831e168_like";
       public            postgres    false    229                       2606    116487 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    207    211    2916                       2606    116482 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    2921    209    211                        2606    116473 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    2911    205    207                       2606    116502 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    215    2921    209                       2606    116497 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    213    2929    215                       2606    116516 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    217    207    2916                       2606    116511 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    2929    217    213                       2606    116535 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    205    2911    219                       2606    116540 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    219    2929    213                       2606    116879 _   organization_org_details_contact_no organization_org_det_org_contactno_id_84574a13_fk_organizat    FK CONSTRAINT     �   ALTER TABLE ONLY public.organization_org_details_contact_no
    ADD CONSTRAINT organization_org_det_org_contactno_id_84574a13_fk_organizat FOREIGN KEY (org_contactno_id) REFERENCES public.organization_org_contactno(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.organization_org_details_contact_no DROP CONSTRAINT organization_org_det_org_contactno_id_84574a13_fk_organizat;
       public          postgres    false    244    3038    250                       2606    116888 a   organization_org_details_social_details organization_org_det_org_details_id_46060de6_fk_organizat    FK CONSTRAINT     �   ALTER TABLE ONLY public.organization_org_details_social_details
    ADD CONSTRAINT organization_org_det_org_details_id_46060de6_fk_organizat FOREIGN KEY (org_details_id) REFERENCES public.organization_org_details(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.organization_org_details_social_details DROP CONSTRAINT organization_org_det_org_details_id_46060de6_fk_organizat;
       public          postgres    false    248    252    3048                       2606    116874 ]   organization_org_details_contact_no organization_org_det_org_details_id_94433cf8_fk_organizat    FK CONSTRAINT     �   ALTER TABLE ONLY public.organization_org_details_contact_no
    ADD CONSTRAINT organization_org_det_org_details_id_94433cf8_fk_organizat FOREIGN KEY (org_details_id) REFERENCES public.organization_org_details(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.organization_org_details_contact_no DROP CONSTRAINT organization_org_det_org_details_id_94433cf8_fk_organizat;
       public          postgres    false    250    248    3048                       2606    116893 g   organization_org_details_social_details organization_org_det_org_socialdetails_id_6000024e_fk_organizat    FK CONSTRAINT     
  ALTER TABLE ONLY public.organization_org_details_social_details
    ADD CONSTRAINT organization_org_det_org_socialdetails_id_6000024e_fk_organizat FOREIGN KEY (org_socialdetails_id) REFERENCES public.organization_org_socialdetails(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.organization_org_details_social_details DROP CONSTRAINT organization_org_det_org_socialdetails_id_6000024e_fk_organizat;
       public          postgres    false    3043    252    246            	           2606    116592 A   Menu page_menu_page_template_id_c05f14c6_fk_page_page_template_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Menu"
    ADD CONSTRAINT page_menu_page_template_id_c05f14c6_fk_page_page_template_id FOREIGN KEY (page_template_id) REFERENCES public."Page_Template"(id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY public."Menu" DROP CONSTRAINT page_menu_page_template_id_c05f14c6_fk_page_page_template_id;
       public          postgres    false    221    223    2953            
           2606    116597 1   Menu page_menu_parent_id_e3f6ba5f_fk_page_menu_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Menu"
    ADD CONSTRAINT page_menu_parent_id_e3f6ba5f_fk_page_menu_id FOREIGN KEY (parent_id) REFERENCES public."Menu"(id) DEFERRABLE INITIALLY DEFERRED;
 ]   ALTER TABLE ONLY public."Menu" DROP CONSTRAINT page_menu_parent_id_e3f6ba5f_fk_page_menu_id;
       public          postgres    false    223    2960    223                       2606    116705 5   Post post_post_category_id_f4001070_fk_pt_Category_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Post"
    ADD CONSTRAINT "post_post_category_id_f4001070_fk_pt_Category_id" FOREIGN KEY (category_id) REFERENCES public."pt_Category"(id) DEFERRABLE INITIALLY DEFERRED;
 c   ALTER TABLE ONLY public."Post" DROP CONSTRAINT "post_post_category_id_f4001070_fk_pt_Category_id";
       public          postgres    false    2968    225    233                       2606    116710 /   Post post_post_menu_id_0e4a23f6_fk_page_menu_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Post"
    ADD CONSTRAINT post_post_menu_id_0e4a23f6_fk_page_menu_id FOREIGN KEY (menu_id) REFERENCES public."Menu"(id) DEFERRABLE INITIALLY DEFERRED;
 [   ALTER TABLE ONLY public."Post" DROP CONSTRAINT post_post_menu_id_0e4a23f6_fk_page_menu_id;
       public          postgres    false    2960    223    233                       2606    116715 1   Post post_post_parent_id_6d60180c_fk_post_post_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Post"
    ADD CONSTRAINT post_post_parent_id_6d60180c_fk_post_post_id FOREIGN KEY (parent_id) REFERENCES public."Post"(id) DEFERRABLE INITIALLY DEFERRED;
 ]   ALTER TABLE ONLY public."Post" DROP CONSTRAINT post_post_parent_id_6d60180c_fk_post_post_id;
       public          postgres    false    2996    233    233                       2606    116744 B   Post_photos post_post_photos_gal_image_id_aafb53bc_fk_gal_image_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Post_photos"
    ADD CONSTRAINT post_post_photos_gal_image_id_aafb53bc_fk_gal_image_id FOREIGN KEY (gal_image_id) REFERENCES public.gal_image(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public."Post_photos" DROP CONSTRAINT post_post_photos_gal_image_id_aafb53bc_fk_gal_image_id;
       public          postgres    false    2974    227    235                       2606    116739 =   Post_photos post_post_photos_post_id_71eec3fa_fk_post_post_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Post_photos"
    ADD CONSTRAINT post_post_photos_post_id_71eec3fa_fk_post_post_id FOREIGN KEY (post_id) REFERENCES public."Post"(id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY public."Post_photos" DROP CONSTRAINT post_post_photos_post_id_71eec3fa_fk_post_post_id;
       public          postgres    false    2996    233    235                       2606    116753 9   Post_tags post_post_tags_post_id_6adf1c1b_fk_post_post_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Post_tags"
    ADD CONSTRAINT post_post_tags_post_id_6adf1c1b_fk_post_post_id FOREIGN KEY (post_id) REFERENCES public."Post"(id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY public."Post_tags" DROP CONSTRAINT post_post_tags_post_id_6adf1c1b_fk_post_post_id;
       public          postgres    false    2996    233    237                       2606    116758 7   Post_tags post_post_tags_tags_id_07240c11_fk_pt_Tags_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Post_tags"
    ADD CONSTRAINT "post_post_tags_tags_id_07240c11_fk_pt_Tags_id" FOREIGN KEY (tags_id) REFERENCES public."pt_Tags"(id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY public."Post_tags" DROP CONSTRAINT "post_post_tags_tags_id_07240c11_fk_pt_Tags_id";
       public          postgres    false    229    237    2979                       2606    116720 /   Post post_post_term_id_75b27274_fk_post_term_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Post"
    ADD CONSTRAINT post_post_term_id_75b27274_fk_post_term_id FOREIGN KEY (term_id) REFERENCES public.post_term(id) DEFERRABLE INITIALLY DEFERRED;
 [   ALTER TABLE ONLY public."Post" DROP CONSTRAINT post_post_term_id_75b27274_fk_post_term_id;
       public          postgres    false    231    233    2987                       2606    116725 /   Post post_post_user_id_b9c97aef_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Post"
    ADD CONSTRAINT post_post_user_id_b9c97aef_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 [   ALTER TABLE ONLY public."Post" DROP CONSTRAINT post_post_user_id_b9c97aef_fk_auth_user_id;
       public          postgres    false    213    2929    233                       2606    116697 4   post_term post_term_user_id_e9b7e24b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.post_term
    ADD CONSTRAINT post_term_user_id_e9b7e24b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ^   ALTER TABLE ONLY public.post_term DROP CONSTRAINT post_term_user_id_e9b7e24b_fk_auth_user_id;
       public          postgres    false    231    213    2929                       2606    116687 8   pt_Category pt_Category_user_id_4b1b0177_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."pt_Category"
    ADD CONSTRAINT "pt_Category_user_id_4b1b0177_fk_auth_user_id" FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY public."pt_Category" DROP CONSTRAINT "pt_Category_user_id_4b1b0177_fk_auth_user_id";
       public          postgres    false    213    225    2929                       2606    116801 8   pt_Staff pt_Staff_group_id_95814a17_fk_pt_Staff_Group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."pt_Staff"
    ADD CONSTRAINT "pt_Staff_group_id_95814a17_fk_pt_Staff_Group_id" FOREIGN KEY (group_id) REFERENCES public."pt_Staff_Group"(id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY public."pt_Staff" DROP CONSTRAINT "pt_Staff_group_id_95814a17_fk_pt_Staff_Group_id";
       public          postgres    false    240    3022    242                       2606    116806 2   pt_Staff pt_Staff_user_id_0a98d30d_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."pt_Staff"
    ADD CONSTRAINT "pt_Staff_user_id_0a98d30d_fk_auth_user_id" FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 `   ALTER TABLE ONLY public."pt_Staff" DROP CONSTRAINT "pt_Staff_user_id_0a98d30d_fk_auth_user_id";
       public          postgres    false    213    242    2929            �   �   x�UOK�0]OO�4���*�����3!m����텖�����O;/�-�*|	T�k��+����%XKz@ �=`#�yg��F�(І�V��6��iv�F3Ds�o������H{p���c{����Dӳ�6�%�,֤�M̡���{?���������WpB^��eH\T������@�n���C&��ƆF�/!y��e����      �   l   x�3�.ILK�,��9��%&g	�1g@>�[ $ `n	��{bNNjQ%g:����K�L9=�sS93�RR+��2S��|�0��ː�/�$39�3LA4C����1z\\\ �1�      �   �	  x��Y�r�6}�|��MvkM��n�lO��ss2��\���T� �0&���>�o����i��%ٓ��*y�]�H�4Nw�n��w�����l�sQd|�^<�����%��]�����]�y�_>:{��K���[Y?7R͵�>^k��&3?��	/��#?�0G�q<����`���؏"��Ǘ����z��6�M�><�x<m���/�.�3��QYpŒ���q���L�e���֟j�skE��H5�T�����0'{ܙ��zft�R�<��B�1+��쐭u'�,�l�M*�?�6;u�͘Y�2�c�[�|&�Li%6ڵ�3�Ƭ�i
�L[�RZ���a�¿�ߵ��eD!86Qot��#� ۭ8�|]�R`L�����M�[�e&��N��]��v��]��9����)���V��e�M��m�މ�<�+��_
#��T���_|hȞ�l�5m7�ɜ�!gs4�Cl6p��h	p+�M1ǚc2+>X�grKebj��T$�p�A�M�,U�\($�\��
r�V*L�%:����*n�b.�p:aG�A����⭦N�q��-�ƹ�{�1w/nY�T��@?�<<�S�Xf�I�;��b����j"�D�]�ODڕ��z<
���s*wF�^���ǝ�h�an�z��N�a<��bZe�H���l���z��ϥev�-��`��Z�W){UM ,'��)�bN ��`72��~����]���4叕>,Y*��1;�M<�[[��{m�oNG� v��#���Ri�򩦈g���*-�!��/ꪁ�
����l�]h6U��]X��r��$,Y��K�[LS�M�.%э��)������|s����ܯI��Q�&�}�R��A������d�dt���ݯ	���/qZD�9fgWs���;���%�V����I����i³.N�5����.�~֍�ϑ���j��r.R/�޻��E�ޅ��G?�T���`�gq8��a���\��~�6r�{��u�����G]�i ���Qo�.��.i��n������p�g��Y-��"N۔WA�N�`�y#�1����T��c<���8��9`�>#~>E�i$"�(��ljtΞ)T�-�+�$� B��l"�B�^녺2�,ݍ�{�&ϸ|�� G���i����/h�ω�鉚����8�A��}8��}�� n�^a\� �������_����/�H������gR	�HF�@�&�n�����8�������Tk;�Y�D=��K9�T�O�]z�J򜲾��Fg7b�d��93#D�ǮerM���S����� DF�w�y�7��
@M�H��)�d�hY2ԱZ�4�)G�q27x!�H��A4S�(c�.*�TvmF̀>ϐ�aI�n�۵y����(�t"��n���Jͮb�����ӿQ0Cʾ��S)���Q7l�?Q3�m�)��	�f�6fF��X
"	�I�d'9�;�k�ڰS�x*��5ye�58Y~�N*� �(Se�\��T��.�g���R9��N�2��FV��3.Pr��ؙV;tKֳ}bCug� ���B,�[�it�^�E)�Vw�J�(7,�nm�jMt*ʠ�(>��#�?�|8tU�X�41�<�/��t4A�2� �܃���m�#�`�j�2`��9�,U��}�c�	&��N�B�Y�.����C�Y���2uN�k��m�9� ���(ּ&���xK�␟f�P�*�+���Z����
+<�I|Iײ��Q�G��;!bE��$W��Nr����e�
(G$6[:>�C&��W$6��5Ų�lil{?0D
�H��u�%��#R�4["G܈L�#�h�����</2������0/�����?�j�����Rw���
��T0�;*9����DҰ9B֢tؙb�����3�*��Ipᘅ���<2<l��ItN��r�45��\-������x!���\�v0
.��XG��Ć��7Mt _��fG�]�ޜ6 :�ͤ��
��	�qQ�u�O�T��~l��q7u���0D=�*���5�B��}�Q�ȭ2�H���&��?qom=��耎D�a0����ߤ�?a�(���K��S'�]�윐s�9z�f˟(��;E�ݳ�g?��� ����:,o�` �������\���W�֯�B����xp0DAE�!gS��u�-���=/t����F80�F~_L����~MG�$��q?����pFx������5�S韋��n��a�<U��ݯ��8bKī�5��n7�A���k��O`Y-��z_�F�n�`a;ZW8�F�k����,PN4U����gm�H 6.xõW�\��u򾅼�k��x�����'�����q?G�`tp��`~����^�}��XU
�q��P���y���fJJΗ������/d\�t��E��_�a�&�!MP��JE#����� ���){!�/T�i
����|֚w�w�d�K3�J~���X �e���Q֍+���6�q��^����M��/H��~�������%�Ћ"�1��<x�?3a�      �   4   x��� D���b<���9�\��{1�Pj�Y,��8�ĩ���:�|�n�      �   A   x����@B�3	�̤��_G������Jx�S=�x[���A��]���^4���
��      �      x������ � �      �      x������ � �      �   �  x�}�ώ�0���S�	�&�	!!q nH�i�!�4��X�gf왉۽%3��?7��vi޻�p�s��u�ix5�	��������u�W�\x���4�!� �n����6I���f��3H��Jq
$u��I}�%��ݳDE�F���z�oW���l�').�I!���CH�R" *(�J
n��̏�\��)K�#���@�#��)Scr�f>���Z1�^�ـ
�[L���<�|��24�Ul�T���ӛ�T�3C:���1��0�����p�j�5������Ը���'״�ف�~��#$������#������ ��;�Ӽ=��� �9	�ҝ����>���]oW�_y�X�(R�ˋ��D��`^�V#
Vw��9�e�5�֏>_��
�y��/�'~{��:�N�p��|���Ohgz�+�e�E#'R�X��\K�
͛(v�G׶~x->]\�GS�U�����V������yA�G�����g��ᓫ����l�ʾ1M�Pތ)BB/�Af�U���eJܣ��l7�B1gB�%qv �9bg�,;�ڏ�)q����F�~LǍ�푈�5��c7i�rGw�Ԝ�C�74nR��ݨ�^�$J��^�FY�m��A���ۯ�����/�6x���_A4�Vu|^T]��>/���.����O���/���w���nU��4�EBu$H��cd`���ܟn!6��jqOI�9hw�yI[)��E�vQ$l���줏p,q7'��L���rT���E��Y���I
�%O0�b�}�æzbuv�̕ ��#ٽ�P"X�ݳk~����/���!�۽���H���$QL
SH�1%�4M��s�׶9�\��2"a���s�2�;/ַ�����y���-E�����P����g��Пo�ūU�����AY�a���d#(?>A�t��9֧�PV�N�>��[[|n���T�t��A�����L��g@U���,AU$��,I�AY�㝵�?�z�      �   E  x�m��n�P���)\�#�;1�ĤD�5�XD�I� ʌWl��/�&M�Iο���]���|����H���<��9^M5�*�jt��f����y���X�Z��F��Pr�����{`;!�O��ŀ{�X�6��C�E������.D]L;2BR$�0�Fb�Ӥ���GZ��#�f�{1_ݧFVp��RUũ(]�枏�~H��	 ��Ё��t���0�	1 �wz��j�}f�B�8�;�7�4_9K���Ɯ�%>�����]7�uR�����H;1��e���o� ����S��0�0�˪�#M��� �z�|�      �      x������ � �      �      x������ � �      �   �  x����n�0���S<	m�m�� Ǵ��C�i:I�h�ݻ�l��%[�,��ά����9��ʚ���@6Y����r�0������
���W+R�^o�{��UO��}��(�:5��IZo	Y;�� ���^d��;�?����U�"���P� ~kj��/�!PM��H�S�[/�Q��;}1ևӨS������8g©�)�8���T�~"��)i�XcR8Ɵs�i�{�\�y�Ox�<�{Gc�~���I{�z���	�7��ޱF������<*�:4H����U���R���E� ۢ��%a��.�w��m��俗x��n��sN��J�YGNR����F��Y[�����Ɗ��7�:o7 "��S�&�X���\���b��K�%��p�3���>v��&��Vj(��2�W9�ЇZ.��|�Z��2�*;W^ �l�~~�@�A�px�kn��yK6���@�Xn      �   P  x��X�n�������zӘ=�B���q���r��5�D�l$� �L�I��F_�O��P\�E�Lo�����F2���#L�(CD�X���	��_���0{���M���*]��W4_���a`䀶$
2 1ݐ|5���/��l�C�����♋�8�$�4 ��t)��- HI��AA �N��)��@zxFCB�8��������c���g�!��5f�"�~����@�"�"�To�F��A!BC�C�,�in����xJ3�/�ӧh5_>&�b�����0ɟ�+ZE���ApWW�D�&T���'4����幈�J�%B*l�)a�Cv�H��X��Ǒ��h%���<_��� �+���jF�>�o����ET����.p�0�Ju�+�A2�" c�ohO�UM���m�	�$�eHY���E�*@Z
�SА��2LD]��BY������XȐ� )�~G��O��_kcm��!���Phk+o�Զ�"��kҵ��g5�����:Dlp����w9!*J
Aڸ�E�E����K����C���ϗi�L�}h�G�q�X!�&hZ�VA��G��=�Cݶtec�.�o�F\W�r��a��VM׸�R6��A��8 �s�zAj�@�j�X�'��.��N ��c(kʈN�9qA~���%���(U�߹.d~��U\�c3]��c~�pS F $e��b�i��&,�<�+#:b{s�:�Ǩ��0<�jp���'r��M
תR��\�5	f��\w@�&|Rn�/&5��׿��f�B!I���Ѥ�y4ɟ���9;)���B�\C�0&X�9�3��M!��@�����;f|�K@Y�צ/ù�t�\ut�Dh�m�r?�Y��t�>@�f�Wt�N�q�.�b��>���8^�I�yumG8�V3T>�Wo�xU�-�C:�g(YBFUᳮ�m�l�ǠI�	a��D�Ћx���S��ڡ.�Ċ6���H_�$�f���`Pm�#�-	B�DT!1�fX�f	�e�B�/���3�]�
k�M7�ؠ���aUf5�6�ʫ�<����CK%���o���_hE�IѴN5�dѯ�M��<D�K�C���'��E'1��2*�t-�5lm_$M6t��d�c0o�V��#�B�/��t���E%��͚y��y�Ƽ�r�*km?b�;�!ʹk	f�ư8��c���_�#D'�5��k�߇�b'I��]���E\Dh��,y�!��>Ư�S�EWE�H!t��dZ�����������~8���
�]���
����N������x����"�W��y��nn�o�HW>q�`B����)b`��c�v|>�줾�N�����V^h�#�f�U�]�oF�������}�����|�T�K�]&��1�Vh%��x<���M�RO.,LX�˪M����F��˫����mu���hR0�Ֆ�58��Q�[\a%�XT��3�Z�Kg%�T0�8�����}Ζ]y�	���ߜ>)ʗ�a���q�~��\_�~��mW<��ym� p*�h�s^��[� Z��E�~���_�M�y�f���맴HݶK��e�
�!f�B5���wĶDJ�e�pq��op��qf}�A���D�+W^v����eC�݇�sYY]`[��(��up�Z��E�ɸھs4Eh�	S�9�ݕ�AJ�mSZ:寧�G�|jp�@r�]&:��m�և����՚��$�����-K���R�'���jx�r��a:}Y�(�����\�
1�ᚶ=�~3�:����m[�H�˨f�{�J�	o�f;�*;�{ �4�B����wє�.�릡�kx+�_e�h����4��L�6���V�Sj;q��|�|��YG=&�����=�      �   
  x�e�]n!����T��ߥ��YXB�����di�Hy����X�2�'�l�rG��
ٖ�k��p;W�e�h����Iz�ܳ����v�������H:>`�<{
�
�P��nxD�,������S�\f븯����Gr�������Q�<
�����g������Il̡�Auj���:����Y�Ň�8CZ�Q�q=�yQ+���[�rC�W�>%kzd��.�-��S1���)�i}�޽ߧ���O������G��      �   �  x����n�@���S�
ڙ�?x�J��Y;T`(�(��wp�ũiȍe	���sfgٱ�L�2M�}3!��RO�o2(�<#=�R��9���	U�8`��˾HA(e�j�˾�(�,̢��
]ӝ������^��*:�jC��V��r�bhŰ���Twwj��_���nl�Q�Xp:�}��	�@� ,��8�>�n~�.��4-5�l� �o�0�>m=�s33µ��5�r�_m�hV$-�����u��J�g�$�I�ǭ�������� 	��1��9��{�6ۦ#�FA�jv�׵�ݷ���8FS(q�RЫo��O�0��(C7�6��?�g����*��h7�ڱ]��6N�+����)Di �y���H��D�I$pמ�
�����i���G ye��]�?pڊ�YߍӞJ椬�*�6��a)lG�rQP��"d��O�}��):Ĭ��R���"�T-K!rK�)�>�P�J�|F�E2��U�	��<,�_~t~�ڮ�6a��Z+�c�*K�OK0%B�,�8�W����%P:0X� ��%���J���J�� ��D�'@����0��T�]	�ݾ��x��?�����I���"�}��ˁ�j�����GQ��5
�q�I<���ǅ��H �'��b��A���x�0��xm���T���V��� >]q��Y��Pg<ԏ ȅ�h��s�_ _���3���W��]
�K#�ڊZ3U_%p.`�����?NdXv      �   :  x���͎�@ ����7C��ihH���c4F㈒� -4-��?���)<v���|�T�N�.�V����R�<�"��	��Ł�~�mG�j���������6u�w��U��:�dz���\f���mq ��?���ۤ�t�/�.=�'��E��=��=z^�"��o��ۆ�v�es<�Q�F��EuC�f��J��B�I��V�=����A2�\Mu;�Q~��������ZNu~*_�����7qw���
�s3�U��~��+�9�6%6a ]���M�,�[�}^
�Qr�
5Cפ�D��'߃ϲ�uKc�ƃO�fyE��!,�}U��mI�����w��7>�lB5�u�Y?|���KT�\2�cI{^C/�T��"���w���ش��`h�@����;|e,� �F�KB̾�㱎�'ߝ��1�)�1h�Z�W��3��^�t4x(Έ��SE�|w>c���655�R��od2?+ѷ]� 3��(DbN�#M@v���g�6/P�FMD���Ǹ�H�t�jį�c�WզT�����|w>v�#p;\�8��_m6����D      �   �   x����j�0�u�.�\Mt=�0�mA2/�5�dڧ��)�F�.�����a(B���مH
3V�w�Y�)��2Bs�שm��@��Aګ�LP	kuZ׭�\�T+-TJ����o ��l��I6�J%w{�1Gq��y�O^�4�x�����q�ǥ����β���d�/L��84��e	�3@�J
���/�6���q~*��2)/��ܻ�`p���>A?�����MzI0�_���      �   Q   x��1
�0�99����I�֜�EQ�A�Po��'t�V=%��/ Ҳ]睨��YwR($�u��c�bj=7������      �      x������ � �      �   2   x�3��OK�LN崴46607370�2���w�040420063����� з�      �   �   x�m�A��0�ϯ�" ݗ��{܊(B����<��b���oUP���|Ì��m4V4��B�э��w�hj�y?�6�Љ���;�=��7�Rd����|��j�POx�syP%�����|�  "��Β�,�1O���?���p�� �%})T���ow���m<��:��`���<'�O�Q�D-q���Y�]/T      �      x�3�4�4�2�F\1z\\\ 	      �      x�3�4�4�2�F\1z\\\ 	      �   Q   x�3�tKLNM����LKTHK�M�q3���Ό��+}���r=��^r~.�gHyfIIjT	��c��
�5��qqq �u,�      �      x������ � �      �   �   x�3��tqw����tv�,�LIO-���/�LN��SŜ%��\���>�.�A��9�)�E0H�f�����kP$̔�Ĝ�ԢJtY���k��_LCjYj^	�H�!L(�?�� ��E��&����drJ~ri.��py��=... �K�      �   q   x�3��/.�,�%����\F���E%Ŝ�(T	ߐ˘�/�$39��3J��%p�6�2�LO��I-�Ġ!֚��
�9�)�E0�.*&�dƙ��\���W���M̐+F��� ��R�      �   #  x�u�Mo�0��ʯେŮl'q�[?�a�b@��]�N����G����N�u��/��Q!����y�����	5�b�Yf���d�T�F�/r�TR<=܉����U�i����8����
��w�P�B�e;��K�Q�I��1��G�X3�����*g�5uT�t��S����{ WؒVԃ!��Gg���3�,�E�c  �D��ɳ���)�?}�͠)@����ƀ�&}�v=<��
M�B�0NĪb��*Y�j)�����V�Q��g3Y�a'��@6�v�R���f�J�E#�Z������#��Y)�� ����W�d���'~?�{wТ�F'zMg��4�H�H6L���8�;~��9|��N�SǶ�!N|Fd{�z�؅0g��^�+�o�SW���p�����λę��nJ���N����Sa���^�{��ͥOУQZ�S:���{�����4]�ilV���Y-i.p"��u�>��E�C.օ,J)�U�h���!����U-��2_W��V�k�+��f�ʢ�      �   +   x�3���w�,���O�4�2�t�q��s��9��b���� �'C      �   P   x�3��/.�, \F�~�%�ɩ�y`�˘3�,5�Br�p�d��A).S��Ĝ�ԢJ�eƙ��\��cp��qqq �� �     