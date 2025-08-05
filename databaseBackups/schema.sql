

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


COMMENT ON SCHEMA "public" IS 'standard public schema';



CREATE EXTENSION IF NOT EXISTS "pg_graphql" WITH SCHEMA "graphql";






CREATE EXTENSION IF NOT EXISTS "pg_stat_statements" WITH SCHEMA "extensions";






CREATE EXTENSION IF NOT EXISTS "pgcrypto" WITH SCHEMA "extensions";






CREATE EXTENSION IF NOT EXISTS "supabase_vault" WITH SCHEMA "vault";






CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA "extensions";





SET default_tablespace = '';

SET default_table_access_method = "heap";


CREATE TABLE IF NOT EXISTS "public"."delegates" (
    "id" bigint NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"(),
    "name" "text" NOT NULL,
    "school" "text",
    "email" "text" NOT NULL,
    "phone" "text",
    "nationality" "text",
    "dob" "date",
    "type" "text",
    "accommodation" "text",
    "mun_experiences" "text",
    "referral_code" "text",
    "council1" "text",
    "council1_country" "text",
    "council2" "text",
    "council2_country" "text",
    "council3" "text",
    "council3_country" "text",
    "payment_proof_url" "text",
    "social_media_proof_url" "text",
    "id_proof_url" "text",
    "double_delegate_name" character varying(255),
    CONSTRAINT "delegates_accommodation_check" CHECK (("accommodation" = ANY (ARRAY['yes'::"text", 'no'::"text"]))),
    CONSTRAINT "delegates_type_check" CHECK (("type" = ANY (ARRAY['Local'::"text", 'International'::"text"])))
);


ALTER TABLE "public"."delegates" OWNER TO "postgres";


ALTER TABLE "public"."delegates" ALTER COLUMN "id" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME "public"."delegates_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);



CREATE OR REPLACE VIEW "public"."delegates_view" AS
 SELECT "created_at",
    "name",
    "school",
    "email",
    "phone",
    "nationality",
    "dob",
    "type",
    "accommodation",
    "mun_experiences",
    "council1",
    "council1_country",
    "council2",
    "council2_country",
    "council3",
    "council3_country",
    "payment_proof_url",
    "social_media_proof_url",
    "id_proof_url",
    "double_delegate_name",
    "referral_code"
   FROM "public"."delegates"
  ORDER BY "created_at";


ALTER VIEW "public"."delegates_view" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."delegation_delegates" (
    "id" bigint NOT NULL,
    "delegation_id" bigint NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"(),
    "delegate_order" integer NOT NULL,
    "name" "text" NOT NULL,
    "nationality" "text" NOT NULL,
    "dob" "date" NOT NULL,
    "mun_experiences" "text",
    "id_proof_url" "text" NOT NULL,
    "council1" "text",
    "council1_country" "text",
    "council2" "text",
    "council2_country" "text",
    "council3" "text",
    "council3_country" "text",
    "double_delegate_name" character varying(255),
    "delegation_name" "text",
    "email" "text",
    "phone" "text",
    "social_media_proof_url" "text",
    CONSTRAINT "delegation_delegates_delegate_order_check1" CHECK ((("delegate_order" >= 1) AND ("delegate_order" <= 10)))
);


ALTER TABLE "public"."delegation_delegates" OWNER TO "postgres";


ALTER TABLE "public"."delegation_delegates" ALTER COLUMN "id" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME "public"."delegation_delegates_id_seq1"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);



CREATE TABLE IF NOT EXISTS "public"."delegations" (
    "id" bigint NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"(),
    "delegation_name" "text" NOT NULL,
    "school" "text" NOT NULL,
    "payment_proof_url" "text",
    "referal_code" "text",
    "accommodation" "text",
    "type" "text",
    CONSTRAINT "delegations_accommodation_check" CHECK (("accommodation" = ANY (ARRAY['yes'::"text", 'no'::"text"])))
);


ALTER TABLE "public"."delegations" OWNER TO "postgres";


CREATE OR REPLACE VIEW "public"."delegation_delegates_view" AS
 SELECT "delegation_delegates"."created_at",
    "delegations"."delegation_name",
    "delegations"."school",
    "delegations"."type",
    "delegations"."accommodation",
    "delegations"."referal_code",
    "delegations"."payment_proof_url",
    "delegation_delegates"."name",
    "delegation_delegates"."email",
    "delegation_delegates"."phone",
    "delegation_delegates"."nationality",
    "delegation_delegates"."dob",
    "delegation_delegates"."mun_experiences",
    "delegation_delegates"."council1",
    "delegation_delegates"."council1_country",
    "delegation_delegates"."council2",
    "delegation_delegates"."council2_country",
    "delegation_delegates"."council3",
    "delegation_delegates"."council3_country",
    "delegation_delegates"."social_media_proof_url",
    "delegation_delegates"."id_proof_url",
    "delegation_delegates"."double_delegate_name"
   FROM ("public"."delegation_delegates"
     JOIN "public"."delegations" ON (("delegation_delegates"."delegation_id" = "delegations"."id")))
  ORDER BY "delegation_delegates"."created_at";


ALTER VIEW "public"."delegation_delegates_view" OWNER TO "postgres";


ALTER TABLE "public"."delegations" ALTER COLUMN "id" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME "public"."delegations_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);



