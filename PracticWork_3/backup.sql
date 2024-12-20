PGDMP  8    7        
        |         	   DBforPW_2    17.2    17.2 7    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    16388 	   DBforPW_2    DATABASE        CREATE DATABASE "DBforPW_2" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "DBforPW_2";
                     postgres    false            �            1259    16447    FromProductsToPartners    TABLE     �   CREATE TABLE public."FromProductsToPartners" (
    "Id" integer NOT NULL,
    "IdOfPartner" integer NOT NULL,
    "IdOfProduct" integer NOT NULL,
    "Amount" integer NOT NULL,
    "DateOfSelling" timestamp with time zone NOT NULL
);
 ,   DROP TABLE public."FromProductsToPartners";
       public         heap r       postgres    false            �            1259    16445 &   FromProductsToPartners_IdOfPartner_seq    SEQUENCE     �   CREATE SEQUENCE public."FromProductsToPartners_IdOfPartner_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public."FromProductsToPartners_IdOfPartner_seq";
       public               postgres    false    230            �           0    0 &   FromProductsToPartners_IdOfPartner_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public."FromProductsToPartners_IdOfPartner_seq" OWNED BY public."FromProductsToPartners"."IdOfPartner";
          public               postgres    false    228            �            1259    16446 &   FromProductsToPartners_IdOfProduct_seq    SEQUENCE     �   CREATE SEQUENCE public."FromProductsToPartners_IdOfProduct_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public."FromProductsToPartners_IdOfProduct_seq";
       public               postgres    false    230            �           0    0 &   FromProductsToPartners_IdOfProduct_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public."FromProductsToPartners_IdOfProduct_seq" OWNED BY public."FromProductsToPartners"."IdOfProduct";
          public               postgres    false    229            �            1259    16444    FromProductsToPartners_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."FromProductsToPartners_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."FromProductsToPartners_Id_seq";
       public               postgres    false    230            �           0    0    FromProductsToPartners_Id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public."FromProductsToPartners_Id_seq" OWNED BY public."FromProductsToPartners"."Id";
          public               postgres    false    227            �            1259    16415    Partners    TABLE     �  CREATE TABLE public."Partners" (
    "Id" integer NOT NULL,
    "IdOfPartner" integer NOT NULL,
    "Name" character varying(50) NOT NULL,
    "LegalAdress" character varying(256) NOT NULL,
    "TIN" character varying(12) NOT NULL,
    "FullnameOfDirector" character varying(125) NOT NULL,
    "PhoneNumber" character varying(12) NOT NULL,
    "Email" character varying(300) NOT NULL,
    "Rating" smallint DEFAULT 1 NOT NULL
);
    DROP TABLE public."Partners";
       public         heap r       postgres    false            �            1259    16414    Partners_IdOfPartner_seq    SEQUENCE     �   CREATE SEQUENCE public."Partners_IdOfPartner_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."Partners_IdOfPartner_seq";
       public               postgres    false    221            �           0    0    Partners_IdOfPartner_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."Partners_IdOfPartner_seq" OWNED BY public."Partners"."IdOfPartner";
          public               postgres    false    220            �            1259    16413    Partners_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."Partners_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Partners_Id_seq";
       public               postgres    false    221            �           0    0    Partners_Id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Partners_Id_seq" OWNED BY public."Partners"."Id";
          public               postgres    false    219            �            1259    16435    Products    TABLE     �   CREATE TABLE public."Products" (
    "Id" integer NOT NULL,
    "IdOfProduct" integer NOT NULL,
    "Name" character varying(100) NOT NULL,
    "Article" character varying(12) NOT NULL,
    "MinCostForPartner" money NOT NULL
);
    DROP TABLE public."Products";
       public         heap r       postgres    false            �            1259    16434    Products_IdOfProduct_seq    SEQUENCE     �   CREATE SEQUENCE public."Products_IdOfProduct_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."Products_IdOfProduct_seq";
       public               postgres    false    226            �           0    0    Products_IdOfProduct_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."Products_IdOfProduct_seq" OWNED BY public."Products"."IdOfProduct";
          public               postgres    false    225            �            1259    16433    Products_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."Products_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Products_Id_seq";
       public               postgres    false    226            �           0    0    Products_Id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Products_Id_seq" OWNED BY public."Products"."Id";
          public               postgres    false    224            �            1259    16405    TypesOfPartner    TABLE     x   CREATE TABLE public."TypesOfPartner" (
    "Id" integer NOT NULL,
    "TypeOfPartner" character varying(50) NOT NULL
);
 $   DROP TABLE public."TypesOfPartner";
       public         heap r       postgres    false            �            1259    16404    TypesOfPartner_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."TypesOfPartner_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."TypesOfPartner_Id_seq";
       public               postgres    false    218            �           0    0    TypesOfPartner_Id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."TypesOfPartner_Id_seq" OWNED BY public."TypesOfPartner"."Id";
          public               postgres    false    217            �            1259    16425    TypesOfProduct    TABLE     �   CREATE TABLE public."TypesOfProduct" (
    "Id" integer NOT NULL,
    "TypeOfProduct" character varying(50) NOT NULL,
    "TypeCoefficent" numeric NOT NULL
);
 $   DROP TABLE public."TypesOfProduct";
       public         heap r       postgres    false            �            1259    16424    TypesOfProduct_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."TypesOfProduct_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."TypesOfProduct_Id_seq";
       public               postgres    false    223            �           0    0    TypesOfProduct_Id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."TypesOfProduct_Id_seq" OWNED BY public."TypesOfProduct"."Id";
          public               postgres    false    222            >           2604    16450    FromProductsToPartners Id    DEFAULT     �   ALTER TABLE ONLY public."FromProductsToPartners" ALTER COLUMN "Id" SET DEFAULT nextval('public."FromProductsToPartners_Id_seq"'::regclass);
 L   ALTER TABLE public."FromProductsToPartners" ALTER COLUMN "Id" DROP DEFAULT;
       public               postgres    false    230    227    230            :           2604    16418    Partners Id    DEFAULT     p   ALTER TABLE ONLY public."Partners" ALTER COLUMN "Id" SET DEFAULT nextval('public."Partners_Id_seq"'::regclass);
 >   ALTER TABLE public."Partners" ALTER COLUMN "Id" DROP DEFAULT;
       public               postgres    false    219    221    221            =           2604    16438    Products Id    DEFAULT     p   ALTER TABLE ONLY public."Products" ALTER COLUMN "Id" SET DEFAULT nextval('public."Products_Id_seq"'::regclass);
 >   ALTER TABLE public."Products" ALTER COLUMN "Id" DROP DEFAULT;
       public               postgres    false    224    226    226            9           2604    16408    TypesOfPartner Id    DEFAULT     |   ALTER TABLE ONLY public."TypesOfPartner" ALTER COLUMN "Id" SET DEFAULT nextval('public."TypesOfPartner_Id_seq"'::regclass);
 D   ALTER TABLE public."TypesOfPartner" ALTER COLUMN "Id" DROP DEFAULT;
       public               postgres    false    217    218    218            <           2604    16428    TypesOfProduct Id    DEFAULT     |   ALTER TABLE ONLY public."TypesOfProduct" ALTER COLUMN "Id" SET DEFAULT nextval('public."TypesOfProduct_Id_seq"'::regclass);
 D   ALTER TABLE public."TypesOfProduct" ALTER COLUMN "Id" DROP DEFAULT;
       public               postgres    false    223    222    223            �          0    16447    FromProductsToPartners 
   TABLE DATA           q   COPY public."FromProductsToPartners" ("Id", "IdOfPartner", "IdOfProduct", "Amount", "DateOfSelling") FROM stdin;
    public               postgres    false    230   �B       �          0    16415    Partners 
   TABLE DATA           �   COPY public."Partners" ("Id", "IdOfPartner", "Name", "LegalAdress", "TIN", "FullnameOfDirector", "PhoneNumber", "Email", "Rating") FROM stdin;
    public               postgres    false    221   cC       �          0    16435    Products 
   TABLE DATA           a   COPY public."Products" ("Id", "IdOfProduct", "Name", "Article", "MinCostForPartner") FROM stdin;
    public               postgres    false    226   �E       �          0    16405    TypesOfPartner 
   TABLE DATA           A   COPY public."TypesOfPartner" ("Id", "TypeOfPartner") FROM stdin;
    public               postgres    false    218   G       �          0    16425    TypesOfProduct 
   TABLE DATA           S   COPY public."TypesOfProduct" ("Id", "TypeOfProduct", "TypeCoefficent") FROM stdin;
    public               postgres    false    223   DG       �           0    0 &   FromProductsToPartners_IdOfPartner_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public."FromProductsToPartners_IdOfPartner_seq"', 1, false);
          public               postgres    false    228            �           0    0 &   FromProductsToPartners_IdOfProduct_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public."FromProductsToPartners_IdOfProduct_seq"', 1, false);
          public               postgres    false    229            �           0    0    FromProductsToPartners_Id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."FromProductsToPartners_Id_seq"', 1, true);
          public               postgres    false    227            �           0    0    Partners_IdOfPartner_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."Partners_IdOfPartner_seq"', 1, true);
          public               postgres    false    220            �           0    0    Partners_Id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Partners_Id_seq"', 2, true);
          public               postgres    false    219                        0    0    Products_IdOfProduct_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."Products_IdOfProduct_seq"', 1, false);
          public               postgres    false    225                       0    0    Products_Id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Products_Id_seq"', 1, false);
          public               postgres    false    224                       0    0    TypesOfPartner_Id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."TypesOfPartner_Id_seq"', 3, true);
          public               postgres    false    217                       0    0    TypesOfProduct_Id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."TypesOfProduct_Id_seq"', 1, true);
          public               postgres    false    222            H           2606    16454 2   FromProductsToPartners FromProductsToPartners_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public."FromProductsToPartners"
    ADD CONSTRAINT "FromProductsToPartners_pkey" PRIMARY KEY ("Id");
 `   ALTER TABLE ONLY public."FromProductsToPartners" DROP CONSTRAINT "FromProductsToPartners_pkey";
       public                 postgres    false    230            B           2606    16423    Partners Partners_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Partners"
    ADD CONSTRAINT "Partners_pkey" PRIMARY KEY ("Id");
 D   ALTER TABLE ONLY public."Partners" DROP CONSTRAINT "Partners_pkey";
       public                 postgres    false    221            F           2606    16443    Products Products_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_pkey" PRIMARY KEY ("Id");
 D   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_pkey";
       public                 postgres    false    226            @           2606    16412 "   TypesOfPartner TypesOfPartner_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."TypesOfPartner"
    ADD CONSTRAINT "TypesOfPartner_pkey" PRIMARY KEY ("Id");
 P   ALTER TABLE ONLY public."TypesOfPartner" DROP CONSTRAINT "TypesOfPartner_pkey";
       public                 postgres    false    218            D           2606    16432 "   TypesOfProduct TypesOfProduct_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."TypesOfProduct"
    ADD CONSTRAINT "TypesOfProduct_pkey" PRIMARY KEY ("Id");
 P   ALTER TABLE ONLY public."TypesOfProduct" DROP CONSTRAINT "TypesOfProduct_pkey";
       public                 postgres    false    223            K           2606    16810 !   FromProductsToPartners fk_partner    FK CONSTRAINT     �   ALTER TABLE ONLY public."FromProductsToPartners"
    ADD CONSTRAINT fk_partner FOREIGN KEY ("IdOfPartner") REFERENCES public."Partners"("Id") NOT VALID;
 M   ALTER TABLE ONLY public."FromProductsToPartners" DROP CONSTRAINT fk_partner;
       public               postgres    false    230    4674    221            I           2606    16800    Partners fk_partner_type    FK CONSTRAINT     �   ALTER TABLE ONLY public."Partners"
    ADD CONSTRAINT fk_partner_type FOREIGN KEY ("IdOfPartner") REFERENCES public."TypesOfPartner"("Id") NOT VALID;
 D   ALTER TABLE ONLY public."Partners" DROP CONSTRAINT fk_partner_type;
       public               postgres    false    221    4672    218            L           2606    16815 !   FromProductsToPartners fk_product    FK CONSTRAINT     �   ALTER TABLE ONLY public."FromProductsToPartners"
    ADD CONSTRAINT fk_product FOREIGN KEY ("IdOfProduct") REFERENCES public."Products"("Id") NOT VALID;
 M   ALTER TABLE ONLY public."FromProductsToPartners" DROP CONSTRAINT fk_product;
       public               postgres    false    4678    226    230            J           2606    16805    Products fk_product_type    FK CONSTRAINT     �   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT fk_product_type FOREIGN KEY ("IdOfProduct") REFERENCES public."TypesOfProduct"("Id") NOT VALID;
 D   ALTER TABLE ONLY public."Products" DROP CONSTRAINT fk_product_type;
       public               postgres    false    226    223    4676            �   �   x�u�I�0E���WTl�g���QH��H��|�B� �VFe���'�(�@��eYR�9RG�T�3FB�?��hB����ƒE�Gq�m��Pf;1��%��8]�5���pѰD�p#���l�L�4E��.3�]���-#�e|��d��Y�P'$�r�c^���Yc����Ԯ�2^��/x�`!      �   R  x����n�@���S� �w��� ���Q( �>Q�C��T�T�i��@En �
�o�oքҞX��zw����դ�ox��<W��n�;^�)\�5mؠ��~q�n���
?�\b;��fO��&K�?�y�y]�.���{�[�+m)�2��VB���a+���k�,xs9\"�m�L�02�٢�����Az���^���v�wԪ��!�n�t��@���ؽ�1�*ܓ�`��+��n�[�;p�'"�5xc���8��RQ��Z(�(y�ķV�w�qII�'0c���l4���|�QD��kD���mB:�-���+�!!�)�wج�q�C����t2�d�	"$�,��M�gd&:I/���17�b�U�Xc�(J��^��gy{8� �{?{;�<U�B�Pv�i%M��Ť*�$D�u���CQ�wUWV��B�b�"t�r~��d*?�DS/�h<����C����1�Rk���Q68릍�7���jkV^�mE� ?}vI5�7��pڸJ(�r%��T����r�.Ð���A�&𳅜�_�:>�O�?����D��qu���<�v�B�^5j��?^��      �   7  x�u�MN�0���)|��������0IA��H,Ȃ=)��?I�r��x�THT��ɼ���c%��WjSE{�iI=�GIR�V+�E�>�$�H��I`����:L��_e$L���z��0cc�U
��J�=��ɑ V� ���%�Al���׬�16����#�[�nl�.���B	zAlG�ɾ<�68U��G��4Tk	�B��S�s�(})�ظr��9��#L�W���St�n�i��p�v�=6>�QH�$qUʀͱ�+J�3H�iqΏx�V���Ѷh����l�Jk��|]Eny\חY�� ��1�      �   (   x�3�0��8/�A.c���"& #F��� ���      �   u   x�e���0�wUP�I�v7|�H �a	��ia�#V��:������|Q|��b�^�2M>�o���aG#8Q$[�/#I��.%�I%*o��_�Ï�����,�`�zo�Q�     