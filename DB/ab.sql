PGDMP     !    5    	            x            pytube    12.0    12.0 G   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
          public          postgres    false    216                        1259    116935    dashboard_userdashboardmodule    TABLE        CREATE TABLE public.dashboard_userdashboardmodule (
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
       public         heap    postgres    false            �            1259    116933 $   dashboard_userdashboardmodule_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dashboard_userdashboardmodule_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.dashboard_userdashboardmodule_id_seq;
       public          postgres    false    256            �           0    0 $   dashboard_userdashboardmodule_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.dashboard_userdashboardmodule_id_seq OWNED BY public.dashboard_userdashboardmodule.id;
          public          postgres    false    255            �            1259    116525    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
       public          postgres    false    252            �           0    0    jet_bookmark_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.jet_bookmark_id_seq OWNED BY public.jet_bookmark.id;
          public          postgres    false    251            �            1259    116913    jet_pinnedapplication    TABLE     
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
       public          postgres    false    254            �           0    0    jet_pinnedapplication_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.jet_pinnedapplication_id_seq OWNED BY public.jet_pinnedapplication.id;
          public          postgres    false    253            �            1259    116816    organization_org_contactno    TABLE     �   CREATE TABLE public.organization_org_contactno (
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
          public          postgres    false    247                       1259    134120 '   organization_org_details_social_details    TABLE     �   CREATE TABLE public.organization_org_details_social_details (
    id integer NOT NULL,
    org_details_id integer NOT NULL,
    org_socialdetails_id integer NOT NULL
);
 ;   DROP TABLE public.organization_org_details_social_details;
       public         heap    postgres    false                       1259    134118 .   organization_org_details_social_details_id_seq    SEQUENCE     �   CREATE SEQUENCE public.organization_org_details_social_details_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE public.organization_org_details_social_details_id_seq;
       public          postgres    false    262            �           0    0 .   organization_org_details_social_details_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.organization_org_details_social_details_id_seq OWNED BY public.organization_org_details_social_details.id;
          public          postgres    false    261                       1259    134098 $   organization_org_details_useful_link    TABLE     �   CREATE TABLE public.organization_org_details_useful_link (
    id integer NOT NULL,
    org_details_id integer NOT NULL,
    org_usefullinks_id integer NOT NULL
);
 8   DROP TABLE public.organization_org_details_useful_link;
       public         heap    postgres    false                       1259    134096 +   organization_org_details_useful_link_id_seq    SEQUENCE     �   CREATE SEQUENCE public.organization_org_details_useful_link_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public.organization_org_details_useful_link_id_seq;
       public          postgres    false    260            �           0    0 +   organization_org_details_useful_link_id_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public.organization_org_details_useful_link_id_seq OWNED BY public.organization_org_details_useful_link.id;
          public          postgres    false    259            �            1259    116826    organization_org_socialdetails    TABLE     #  CREATE TABLE public.organization_org_socialdetails (
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
          public          postgres    false    245                       1259    134077    organization_org_usefullinks    TABLE     �   CREATE TABLE public.organization_org_usefullinks (
    id integer NOT NULL,
    title character varying(100) NOT NULL,
    links character varying(200) NOT NULL
);
 0   DROP TABLE public.organization_org_usefullinks;
       public         heap    postgres    false                       1259    134075 #   organization_org_usefullinks_id_seq    SEQUENCE     �   CREATE SEQUENCE public.organization_org_usefullinks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.organization_org_usefullinks_id_seq;
       public          postgres    false    258            �           0    0 #   organization_org_usefullinks_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.organization_org_usefullinks_id_seq OWNED BY public.organization_org_usefullinks.id;
          public          postgres    false    257            �            1259    116579    page_menu_id_seq    SEQUENCE     �   CREATE SEQUENCE public.page_menu_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.page_menu_id_seq;
       public          postgres    false    223                        0    0    page_menu_id_seq    SEQUENCE OWNED BY     B   ALTER SEQUENCE public.page_menu_id_seq OWNED BY public."Menu".id;
          public          postgres    false    222            �            1259    116564    page_page_template_id_seq    SEQUENCE     �   CREATE SEQUENCE public.page_page_template_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.page_page_template_id_seq;
       public          postgres    false    221                       0    0    page_page_template_id_seq    SEQUENCE OWNED BY     T   ALTER SEQUENCE public.page_page_template_id_seq OWNED BY public."Page_Template".id;
          public          postgres    false    220            �            1259    116656    post_post_id_seq    SEQUENCE     �   CREATE SEQUENCE public.post_post_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.post_post_id_seq;
       public          postgres    false    233                       0    0    post_post_id_seq    SEQUENCE OWNED BY     B   ALTER SEQUENCE public.post_post_id_seq OWNED BY public."Post".id;
          public          postgres    false    232            �            1259    116671    post_post_photos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.post_post_photos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.post_post_photos_id_seq;
       public          postgres    false    235                       0    0    post_post_photos_id_seq    SEQUENCE OWNED BY     P   ALTER SEQUENCE public.post_post_photos_id_seq OWNED BY public."Post_photos".id;
          public          postgres    false    234            �            1259    116679    post_post_tags_id_seq    SEQUENCE     �   CREATE SEQUENCE public.post_post_tags_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.post_post_tags_id_seq;
       public          postgres    false    237                       0    0    post_post_tags_id_seq    SEQUENCE OWNED BY     L   ALTER SEQUENCE public.post_post_tags_id_seq OWNED BY public."Post_tags".id;
          public          postgres    false    236            �            1259    116643 	   post_term    TABLE     +  CREATE TABLE public.post_term (
    id integer NOT NULL,
    name character varying(20) NOT NULL,
    slug character varying(20) NOT NULL,
    description character varying(500) NOT NULL,
    is_active boolean NOT NULL,
    user_id integer NOT NULL,
    "position" character varying(10) NOT NULL
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
       public          postgres    false    231                       0    0    post_term_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.post_term_id_seq OWNED BY public.post_term.id;
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
       public          postgres    false    225                       0    0    pt_Category_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."pt_Category_id_seq" OWNED BY public."pt_Category".id;
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
       public          postgres    false    240                       0    0    pt_Staff_Group_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."pt_Staff_Group_id_seq" OWNED BY public."pt_Staff_Group".id;
          public          postgres    false    239            �            1259    116785    pt_Staff_id_seq    SEQUENCE     �   CREATE SEQUENCE public."pt_Staff_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."pt_Staff_id_seq";
       public          postgres    false    242                       0    0    pt_Staff_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."pt_Staff_id_seq" OWNED BY public."pt_Staff".id;
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
       public          postgres    false    229            	           0    0    pt_Tags_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."pt_Tags_id_seq" OWNED BY public."pt_Tags".id;
          public          postgres    false    228            I           2604    116584    Menu id    DEFAULT     i   ALTER TABLE ONLY public."Menu" ALTER COLUMN id SET DEFAULT nextval('public.page_menu_id_seq'::regclass);
 8   ALTER TABLE public."Menu" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223            H           2604    116569    Page_Template id    DEFAULT     {   ALTER TABLE ONLY public."Page_Template" ALTER COLUMN id SET DEFAULT nextval('public.page_page_template_id_seq'::regclass);
 A   ALTER TABLE public."Page_Template" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            N           2604    116661    Post id    DEFAULT     i   ALTER TABLE ONLY public."Post" ALTER COLUMN id SET DEFAULT nextval('public.post_post_id_seq'::regclass);
 8   ALTER TABLE public."Post" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232    233            O           2604    116676    Post_photos id    DEFAULT     w   ALTER TABLE ONLY public."Post_photos" ALTER COLUMN id SET DEFAULT nextval('public.post_post_photos_id_seq'::regclass);
 ?   ALTER TABLE public."Post_photos" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    235    235            P           2604    116684    Post_tags id    DEFAULT     s   ALTER TABLE ONLY public."Post_tags" ALTER COLUMN id SET DEFAULT nextval('public.post_post_tags_id_seq'::regclass);
 =   ALTER TABLE public."Post_tags" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    236    237            A           2604    116432    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    209    209            B           2604    116442    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    211    211            @           2604    116424    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206    207            C           2604    116450    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212    213            D           2604    116460    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            E           2604    116468    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            [           2604    116938     dashboard_userdashboardmodule id    DEFAULT     �   ALTER TABLE ONLY public.dashboard_userdashboardmodule ALTER COLUMN id SET DEFAULT nextval('public.dashboard_userdashboardmodule_id_seq'::regclass);
 O   ALTER TABLE public.dashboard_userdashboardmodule ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    256    255    256            F           2604    116528    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            ?           2604    116414    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205            >           2604    116403    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203            K           2604    116626    gal_image id    DEFAULT     l   ALTER TABLE ONLY public.gal_image ALTER COLUMN id SET DEFAULT nextval('public.gal_image_id_seq'::regclass);
 ;   ALTER TABLE public.gal_image ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226    227            W           2604    116907    jet_bookmark id    DEFAULT     r   ALTER TABLE ONLY public.jet_bookmark ALTER COLUMN id SET DEFAULT nextval('public.jet_bookmark_id_seq'::regclass);
 >   ALTER TABLE public.jet_bookmark ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    251    252    252            Y           2604    116916    jet_pinnedapplication id    DEFAULT     �   ALTER TABLE ONLY public.jet_pinnedapplication ALTER COLUMN id SET DEFAULT nextval('public.jet_pinnedapplication_id_seq'::regclass);
 G   ALTER TABLE public.jet_pinnedapplication ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    253    254    254            S           2604    116819    organization_org_contactno id    DEFAULT     �   ALTER TABLE ONLY public.organization_org_contactno ALTER COLUMN id SET DEFAULT nextval('public.organization_org_contactno_id_seq'::regclass);
 L   ALTER TABLE public.organization_org_contactno ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    243    244    244            U           2604    116842    organization_org_details id    DEFAULT     �   ALTER TABLE ONLY public.organization_org_details ALTER COLUMN id SET DEFAULT nextval('public.organization_org_details_id_seq'::regclass);
 J   ALTER TABLE public.organization_org_details ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    247    248    248            V           2604    116857 &   organization_org_details_contact_no id    DEFAULT     �   ALTER TABLE ONLY public.organization_org_details_contact_no ALTER COLUMN id SET DEFAULT nextval('public.organization_org_details_contact_no_id_seq'::regclass);
 U   ALTER TABLE public.organization_org_details_contact_no ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    249    250    250            `           2604    134123 *   organization_org_details_social_details id    DEFAULT     �   ALTER TABLE ONLY public.organization_org_details_social_details ALTER COLUMN id SET DEFAULT nextval('public.organization_org_details_social_details_id_seq'::regclass);
 Y   ALTER TABLE public.organization_org_details_social_details ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    261    262    262            _           2604    134101 '   organization_org_details_useful_link id    DEFAULT     �   ALTER TABLE ONLY public.organization_org_details_useful_link ALTER COLUMN id SET DEFAULT nextval('public.organization_org_details_useful_link_id_seq'::regclass);
 V   ALTER TABLE public.organization_org_details_useful_link ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    259    260    260            T           2604    116829 !   organization_org_socialdetails id    DEFAULT     �   ALTER TABLE ONLY public.organization_org_socialdetails ALTER COLUMN id SET DEFAULT nextval('public.organization_org_socialdetails_id_seq'::regclass);
 P   ALTER TABLE public.organization_org_socialdetails ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    245    246    246            ^           2604    134080    organization_org_usefullinks id    DEFAULT     �   ALTER TABLE ONLY public.organization_org_usefullinks ALTER COLUMN id SET DEFAULT nextval('public.organization_org_usefullinks_id_seq'::regclass);
 N   ALTER TABLE public.organization_org_usefullinks ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    257    258    258            M           2604    116646    post_term id    DEFAULT     l   ALTER TABLE ONLY public.post_term ALTER COLUMN id SET DEFAULT nextval('public.post_term_id_seq'::regclass);
 ;   ALTER TABLE public.post_term ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    231    231            J           2604    116611    pt_Category id    DEFAULT     t   ALTER TABLE ONLY public."pt_Category" ALTER COLUMN id SET DEFAULT nextval('public."pt_Category_id_seq"'::regclass);
 ?   ALTER TABLE public."pt_Category" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            R           2604    116790    pt_Staff id    DEFAULT     n   ALTER TABLE ONLY public."pt_Staff" ALTER COLUMN id SET DEFAULT nextval('public."pt_Staff_id_seq"'::regclass);
 <   ALTER TABLE public."pt_Staff" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    242    241    242            Q           2604    116780    pt_Staff_Group id    DEFAULT     z   ALTER TABLE ONLY public."pt_Staff_Group" ALTER COLUMN id SET DEFAULT nextval('public."pt_Staff_Group_id_seq"'::regclass);
 B   ALTER TABLE public."pt_Staff_Group" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    240    240            L           2604    116634 
   pt_Tags id    DEFAULT     l   ALTER TABLE ONLY public."pt_Tags" ALTER COLUMN id SET DEFAULT nextval('public."pt_Tags_id_seq"'::regclass);
 ;   ALTER TABLE public."pt_Tags" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    229    229            �          0    116581    Menu 
   TABLE DATA           ~   COPY public."Menu" (id, title, toolstrip, url, status, lvl, slug, image, view_title, page_template_id, parent_id) FROM stdin;
    public          postgres    false    223   U�      �          0    116566    Page_Template 
   TABLE DATA           P   COPY public."Page_Template" (id, name, url, description, is_active) FROM stdin;
    public          postgres    false    221   3�      �          0    116658    Post 
   TABLE DATA           �   COPY public."Post" (id, title, slug, created_on, updated_on, content, meta_description, keywords, featured_image, document_file, status, category_id, menu_id, parent_id, term_id, user_id) FROM stdin;
    public          postgres    false    233   ��      �          0    116673    Post_photos 
   TABLE DATA           B   COPY public."Post_photos" (id, post_id, gal_image_id) FROM stdin;
    public          postgres    false    235   ��      �          0    116681 	   Post_tags 
   TABLE DATA           ;   COPY public."Post_tags" (id, post_id, tags_id) FROM stdin;
    public          postgres    false    237   �      �          0    116429 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    209   k�      �          0    116439    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    211   ��      �          0    116421    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    207   ��      �          0    116447 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    213   ��      �          0    116457    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    215   ��      �          0    116465    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    217   �      �          0    116935    dashboard_userdashboardmodule 
   TABLE DATA           �   COPY public.dashboard_userdashboardmodule (id, title, module, app_label, "user", "column", "order", settings, children, collapsed) FROM stdin;
    public          postgres    false    256   9�      �          0    116525    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    219   !�      �          0    116411    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    205   �      �          0    116400    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    203   +�      �          0    116765    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    238   ��      �          0    116623 	   gal_image 
   TABLE DATA           4   COPY public.gal_image (id, name, photo) FROM stdin;
    public          postgres    false    227   !�      �          0    116904    jet_bookmark 
   TABLE DATA           H   COPY public.jet_bookmark (id, url, title, "user", date_add) FROM stdin;
    public          postgres    false    252   �      �          0    116913    jet_pinnedapplication 
   TABLE DATA           P   COPY public.jet_pinnedapplication (id, app_label, "user", date_add) FROM stdin;
    public          postgres    false    254   }�      �          0    116816    organization_org_contactno 
   TABLE DATA           B   COPY public.organization_org_contactno (id, name, ph) FROM stdin;
    public          postgres    false    244   ��      �          0    116839    organization_org_details 
   TABLE DATA           �   COPY public.organization_org_details (id, org_name, org_code, at, po, block, sub_division, ps, dist, pin, state, state_code, country, area, map_url, logo, logo1, banner_logo, website, email, fax, slug, updated_on) FROM stdin;
    public          postgres    false    248   ��      �          0    116854 #   organization_org_details_contact_no 
   TABLE DATA           c   COPY public.organization_org_details_contact_no (id, org_details_id, org_contactno_id) FROM stdin;
    public          postgres    false    250   ��      �          0    134120 '   organization_org_details_social_details 
   TABLE DATA           k   COPY public.organization_org_details_social_details (id, org_details_id, org_socialdetails_id) FROM stdin;
    public          postgres    false    262   ��      �          0    134098 $   organization_org_details_useful_link 
   TABLE DATA           f   COPY public.organization_org_details_useful_link (id, org_details_id, org_usefullinks_id) FROM stdin;
    public          postgres    false    260   ��      �          0    116826    organization_org_socialdetails 
   TABLE DATA           j   COPY public.organization_org_socialdetails (id, name, icon, css_class, activity, social_link) FROM stdin;
    public          postgres    false    246   �      �          0    134077    organization_org_usefullinks 
   TABLE DATA           H   COPY public.organization_org_usefullinks (id, title, links) FROM stdin;
    public          postgres    false    258   }�      �          0    116643 	   post_term 
   TABLE DATA           `   COPY public.post_term (id, name, slug, description, is_active, user_id, "position") FROM stdin;
    public          postgres    false    231   ��      �          0    116608    pt_Category 
   TABLE DATA           y   COPY public."pt_Category" (id, name, slug, description, is_active, meta_description, meta_keywords, user_id) FROM stdin;
    public          postgres    false    225   w�      �          0    116787    pt_Staff 
   TABLE DATA           �   COPY public."pt_Staff" (id, display_name, gender, dob, edu_qualification, designation, opinion, contact_no, description, staff_image, slug, created_on, updated_on, group_id, user_id, address) FROM stdin;
    public          postgres    false    242   �      �          0    116777    pt_Staff_Group 
   TABLE DATA           J   COPY public."pt_Staff_Group" (id, name, is_active, slug, lvl) FROM stdin;
    public          postgres    false    240   @�      �          0    116631    pt_Tags 
   TABLE DATA           3   COPY public."pt_Tags" (id, name, slug) FROM stdin;
    public          postgres    false    229   {�      
           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    208                       0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    210                       0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 96, true);
          public          postgres    false    206                       0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    214                       0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 3, true);
          public          postgres    false    212                       0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    216                       0    0 $   dashboard_userdashboardmodule_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.dashboard_userdashboardmodule_id_seq', 20, true);
          public          postgres    false    255                       0    0    django_admin_log_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 169, true);
          public          postgres    false    218                       0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 24, true);
          public          postgres    false    204                       0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 42, true);
          public          postgres    false    202                       0    0    gal_image_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.gal_image_id_seq', 8, true);
          public          postgres    false    226                       0    0    jet_bookmark_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.jet_bookmark_id_seq', 1, true);
          public          postgres    false    251                       0    0    jet_pinnedapplication_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.jet_pinnedapplication_id_seq', 1, false);
          public          postgres    false    253                       0    0 !   organization_org_contactno_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.organization_org_contactno_id_seq', 2, true);
          public          postgres    false    243                       0    0 *   organization_org_details_contact_no_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public.organization_org_details_contact_no_id_seq', 2, true);
          public          postgres    false    249                       0    0    organization_org_details_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.organization_org_details_id_seq', 1, true);
          public          postgres    false    247                       0    0 .   organization_org_details_social_details_id_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public.organization_org_details_social_details_id_seq', 2, true);
          public          postgres    false    261                       0    0 +   organization_org_details_useful_link_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.organization_org_details_useful_link_id_seq', 1, true);
          public          postgres    false    259                       0    0 %   organization_org_socialdetails_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.organization_org_socialdetails_id_seq', 2, true);
          public          postgres    false    245                       0    0 #   organization_org_usefullinks_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.organization_org_usefullinks_id_seq', 1, true);
          public          postgres    false    257                       0    0    page_menu_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.page_menu_id_seq', 11, true);
          public          postgres    false    222                       0    0    page_page_template_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.page_page_template_id_seq', 5, true);
          public          postgres    false    220                        0    0    post_post_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.post_post_id_seq', 10, true);
          public          postgres    false    232            !           0    0    post_post_photos_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.post_post_photos_id_seq', 17, true);
          public          postgres    false    234            "           0    0    post_post_tags_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.post_post_tags_id_seq', 26, true);
          public          postgres    false    236            #           0    0    post_term_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.post_term_id_seq', 7, true);
          public          postgres    false    230            $           0    0    pt_Category_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."pt_Category_id_seq"', 7, true);
          public          postgres    false    224            %           0    0    pt_Staff_Group_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."pt_Staff_Group_id_seq"', 2, true);
          public          postgres    false    239            &           0    0    pt_Staff_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."pt_Staff_id_seq"', 2, true);
          public          postgres    false    241            '           0    0    pt_Tags_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."pt_Tags_id_seq"', 7, true);
          public          postgres    false    228            n           2606    116562    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    209            s           2606    116481 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    211    211            v           2606    116444 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    211            p           2606    116434    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    209            i           2606    116472 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    207    207            k           2606    116426 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    207            ~           2606    116462 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    215            �           2606    116496 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    215    215            x           2606    116452    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    213            �           2606    116470 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    217            �           2606    116510 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    217    217            {           2606    116556     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    213            �           2606    116945 @   dashboard_userdashboardmodule dashboard_userdashboardmodule_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.dashboard_userdashboardmodule
    ADD CONSTRAINT dashboard_userdashboardmodule_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.dashboard_userdashboardmodule DROP CONSTRAINT dashboard_userdashboardmodule_pkey;
       public            postgres    false    256            �           2606    116534 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    219            d           2606    116418 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    205    205            f           2606    116416 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    205            b           2606    116408 (   django_migrations django_migrations_pkey 
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
       public            postgres    false    252            �           2606    116919 0   jet_pinnedapplication jet_pinnedapplication_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.jet_pinnedapplication
    ADD CONSTRAINT jet_pinnedapplication_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.jet_pinnedapplication DROP CONSTRAINT jet_pinnedapplication_pkey;
       public            postgres    false    254            �           2606    116823 <   organization_org_contactno organization_org_contactno_ph_key 
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
       public            postgres    false    250    250                       2606    134127 g   organization_org_details_social_details organization_org_details_org_details_id_org_socia_df8d83b9_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.organization_org_details_social_details
    ADD CONSTRAINT organization_org_details_org_details_id_org_socia_df8d83b9_uniq UNIQUE (org_details_id, org_socialdetails_id);
 �   ALTER TABLE ONLY public.organization_org_details_social_details DROP CONSTRAINT organization_org_details_org_details_id_org_socia_df8d83b9_uniq;
       public            postgres    false    262    262                       2606    134105 d   organization_org_details_useful_link organization_org_details_org_details_id_org_usefu_5cf6162c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.organization_org_details_useful_link
    ADD CONSTRAINT organization_org_details_org_details_id_org_usefu_5cf6162c_uniq UNIQUE (org_details_id, org_usefullinks_id);
 �   ALTER TABLE ONLY public.organization_org_details_useful_link DROP CONSTRAINT organization_org_details_org_details_id_org_usefu_5cf6162c_uniq;
       public            postgres    false    260    260            �           2606    116847 6   organization_org_details organization_org_details_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.organization_org_details
    ADD CONSTRAINT organization_org_details_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.organization_org_details DROP CONSTRAINT organization_org_details_pkey;
       public            postgres    false    248            �           2606    116851 :   organization_org_details organization_org_details_slug_key 
   CONSTRAINT     u   ALTER TABLE ONLY public.organization_org_details
    ADD CONSTRAINT organization_org_details_slug_key UNIQUE (slug);
 d   ALTER TABLE ONLY public.organization_org_details DROP CONSTRAINT organization_org_details_slug_key;
       public            postgres    false    248                       2606    134125 T   organization_org_details_social_details organization_org_details_social_details_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.organization_org_details_social_details
    ADD CONSTRAINT organization_org_details_social_details_pkey PRIMARY KEY (id);
 ~   ALTER TABLE ONLY public.organization_org_details_social_details DROP CONSTRAINT organization_org_details_social_details_pkey;
       public            postgres    false    262                       2606    134103 N   organization_org_details_useful_link organization_org_details_useful_link_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.organization_org_details_useful_link
    ADD CONSTRAINT organization_org_details_useful_link_pkey PRIMARY KEY (id);
 x   ALTER TABLE ONLY public.organization_org_details_useful_link DROP CONSTRAINT organization_org_details_useful_link_pkey;
       public            postgres    false    260            �           2606    116836 F   organization_org_socialdetails organization_org_socialdetails_name_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.organization_org_socialdetails
    ADD CONSTRAINT organization_org_socialdetails_name_key UNIQUE (name);
 p   ALTER TABLE ONLY public.organization_org_socialdetails DROP CONSTRAINT organization_org_socialdetails_name_key;
       public            postgres    false    246            �           2606    116834 B   organization_org_socialdetails organization_org_socialdetails_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.organization_org_socialdetails
    ADD CONSTRAINT organization_org_socialdetails_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.organization_org_socialdetails DROP CONSTRAINT organization_org_socialdetails_pkey;
       public            postgres    false    246                        2606    134082 >   organization_org_usefullinks organization_org_usefullinks_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.organization_org_usefullinks
    ADD CONSTRAINT organization_org_usefullinks_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.organization_org_usefullinks DROP CONSTRAINT organization_org_usefullinks_pkey;
       public            postgres    false    258            �           2606    116589    Menu page_menu_pkey 
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
       public            postgres    false    229            l           1259    116563    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    209            q           1259    116492 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    211            t           1259    116493 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    211            g           1259    116478 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    207            |           1259    116508 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    215                       1259    116507 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    215            �           1259    116522 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    217            �           1259    116521 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    217            y           1259    116557     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
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
       public            postgres    false    248            	           1259    134139 8   organization_org_details_s_org_socialdetails_id_6000024e    INDEX     �   CREATE INDEX organization_org_details_s_org_socialdetails_id_6000024e ON public.organization_org_details_social_details USING btree (org_socialdetails_id);
 L   DROP INDEX public.organization_org_details_s_org_socialdetails_id_6000024e;
       public            postgres    false    262            �           1259    116871 +   organization_org_details_slug_5386fff9_like    INDEX     �   CREATE INDEX organization_org_details_slug_5386fff9_like ON public.organization_org_details USING btree (slug varchar_pattern_ops);
 ?   DROP INDEX public.organization_org_details_slug_5386fff9_like;
       public            postgres    false    248            
           1259    134138 ?   organization_org_details_social_details_org_details_id_46060de6    INDEX     �   CREATE INDEX organization_org_details_social_details_org_details_id_46060de6 ON public.organization_org_details_social_details USING btree (org_details_id);
 S   DROP INDEX public.organization_org_details_social_details_org_details_id_46060de6;
       public            postgres    false    262                       1259    134117 6   organization_org_details_u_org_usefullinks_id_cc784142    INDEX     �   CREATE INDEX organization_org_details_u_org_usefullinks_id_cc784142 ON public.organization_org_details_useful_link USING btree (org_usefullinks_id);
 J   DROP INDEX public.organization_org_details_u_org_usefullinks_id_cc784142;
       public            postgres    false    260                       1259    134116 <   organization_org_details_useful_link_org_details_id_1807e71e    INDEX     �   CREATE INDEX organization_org_details_useful_link_org_details_id_1807e71e ON public.organization_org_details_useful_link USING btree (org_details_id);
 P   DROP INDEX public.organization_org_details_useful_link_org_details_id_1807e71e;
       public            postgres    false    260            �           1259    116869 1   organization_org_socialdetails_name_7c633360_like    INDEX     �   CREATE INDEX organization_org_socialdetails_name_7c633360_like ON public.organization_org_socialdetails USING btree (name varchar_pattern_ops);
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
       public            postgres    false    229                       2606    134091 %   Post Post_menu_id_719cc206_fk_Menu_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Post"
    ADD CONSTRAINT "Post_menu_id_719cc206_fk_Menu_id" FOREIGN KEY (menu_id) REFERENCES public."Menu"(id) DEFERRABLE INITIALLY DEFERRED;
 S   ALTER TABLE ONLY public."Post" DROP CONSTRAINT "Post_menu_id_719cc206_fk_Menu_id";
       public          postgres    false    2967    233    223                       2606    116487 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    2923    211    207                       2606    116482 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    211    209    2928                       2606    116473 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    2918    207    205                       2606    116502 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    215    209    2928                       2606    116497 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    213    215    2936                       2606    116516 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    207    2923    217                       2606    116511 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    217    2936    213                       2606    116535 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    205    2918    219                       2606    116540 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    219    2936    213            &           2606    116879 _   organization_org_details_contact_no organization_org_det_org_contactno_id_84574a13_fk_organizat    FK CONSTRAINT     �   ALTER TABLE ONLY public.organization_org_details_contact_no
    ADD CONSTRAINT organization_org_det_org_contactno_id_84574a13_fk_organizat FOREIGN KEY (org_contactno_id) REFERENCES public.organization_org_contactno(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.organization_org_details_contact_no DROP CONSTRAINT organization_org_det_org_contactno_id_84574a13_fk_organizat;
       public          postgres    false    250    244    3045            '           2606    134106 ^   organization_org_details_useful_link organization_org_det_org_details_id_1807e71e_fk_organizat    FK CONSTRAINT     �   ALTER TABLE ONLY public.organization_org_details_useful_link
    ADD CONSTRAINT organization_org_det_org_details_id_1807e71e_fk_organizat FOREIGN KEY (org_details_id) REFERENCES public.organization_org_details(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.organization_org_details_useful_link DROP CONSTRAINT organization_org_det_org_details_id_1807e71e_fk_organizat;
       public          postgres    false    248    3055    260            )           2606    134128 a   organization_org_details_social_details organization_org_det_org_details_id_46060de6_fk_organizat    FK CONSTRAINT     �   ALTER TABLE ONLY public.organization_org_details_social_details
    ADD CONSTRAINT organization_org_det_org_details_id_46060de6_fk_organizat FOREIGN KEY (org_details_id) REFERENCES public.organization_org_details(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.organization_org_details_social_details DROP CONSTRAINT organization_org_det_org_details_id_46060de6_fk_organizat;
       public          postgres    false    3055    248    262            %           2606    116874 ]   organization_org_details_contact_no organization_org_det_org_details_id_94433cf8_fk_organizat    FK CONSTRAINT     �   ALTER TABLE ONLY public.organization_org_details_contact_no
    ADD CONSTRAINT organization_org_det_org_details_id_94433cf8_fk_organizat FOREIGN KEY (org_details_id) REFERENCES public.organization_org_details(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.organization_org_details_contact_no DROP CONSTRAINT organization_org_det_org_details_id_94433cf8_fk_organizat;
       public          postgres    false    3055    250    248            *           2606    134133 g   organization_org_details_social_details organization_org_det_org_socialdetails_id_6000024e_fk_organizat    FK CONSTRAINT     
  ALTER TABLE ONLY public.organization_org_details_social_details
    ADD CONSTRAINT organization_org_det_org_socialdetails_id_6000024e_fk_organizat FOREIGN KEY (org_socialdetails_id) REFERENCES public.organization_org_socialdetails(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.organization_org_details_social_details DROP CONSTRAINT organization_org_det_org_socialdetails_id_6000024e_fk_organizat;
       public          postgres    false    3050    262    246            (           2606    134111 b   organization_org_details_useful_link organization_org_det_org_usefullinks_id_cc784142_fk_organizat    FK CONSTRAINT       ALTER TABLE ONLY public.organization_org_details_useful_link
    ADD CONSTRAINT organization_org_det_org_usefullinks_id_cc784142_fk_organizat FOREIGN KEY (org_usefullinks_id) REFERENCES public.organization_org_usefullinks(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.organization_org_details_useful_link DROP CONSTRAINT organization_org_det_org_usefullinks_id_cc784142_fk_organizat;
       public          postgres    false    260    258    3072                       2606    116592 A   Menu page_menu_page_template_id_c05f14c6_fk_page_page_template_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Menu"
    ADD CONSTRAINT page_menu_page_template_id_c05f14c6_fk_page_page_template_id FOREIGN KEY (page_template_id) REFERENCES public."Page_Template"(id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY public."Menu" DROP CONSTRAINT page_menu_page_template_id_c05f14c6_fk_page_page_template_id;
       public          postgres    false    223    2960    221                       2606    116597 1   Menu page_menu_parent_id_e3f6ba5f_fk_page_menu_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Menu"
    ADD CONSTRAINT page_menu_parent_id_e3f6ba5f_fk_page_menu_id FOREIGN KEY (parent_id) REFERENCES public."Menu"(id) DEFERRABLE INITIALLY DEFERRED;
 ]   ALTER TABLE ONLY public."Menu" DROP CONSTRAINT page_menu_parent_id_e3f6ba5f_fk_page_menu_id;
       public          postgres    false    2967    223    223                       2606    116705 5   Post post_post_category_id_f4001070_fk_pt_Category_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Post"
    ADD CONSTRAINT "post_post_category_id_f4001070_fk_pt_Category_id" FOREIGN KEY (category_id) REFERENCES public."pt_Category"(id) DEFERRABLE INITIALLY DEFERRED;
 c   ALTER TABLE ONLY public."Post" DROP CONSTRAINT "post_post_category_id_f4001070_fk_pt_Category_id";
       public          postgres    false    2975    233    225                       2606    116715 1   Post post_post_parent_id_6d60180c_fk_post_post_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Post"
    ADD CONSTRAINT post_post_parent_id_6d60180c_fk_post_post_id FOREIGN KEY (parent_id) REFERENCES public."Post"(id) DEFERRABLE INITIALLY DEFERRED;
 ]   ALTER TABLE ONLY public."Post" DROP CONSTRAINT post_post_parent_id_6d60180c_fk_post_post_id;
       public          postgres    false    233    233    3003                        2606    116744 B   Post_photos post_post_photos_gal_image_id_aafb53bc_fk_gal_image_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Post_photos"
    ADD CONSTRAINT post_post_photos_gal_image_id_aafb53bc_fk_gal_image_id FOREIGN KEY (gal_image_id) REFERENCES public.gal_image(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public."Post_photos" DROP CONSTRAINT post_post_photos_gal_image_id_aafb53bc_fk_gal_image_id;
       public          postgres    false    227    2981    235                       2606    116739 =   Post_photos post_post_photos_post_id_71eec3fa_fk_post_post_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Post_photos"
    ADD CONSTRAINT post_post_photos_post_id_71eec3fa_fk_post_post_id FOREIGN KEY (post_id) REFERENCES public."Post"(id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY public."Post_photos" DROP CONSTRAINT post_post_photos_post_id_71eec3fa_fk_post_post_id;
       public          postgres    false    233    3003    235            !           2606    116753 9   Post_tags post_post_tags_post_id_6adf1c1b_fk_post_post_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Post_tags"
    ADD CONSTRAINT post_post_tags_post_id_6adf1c1b_fk_post_post_id FOREIGN KEY (post_id) REFERENCES public."Post"(id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY public."Post_tags" DROP CONSTRAINT post_post_tags_post_id_6adf1c1b_fk_post_post_id;
       public          postgres    false    3003    237    233            "           2606    116758 7   Post_tags post_post_tags_tags_id_07240c11_fk_pt_Tags_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Post_tags"
    ADD CONSTRAINT "post_post_tags_tags_id_07240c11_fk_pt_Tags_id" FOREIGN KEY (tags_id) REFERENCES public."pt_Tags"(id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY public."Post_tags" DROP CONSTRAINT "post_post_tags_tags_id_07240c11_fk_pt_Tags_id";
       public          postgres    false    229    237    2986                       2606    116720 /   Post post_post_term_id_75b27274_fk_post_term_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Post"
    ADD CONSTRAINT post_post_term_id_75b27274_fk_post_term_id FOREIGN KEY (term_id) REFERENCES public.post_term(id) DEFERRABLE INITIALLY DEFERRED;
 [   ALTER TABLE ONLY public."Post" DROP CONSTRAINT post_post_term_id_75b27274_fk_post_term_id;
       public          postgres    false    233    2994    231                       2606    116725 /   Post post_post_user_id_b9c97aef_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Post"
    ADD CONSTRAINT post_post_user_id_b9c97aef_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 [   ALTER TABLE ONLY public."Post" DROP CONSTRAINT post_post_user_id_b9c97aef_fk_auth_user_id;
       public          postgres    false    233    213    2936                       2606    116697 4   post_term post_term_user_id_e9b7e24b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.post_term
    ADD CONSTRAINT post_term_user_id_e9b7e24b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ^   ALTER TABLE ONLY public.post_term DROP CONSTRAINT post_term_user_id_e9b7e24b_fk_auth_user_id;
       public          postgres    false    213    2936    231                       2606    116687 8   pt_Category pt_Category_user_id_4b1b0177_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."pt_Category"
    ADD CONSTRAINT "pt_Category_user_id_4b1b0177_fk_auth_user_id" FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY public."pt_Category" DROP CONSTRAINT "pt_Category_user_id_4b1b0177_fk_auth_user_id";
       public          postgres    false    213    2936    225            #           2606    116801 8   pt_Staff pt_Staff_group_id_95814a17_fk_pt_Staff_Group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."pt_Staff"
    ADD CONSTRAINT "pt_Staff_group_id_95814a17_fk_pt_Staff_Group_id" FOREIGN KEY (group_id) REFERENCES public."pt_Staff_Group"(id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY public."pt_Staff" DROP CONSTRAINT "pt_Staff_group_id_95814a17_fk_pt_Staff_Group_id";
       public          postgres    false    3029    240    242            $           2606    116806 2   pt_Staff pt_Staff_user_id_0a98d30d_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."pt_Staff"
    ADD CONSTRAINT "pt_Staff_user_id_0a98d30d_fk_auth_user_id" FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 `   ALTER TABLE ONLY public."pt_Staff" DROP CONSTRAINT "pt_Staff_user_id_0a98d30d_fk_auth_user_id";
       public          postgres    false    2936    213    242            �   �   x�UOK�0]OO�4���*�����3!m����텖�����O;/�-�*|	T�k��+����%XKz@ �=`#�yg��F�(І�V��6��iv�F3Ds�o������H{p���c{����Dӳ�6�%�,֤�M̡���{?���������WpB^��eH\T������@�n���C&��ƆF�/!y��e����      �   l   x�3�.ILK�,��9��%&g	�1g@>�[ $ `n	��{bNNjQ%g:����K�L9=�sS93�RR+��2S��|�0��ː�/�$39�3LA4C����1z\\\ �1�      �     x��Z�r7�=z
�[ɵ���xI��d�Vbe�9��J�3 	i8�`0��$U��z�$�5�C���l�J~H*�3@�������s����9Y�Q��tY��;� �Z��?�v�,z#7l:�O��^|s~�&f�>�j�?�]{<���՗�J��>���He�f���Ɛ�Wc��,qc�*�gٟA�Y-�O#���e��O��	orU_N�X>I��t}�џ
7�qS��"�.�qE�����̬�g^����r��b"��t��N���ٲ���~��EQ믡���Ԉ�O�"��&"�����oؘOE��9{}����3�;}������;x�N��_9���nM��Zf�f����ñ;UC��[]�X��V?����=��:�E�3��(�Vn�\��qGJO�1"q�e6n�D�/�j<�:��xBk�"�*MlU����l�t"�;T7띕ڍ����m���2���v��Xf}��$�����"�H��7}�����.-r����{���!i`P/����c�;�5/hP�xr��H�[}V��U��vɫ]3��	X��AB�F��T�X�5TFm�k���zu��hAU-$l�7uٓ���E�5�`2�Z�L���� �MD�0Z�R*�O0g�Efčqy*ǰT*Ffђ�XiN6��i�e�X
H4�b�������+��f��R+v�l"��2aE�F��9���[I-��qoS���}�tn_�,.59�!)��+Gq�
�5|6�ysxA9^����E�ˬw�=���U�Y��v��&V�{�f��`�Q5�^#h0��j6*�a$D��[o��~5��W�03ᆥ�J�ai������X�#�,AZ��e"�B2��%4��H>��w�,�3��>��	&�M�ɋ���.�w����y���*���k@���"�^��Ya��H|]e|�	�R�^`ʚچ�B����ǰ|�_���˓9����ӢM��P��ѻ\�8,z'�1�s�1�[R�+T�1rߗT��D�E�璘����w���1����y���-�����	Q~�����|Ck���5�8{˪F����N�~	��r�:;t��r�sP�-2;�:)�a���[}vYأ���׉������>�I�,�4B�L�.�|F���NTa,����Q:���Ňdî|��ۨ����_����tI-m�����i*��]��3�^]S�.�	{,��^�zQ��g��2����bI����{~/n�Q�#ܠ��-1n���$u�q<�iE�����4w�A�g�s�躟���D|{�Mv}R�x��|UݭJ�M�{�ɸ)����+
C�]�y��~7PI�*�U�w_�9�æ_;Xв��)��8�_��]H$q�?������O����ƩQ��s��
�Xz׀��y�ByCкق��-�2�;,������N����|�ճ3��
��)ce!�^4rZ�<um	Y^j�N �FFdL�j�D���R126S�.��)PJ����&�菳B]�����P��?�fY�}\����?k��5W@���1���j}υ�2-�҈�X5.�߲���[-�5�h�yZ��y~�}�������޹��qV���y#r�i5e/�Y���[�B#M�(bCaf潀�a�
��59�rp�>*����;%k@��8�S�GO�t�'h�ö��.y�j$h����j�U��
%����?Yh��Q�V*3�N���ӿR�UK�@�Rlٿ�U= s_(e�'������Y9�c�yCQ�̮Uz-��Z�S������fW2���,7[aЩ��i v:Z�w�x�w�w%5�"ٶd$����<H�(��h+=`��`�	��$�� �4�&Wy	�!��6-��H��n9���sl4�ݙ�e�K�[<-���� `U<<�ٿ�`��}��'<
(+��n��=���Ч�VO�4�6b�%6zkS�$�fb������<�O�J�]I��V�mi������t��s��.��9\��KA�9���p��b!�����V��c-�vʊ�'Tu��k�>3�^p���	����6V�Ś�!ԭ-���JD�R,�>�˟._B�,l����\�.IJ����sT��q�8F�� �n�P�ROM@���1Ǌc0��������mtW�	��\��Ҝ�k̚(�upY� ����3l��D�,��~��"�W]�f��-�p4�%�!ݧT����
�Օp"�r��X����CG"�e= E�&�[���!LQ�Hh��1�y�&X�����	,"�ج"(i+"�I�y]�Y�X`C�U�m�)n�4O1w�N$�d_�79��x��T+�|�\԰K�T��A쮞�2�2CgM$5ÎVԋ;�X��v��I�i�ur3��d���a�m�M����6wI]���gs�j�;�<��	�?/u=E\[�j��ą��_/�� Y7;r��f����j�t-���u�^���*�-!o?��AǧB�]��UtT�`�TS�WG����8���`���b����붱k�>P����s13�'�`d��F}b
G�=�N�
�EI���$ݶ?���Pd���K��nʇ"�6�k|u��������Q�|ь٧Hq#��{�2�-�w}^�=���j�dT"`�d�ؖ���a;vYl�.���Â�Ra������I�����5���'���d�~oGƈ #}2�,<��Ʉ�_86�w�����/��.�����S)ݸ
m)v����������f����ͻ�q���`q�[��v&+�q�_������҉      �   4   x��� D���b<���9�\��{1�Pj�Y,��8�ĩ���:�|�n�      �   E   x����0�7�1Ȓ�^��^;2Q���lLU��AL]�K�6�H$�QC�E�-~�m�      �      x������ � �      �      x������ � �      �   �  x�}�ώ�0���S�	�&�	!!q nH�i�!�4��X�gf왉۽%3��?7��vi޻�p�s��u�ix5�	��������u�W�\x���4�!� �n����6I���f��3H��Jq
$u��I}�%��ݳDE�F���z�oW���l�').�I!���CH�R" *(�J
n��̏�\��)K�#���@�#��)Scr�f>���Z1�^�ـ
�[L���<�|��24�Ul�T���ӛ�T�3C:���1��0�����p�j�5������Ը���'״�ف�~��#$������#������ ��;�Ӽ=��� �9	�ҝ����>���]oW�_y�X�(R�ˋ��D��`^�V#
Vw��9�e�5�֏>_��
�y��/�'~{��:�N�p��|���Ohgz�+�e�E#'R�X��\K�
͛(v�G׶~x->]\�GS�U�����V������yA�G�����g��ᓫ����l�ʾ1M�Pތ)BB/�Af�U���eJܣ��l7�B1gB�%qv �9bg�,;�ڏ�)q����F�~LǍ�푈�5��c7i�rGw�Ԝ�C�74nR��ݨ�^�$J��^�FY�m��A���ۯ�����/�6x���_A4�Vu|^T]��>/���.����O���/���w���nU��4�EBu$H��cd`���ܟn!6��jqOI�9hw�yI[)��E�vQ$l���줏p,q7'��L���rT���E��Y���I
�%O0�b�}�æzbuv�̕ ��#ٽ�P"X�ݳk~����/���!�۽���H���$QL
SH�1%�4M��s�׶9�\��2"a���s�2�;/ַ�����y���-E�����P����g��Пo�ūU�����AY�a���d#(?>A�t��9֧�PV�N�>��[[|n���T�t��A�����L��g@U���,AU$��,I�AY�㝵�?�z�      �   E  x�m��n�@���.��܀�ĤD�5�^���A�;�؂O_lM�&����9��$����aE���<��9^M5�*�jt��f�B����y���X�Z��F��Pr�����{`;!�O��ŀ{�X�6��C�E������.D]L;�H��b(��$��{X�&6E>��M�t0K܋��>�0������*NE颗�0�|��C��wN �݇�E����`�R|�ǜ!���gV/n�󱺣~�I��/��n�Y�È:����u�_'%��罿F�A����0M#����(o��?�
�A1Yei�]��A�{6|�      �      x������ � �      �      x������ � �      �   �  x����n�0���S<	m�m�� Ǵ��C�i:I�h�ݻ�l��%[�,��ά����9��ʚ���@6Y����r�0������
���W+R�^o�{��UO��}��(�:5��IZo	Y;�� ���^d��;�?����U�"���P� ~kj��/�!PM��H�S�[/�Q��;}1ևӨS������8g©�)�8���T�~"��)i�XcR8Ɵs�i�{�\�y�Ox�<�{Gc�~���I{�z���	�7��ޱF������<*�:4H����U���R���E� ۢ��%a��.�w��m��俗x��n��sN��J�YGNR����F��Y[�����Ɗ��7�:o7 "��S�&�X���\���b��K�%��p�3���>v��&��Vj(��2�W9�ЇZ.��|�Z��2�*;W^ �l�~~�@�A�px�kn��yK6���@�Xn      �   �  x��Z[O�H~���J����N���>pIӨ�	fX4r'&x;�(1���4c����=�8v��̾D����S�~�@�QFw(�0N@�TǌG�KK�ߨ�9�@�`���)���q>ʇO�����:�7ہ-֐6�6�Hb%��&�xv���߶�� l���o��t�ṏg4�S���.� � "� �
��	 j�3*2�iKx�b`�тK]�Yg�x��ӪC�A� #�����d�e	�@�X��HTA>KP�6� ������§�f�H�E.��.�8�}���%��h�6KG�)~��>Ȧ�䉌��t���-C�+�R5����$�q��P$��d̤�����C6�3����q��ѽO�ACN��t&�yX[2�3�&�/����L��x��y�]�HSJ�n�W �TLe�R��k��q���
�om�2���Yt�-� �(TH�b�#�)�y
���Q̳��PE0������Tʘԫ�A��{vX��`�0K��*j)�#���f���ېպ��s��y>-6�d�͉^�JJh�~��F��i^h�J1�!�k;��E�O7�e���a�l��m[9��5+���e�3f���%@<��@癤�S�a��RZ:�R՞��T�hL�W���Ŭ5T�:&�0�}P�r��2^�����C�Aa����T�*��|�0��ňi��������a��] [ �<&���P�V��X�H
��l�]{��0%Ez�ͣ��L��x�1�X����Q(�S�:-��I��d��za>p�
7~qe����]�4��K)Ƭ��&UΓ��.��c�u
��4�0>�K^�?c��?�!�M(E$�k�����*��ڮ�p��.GS�k�j�\��� ����|��FO�2���	9I����_�tLz���k�$H��=z�	���MRlГt@�{���}Δ��t��}3"
�[㉕BO����B~暺�jVW���"�}��l2�>O���͓Ԥ@�:N���pZ�/r��yU{�M��YS#�m��T0�<������TqUCt q8Vh�g�*�� ��Kp%�ҩ;�I�K:"��a��{�C�俿�1��%{)��4)�|���9Nm�u��]\"�%�Z*꽇W�l^+��B�M�3�j_TB�&�lx�����H*�
�:�2�6#!�um�ho����$8��_(�����I��Bn�;�/����_o֊�e�(���_O�"!�tڟd���٧��k���(�� Uܨ�_���#��Q�;���N?����ӟ>�����Crr�wt��LQO*�\?���Ի��)Җ���rk,v�=�i���G݋�ԧՊv��~&���(7YʹmF���~�����?_$�r�8\'B���D�pn����w/~|�,��5n�j�뇣��no���w���kB})�-K�����w5N�q��T���~/􅯖l��Z	�I�k�W��}��U[�Dy��7?�*):�"��G��r�\�UR��.�'~��[���"��&;��:�d`%�Y���8J�������[�~~��_v�[_f�pS1*u���p;|ف�d�6Í��f��j�N��/=P0y.?"�+7;�,��O�PV���mVN�VM�-*#�-��-W3���x����g�Z�l]7�Z{�?�H"�+J�(o�]T����֧'h$,�ZwD/��s�l����󹦶�K����f�o�r���	i��ZQ��� �?�c+^y���\��)���5�U�98ۿ:q�m	[YH��hΆ�S����k�*+�� �i�R�О/�)�.�����k|*k۟M��8���r������(g׭"�4��)��YA�­s�1r����ߖLy�n�o����sO����}�v��Q* ��&�Μ��z\��I��I�k:XmfrA�tI�i��F3��6��jʡ���hfV�!�q]�rU�e�!VҀ\��..��mv�#�i�vv�sw}H�a���<d�򈻘ʗxoSv��+Ɔ����0�p�w7�F�w��b��x�� ��G�w���q���Z��ty��H �bj"�c�v�l���<�W�v���,���MղJ�);���pm�~�aɅ�5Ŭ�����mv��c�C���$�8P���)Ƽwp_����i����qɐ�]g�%��[�����DG����^O��8���%��4:���*ټ�y�֗y?�|0�|�M Ӕ�o50���ke�
��I�M��?]�7j�3����/��      �   
  x�e�]n!����T��ߥ��YXB�����di�Hy����X�2�'�l�rG��
ٖ�k��p;W�e�h����Iz�ܳ����v�������H:>`�<{
�
�P��nxD�,������S�\f븯����Gr�������Q�<
�����g������Il̡�Auj���:����Y�Ň�8CZ�Q�q=�yQ+���[�rC�W�>%kzd��.�-��S1���)�i}�޽ߧ���O������G��      �   r  x����n�H���S�~�U�'x��Z=�8��0���>�Tg��L�e������@v�/s}�珡�2!���̍o3(^� =�R��9����$񄙿�o�"-�\D���k.Ǫ�в0�J�*tm��7�]�^;��w��v0�m���V��:����^[v���9��8k�*���0eB9�0 ��lǘ��߸���}��c	l*:����z�i
����o�֗3�j�f@.�"�h�]'~�;ߴ� �t}�H�>��y�_�c� a�-�����p��v�tDҨ#hmU�n��6c���.8�����8f	�ݷM��~�>���~t]=M���Bbb�L&��u��v	F�����������:�@,���_��HxT"�$���v�n��7ݺ��:@��f�z<pڊR��O�J椬�*�6�M�؁R墠"-EȦٿ���M�C����/�>,�oղ"綴�-���o2T��%ϨU`�HF��nk�Ih��Oo?{?V]_]�z��Z+�m�*K�oC0%B�,���W���-$P:0X� ��%���J���J�;�q�t3�����3��:EoW�t�/��\�;1��S�� 	���Hy?�r���aB�(J4�FA:v4�M��@<.�WE<�-�T����ģ(��O�.'�M*#�J�B0$/��+�~6+�Bw!p-��z�\�&v0Q�3| |d��	�3�F��+��X�.�ɥ�zME�5U��.`���Nf�;��\�^6�"u�^U�
k�� �r9Y�6l�D`��J�kO}�� y�0���Hz���W=�!���'K¦��L���D�-!Bc�L�v5*ǟp��|a2��?�o� Cu�шd\;?򧧧?՟�      �   d  x���Ɏ�0 �s�+�>jd�1��L/Q��(Q:���q0a��!(��@��VI.=��
�'\�M����R�,�B��1�Ł�v�_w���j�ՇӬ��M�5>nw��p?<u��p��H-���@v�wXF�~���E�H�� _��E�n�Vrܻ�����o^�@�۷roA�����>v�����l��s)�P��Z'���h���p�� B�.����(?���PW�[W-�<��'���qᇸ�?b��w��v�����7@�۔؄i t��6A�(���m�B��
�sg���:a$�YYO|O>�F��-��:O>��f%-j,� ?�e�B���P��+&�����	�(�uf=��%�8��G����V )��E���7��ش��`h�@�_�W��"��R#�!f[~�p_E��7��W�l�l��g�9�-�L%��U4���3��T��o�3^�aݦ��S�г��Lfg%�[S���,6r��gOc�M?�|�}��k�D�>�uFJ�sV!~m0��Ƹ�[B�K�k��؝��}q���П|��8�z+�����eV,��6)�����pƽl�4�܇ǃ�6���)���      �   �   x����j�0�u�.�\Mt=�0�mA2/�5�dڧ��)�F�.�����a(B���مH
3V�w�Y�)��2Bs�שm��@��Aګ�LP	kuZ׭�\�T+-TJ����o ��l��I6�J%w{�1Gq��y�O^�4�x�����q�ǥ����β���d�/L��84��e	�3@�J
���/�6���q~*��2)/��ܻ�`p���>A?�����MzI0�_���      �   Q   x��1
�0�99����I�֜�EQ�A�Po��'t�V=%��/ Ҳ]睨��YwR($�u��c�bj=7������      �      x������ � �      �   2   x�3��OK�LN崴46607370�2���w�040420063����� з�      �   �   x�m�A
�0D׿��R���K+�U\Tt!ȷ	i!&�[��UAA�ͼ�aF�:h�*S7>�`{V�;XT%�5���a�kX��k��a�j�1����n����R�tn�E2���CӞ.�@ ;jjC|���/;[�V�{�� ��q*�TBdc5�Wl]Z�+,��x����>�s�P���49�I�< /+T      �      x�3�4�4�2�F\1z\\\ 	      �      x�3�4�4�2�F\1z\\\ 	      �      x�3�4�4����� �X      �   Q   x�3�tKLNM����LKTHK�M�q3���Ό��+}���r=��^r~.�gHyfIIjT	��c��
�5��qqq �u,�      �   -   x�3�,7.N����)�K����())(���///�C������� �D�      �   �   x�]�]�@E�g���}>�N&l�%A/��	��[ҿϖFԧeϹ��,!���³�"˥2�Z�_?-(0�m ➃!�e�Ɇ~ڭhƵ8��J;yR���̭�}A�����6���h?�VM��n	9�}>���:}=F�׵�-q�/��:��{���:�����/ơ[�      �   �   x�m�M
1��/��
��"�;7C�Bm�6��ӻ3�q6�ޗG㖫b��`��>���.��k��"�h�s22�w1Jy�qz{2����m��NGg��Ɨ$]	k;��u*}.�#ccm�o��#�/��n~      �   #  x�u�Mo�0��ʯେŮl'q�[?�a�b@��]�N����G����N�u��/��Q!����y�����	5�b�Yf���d�T�F�/r�TR<=܉����U�i����8����
��w�P�B�e;��K�Q�I��1��G�X3�����*g�5uT�t��S����{ WؒVԃ!��Gg���3�,�E�c  �D��ɳ���)�?}�͠)@����ƀ�&}�v=<��
M�B�0NĪb��*Y�j)�����V�Q��g3Y�a'��@6�v�R���f�J�E#�Z������#��Y)�� ����W�d���'~?�{wТ�F'zMg��4�H�H6L���8�;~��9|��N�SǶ�!N|Fd{�z�؅0g��^�+�o�SW���p�����λę��nJ���N����Sa���^�{��ͥOУQZ�S:���{�����4]�ilV���Y-i.p"��u�>��E�C.օ,J)�U�h���!����U-��2_W��V�k�+��f�ʢ�      �   +   x�3���w�,���O�4�2�t�q��s��9��b���� �'C      �   a   x�3��/.�, \F�~�%�ɩ�y`�˘3�,5�Br�p�d��A).S��Ĝ�ԢJ�eƙ��\��cp�s��:�x�q��&�d ���qqq �&     