CREATE TABLE IF NOT EXISTS "public"."observers" (
    "id" bigint NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"(),
    "name" "text" NOT NULL,
    "nationality" "text",
    "mun_experiences" "text",
    "email" "text",
    "phone" "text",
    "payment_proof_url" "text",
    "council1" "text",
    "council2" "text",
    "council3" "text",
    "accommodation" "text"
);


ALTER TABLE "public"."observers" OWNER TO "postgres";


ALTER TABLE "public"."observers" ALTER COLUMN "id" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME "public"."observers_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);



CREATE OR REPLACE VIEW "public"."observers_view" AS
 SELECT "created_at",
    "name",
    "email",
    "phone",
    "nationality",
    "accommodation",
    "mun_experiences",
    "council1",
    "council2",
    "council3",
    "payment_proof_url"
   FROM "public"."observers"
  ORDER BY "created_at";


ALTER VIEW "public"."observers_view" OWNER TO "postgres";


ALTER TABLE ONLY "public"."delegates"
    ADD CONSTRAINT "delegates_email_key" UNIQUE ("email");



ALTER TABLE ONLY "public"."delegates"
    ADD CONSTRAINT "delegates_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."delegation_delegates"
    ADD CONSTRAINT "delegation_delegates_delegation_id_delegate_order_key1" UNIQUE ("delegation_id", "delegate_order");



ALTER TABLE ONLY "public"."delegation_delegates"
    ADD CONSTRAINT "delegation_delegates_pkey1" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."delegations"
    ADD CONSTRAINT "delegations_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."observers"
    ADD CONSTRAINT "observers_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."delegation_delegates"
    ADD CONSTRAINT "delegation_delegates_delegation_id_fkey1" FOREIGN KEY ("delegation_id") REFERENCES "public"."delegations"("id") ON DELETE CASCADE;



CREATE POLICY "Allow public delegate registration" ON "public"."delegates" FOR INSERT WITH CHECK (true);



CREATE POLICY "Allow public delegation delegates registration" ON "public"."delegation_delegates" FOR INSERT WITH CHECK (true);



CREATE POLICY "Allow public delegation registration" ON "public"."delegations" FOR INSERT WITH CHECK (true);



CREATE POLICY "Allow public observer registration" ON "public"."observers" FOR INSERT WITH CHECK (true);



ALTER TABLE "public"."delegates" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."delegation_delegates" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."delegations" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."observers" ENABLE ROW LEVEL SECURITY;




ALTER PUBLICATION "supabase_realtime" OWNER TO "postgres";


GRANT USAGE ON SCHEMA "public" TO "postgres";
GRANT USAGE ON SCHEMA "public" TO "anon";
GRANT USAGE ON SCHEMA "public" TO "authenticated";
GRANT USAGE ON SCHEMA "public" TO "service_role";
GRANT USAGE ON SCHEMA "public" TO "data_team";








































































































































































GRANT ALL ON TABLE "public"."delegates" TO "anon";
GRANT ALL ON TABLE "public"."delegates" TO "authenticated";
GRANT ALL ON TABLE "public"."delegates" TO "service_role";



GRANT ALL ON SEQUENCE "public"."delegates_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."delegates_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."delegates_id_seq" TO "service_role";



GRANT ALL ON TABLE "public"."delegates_view" TO "anon";
GRANT ALL ON TABLE "public"."delegates_view" TO "authenticated";
GRANT ALL ON TABLE "public"."delegates_view" TO "service_role";



GRANT ALL ON TABLE "public"."delegation_delegates" TO "anon";
GRANT ALL ON TABLE "public"."delegation_delegates" TO "authenticated";
GRANT ALL ON TABLE "public"."delegation_delegates" TO "service_role";



GRANT ALL ON SEQUENCE "public"."delegation_delegates_id_seq1" TO "anon";
GRANT ALL ON SEQUENCE "public"."delegation_delegates_id_seq1" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."delegation_delegates_id_seq1" TO "service_role";



GRANT ALL ON TABLE "public"."delegations" TO "anon";
GRANT ALL ON TABLE "public"."delegations" TO "authenticated";
GRANT ALL ON TABLE "public"."delegations" TO "service_role";



GRANT ALL ON TABLE "public"."delegation_delegates_view" TO "anon";
GRANT ALL ON TABLE "public"."delegation_delegates_view" TO "authenticated";
GRANT ALL ON TABLE "public"."delegation_delegates_view" TO "service_role";



GRANT ALL ON SEQUENCE "public"."delegations_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."delegations_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."delegations_id_seq" TO "service_role";



GRANT ALL ON TABLE "public"."observers" TO "anon";
GRANT ALL ON TABLE "public"."observers" TO "authenticated";
GRANT ALL ON TABLE "public"."observers" TO "service_role";
GRANT SELECT ON TABLE "public"."observers" TO "data_team";



GRANT ALL ON SEQUENCE "public"."observers_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."observers_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."observers_id_seq" TO "service_role";



GRANT ALL ON TABLE "public"."observers_view" TO "anon";
GRANT ALL ON TABLE "public"."observers_view" TO "authenticated";
GRANT ALL ON TABLE "public"."observers_view" TO "service_role";









ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES TO "service_role";






ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS TO "service_role";






ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES TO "service_role";






























RESET ALL;
