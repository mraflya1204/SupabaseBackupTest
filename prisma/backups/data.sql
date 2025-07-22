SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") FROM stdin;
\.


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."flow_state" ("id", "user_id", "auth_code", "code_challenge_method", "code_challenge", "provider_type", "provider_access_token", "provider_refresh_token", "created_at", "updated_at", "authentication_method", "auth_code_issued_at") FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") FROM stdin;
\.


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") FROM stdin;
\.


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."instances" ("id", "uuid", "raw_base_config", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag") FROM stdin;
\.


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") FROM stdin;
\.


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_factors" ("id", "user_id", "friendly_name", "factor_type", "status", "created_at", "updated_at", "secret", "phone", "last_challenged_at", "web_authn_credential", "web_authn_aaguid") FROM stdin;
\.


--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_challenges" ("id", "factor_id", "created_at", "verified_at", "ip_address", "otp_code", "web_authn_session_data") FROM stdin;
\.


--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."one_time_tokens" ("id", "user_id", "token_type", "token_hash", "relates_to", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") FROM stdin;
\.


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_providers" ("id", "resource_id", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_providers" ("id", "sso_provider_id", "entity_id", "metadata_xml", "metadata_url", "attribute_mapping", "created_at", "updated_at", "name_id_format") FROM stdin;
\.


--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_relay_states" ("id", "sso_provider_id", "request_id", "for_email", "redirect_to", "created_at", "updated_at", "flow_state_id") FROM stdin;
\.


--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_domains" ("id", "sso_provider_id", "domain", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: delegates; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."delegates" ("id", "created_at", "name", "school", "email", "phone", "nationality", "dob", "type", "accommodation", "mun_experiences", "referral_code", "council1", "council1_country", "council2", "council2_country", "council3", "council3_country", "payment_proof_url", "social_media_proof_url", "id_proof_url") FROM stdin;
1	2025-07-17 05:41:46.990704+00	testes	tes	tes@gmail.com	+62 12345678222	tes	2025-07-09	International	yes	asdasd	sdasd	asdasd	asdasd	asdas	asdasd	asdasd	asdasd	https://mjkvqobjuwoqamrtddia.supabase.co/storage/v1/object/public/payment-proofs/payment-proofs/1752731019207-mun-club-01-768x361.jpg	https://mjkvqobjuwoqamrtddia.supabase.co/storage/v1/object/public/social-media-proofs/social-media-proofs/1752731019207-mun-club-01-768x361.jpg	https://mjkvqobjuwoqamrtddia.supabase.co/storage/v1/object/public/id-proofs/id-proofs/1752731019207-mun-club-01-768x361.jpg
\.


--
-- Data for Name: delegations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."delegations" ("id", "created_at", "delegation_name", "school", "head_delegate_name", "head_delegate_email", "head_delegate_phone", "payment_proof_url", "social_media_proof_url") FROM stdin;
\.


--
-- Data for Name: delegation_delegates; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."delegation_delegates" ("id", "delegation_id", "created_at", "delegate_order", "name", "email", "phone_number", "nationality", "is_international_delegate", "mun_experiences", "accommodation", "council_1", "first_country_1", "second_country_1", "council_2", "first_country_2", "second_country_2", "council_3", "first_country_3", "second_country_3", "co_delegate_name_unsc", "co_delegate_contact_unsc", "social_media_proof_url") FROM stdin;
\.


--
-- Data for Name: observers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."observers" ("id", "created_at", "name", "nationality", "mun_experiences", "email", "phone", "payment_proof_url", "council1", "council2", "council3") FROM stdin;
2	2025-07-15 12:02:20.651176+00	test user	2025-07-15	Conference_Council_Year_Award_Role	test@email.com	08123456789	https://mjkvqobjuwoqamrtddia.supabase.co/storage/v1/object/public/payment-proofs/payment-proofs/1752580939899-payment.jpg	council_4	council_3	council_3
\.


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets" ("id", "name", "owner", "created_at", "updated_at", "public", "avif_autodetection", "file_size_limit", "allowed_mime_types", "owner_id") FROM stdin;
sumun25-payments	sumun25-payments	\N	2025-07-12 21:48:42.052951+00	2025-07-12 21:48:42.052951+00	t	f	10485760	\N	\N
payment-proofs	payment-proofs	\N	2025-07-12 21:49:47.500207+00	2025-07-12 21:49:47.500207+00	t	f	10485760	\N	\N
social-media-proofs	social-media-proofs	\N	2025-07-12 21:50:09.765315+00	2025-07-12 21:50:09.765315+00	t	f	10485760	\N	\N
id-proofs	id-proofs	\N	2025-07-16 05:17:23.08897+00	2025-07-16 05:17:23.08897+00	t	f	10485760	\N	\N
\.


--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."objects" ("id", "bucket_id", "name", "owner", "created_at", "updated_at", "last_accessed_at", "metadata", "version", "owner_id", "user_metadata") FROM stdin;
0c958d54-43bb-4782-86fd-ea0155cd9e1d	payment-proofs	payment-proofs/1752357987691-mun-club-01-768x361.jpg	\N	2025-07-12 22:04:35.820129+00	2025-07-12 22:04:35.820129+00	2025-07-12 22:04:35.820129+00	{"eTag": "\\"5430e45f35fd70ab3225b21b57634444\\"", "size": 22573, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-07-12T22:04:36.000Z", "contentLength": 22573, "httpStatusCode": 200}	1bf4d043-54a0-43ab-a3a5-bdd7e5052146	\N	{}
abeb0231-2278-4dd4-aaba-43973f679c96	social-media-proofs	delegation-social-media-proofs/.emptyFolderPlaceholder	\N	2025-07-22 06:46:44.169415+00	2025-07-22 06:46:44.169415+00	2025-07-22 06:46:44.169415+00	{"eTag": "\\"d41d8cd98f00b204e9800998ecf8427e\\"", "size": 0, "mimetype": "application/octet-stream", "cacheControl": "max-age=3600", "lastModified": "2025-07-22T06:46:45.000Z", "contentLength": 0, "httpStatusCode": 200}	0039fda0-5ad7-4835-8e2e-cd1978de9017	\N	{}
b727319c-abb4-459b-8a80-0937d9d62969	social-media-proofs	social-media-proofs/1752357987691-mun-club-01-768x361.jpg	\N	2025-07-12 22:04:35.987349+00	2025-07-12 22:04:35.987349+00	2025-07-12 22:04:35.987349+00	{"eTag": "\\"5430e45f35fd70ab3225b21b57634444\\"", "size": 22573, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-07-12T22:04:36.000Z", "contentLength": 22573, "httpStatusCode": 200}	3505f811-5eb6-4934-9f29-a25e9ee7f93d	\N	{}
e684ecdc-462e-418b-844f-250754168155	payment-proofs	payment-proofs/1752493415515-mun-club-01-768x361.jpg	\N	2025-07-14 11:43:36.687279+00	2025-07-14 11:43:36.687279+00	2025-07-14 11:43:36.687279+00	{"eTag": "\\"5430e45f35fd70ab3225b21b57634444\\"", "size": 22573, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-07-14T11:43:37.000Z", "contentLength": 22573, "httpStatusCode": 200}	522ee98d-d9de-46ca-aa4a-be8893c2b89e	\N	{}
b56fa9c4-f1e7-4509-898c-9cf37681b235	social-media-proofs	social-media-proofs/1752493415515-mun-club-01-768x361.jpg	\N	2025-07-14 11:43:37.690107+00	2025-07-14 11:43:37.690107+00	2025-07-14 11:43:37.690107+00	{"eTag": "\\"5430e45f35fd70ab3225b21b57634444\\"", "size": 22573, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-07-14T11:43:38.000Z", "contentLength": 22573, "httpStatusCode": 200}	30fe0c8e-1aad-4e7e-b977-603b33df092d	\N	{}
5f2efb2c-cc8c-4689-8e18-1758a9db5f42	payment-proofs	payment-proofs/1752580898309-payment.jpg	\N	2025-07-15 12:01:39.567824+00	2025-07-15 12:01:39.567824+00	2025-07-15 12:01:39.567824+00	{"eTag": "\\"9fbbc657a763be3617a2cccf0dcf9a70\\"", "size": 83029, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-07-15T12:01:40.000Z", "contentLength": 83029, "httpStatusCode": 200}	d72282ef-e3ef-4e4e-9e82-2e42213fadbb	\N	{}
15e229b0-5586-485a-979c-af82ef2f5a47	payment-proofs	payment-proofs/1752580939899-payment.jpg	\N	2025-07-15 12:02:20.561695+00	2025-07-15 12:02:20.561695+00	2025-07-15 12:02:20.561695+00	{"eTag": "\\"9fbbc657a763be3617a2cccf0dcf9a70\\"", "size": 83029, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-07-15T12:02:21.000Z", "contentLength": 83029, "httpStatusCode": 200}	7a41d000-11b4-4f93-9184-17df0ebe1607	\N	{}
7ed33cff-9804-49f4-8f14-280c98f264ea	social-media-proofs	social-media-proofs/1752642964887-mun-club-01-768x361.jpg	\N	2025-07-16 05:14:11.459412+00	2025-07-16 05:14:11.459412+00	2025-07-16 05:14:11.459412+00	{"eTag": "\\"5430e45f35fd70ab3225b21b57634444\\"", "size": 22573, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-07-16T05:14:12.000Z", "contentLength": 22573, "httpStatusCode": 200}	5b610e66-643a-4c66-8d49-f8eb70070510	\N	{}
ce8da90c-5f1e-4d5c-a660-73ed70a37037	payment-proofs	payment-proofs/1752642964887-mun-club-01-768x361.jpg	\N	2025-07-16 05:14:11.480383+00	2025-07-16 05:14:11.480383+00	2025-07-16 05:14:11.480383+00	{"eTag": "\\"5430e45f35fd70ab3225b21b57634444\\"", "size": 22573, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-07-16T05:14:12.000Z", "contentLength": 22573, "httpStatusCode": 200}	b087b3b0-e3a8-425e-b168-ad109a133df5	\N	{}
8fceed20-660f-4526-8885-021862065e05	social-media-proofs	social-media-proofs/1752643173181-mun-club-01-768x361.jpg	\N	2025-07-16 05:17:39.446607+00	2025-07-16 05:17:39.446607+00	2025-07-16 05:17:39.446607+00	{"eTag": "\\"5430e45f35fd70ab3225b21b57634444\\"", "size": 22573, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-07-16T05:17:40.000Z", "contentLength": 22573, "httpStatusCode": 200}	f6a0978e-21dc-42c4-8665-93bbef121e81	\N	{}
f7457243-3e47-4bad-af37-bc2014213068	payment-proofs	payment-proofs/1752643173181-mun-club-01-768x361.jpg	\N	2025-07-16 05:17:39.462705+00	2025-07-16 05:17:39.462705+00	2025-07-16 05:17:39.462705+00	{"eTag": "\\"5430e45f35fd70ab3225b21b57634444\\"", "size": 22573, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-07-16T05:17:40.000Z", "contentLength": 22573, "httpStatusCode": 200}	5e46c3d2-bf81-42ae-a056-bb0ae31c9333	\N	{}
29591ade-4569-4930-947a-0f9602b3990f	id-proofs	id-proofs/1752643173181-Flow and Diffusion Model.pdf	\N	2025-07-16 05:17:41.315304+00	2025-07-16 05:17:41.315304+00	2025-07-16 05:17:41.315304+00	{"eTag": "\\"68425e2749d49bb9c3aa21d55ca4c8f9\\"", "size": 4883181, "mimetype": "application/pdf", "cacheControl": "max-age=3600", "lastModified": "2025-07-16T05:17:42.000Z", "contentLength": 4883181, "httpStatusCode": 200}	f68fbc15-b8b9-4855-bb53-93d91dda27a1	\N	{}
e6b1d111-eb66-4cd1-b470-03e9e950e5e6	social-media-proofs	social-media-proofs/1752643778330-mun-club-01-768x361.jpg	\N	2025-07-16 05:27:45.407757+00	2025-07-16 05:27:45.407757+00	2025-07-16 05:27:45.407757+00	{"eTag": "\\"5430e45f35fd70ab3225b21b57634444\\"", "size": 22573, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-07-16T05:27:46.000Z", "contentLength": 22573, "httpStatusCode": 200}	94d667b5-5eb7-4a24-9212-6df53c6727ac	\N	{}
9c120153-6542-44e4-a75c-19742058a5f1	payment-proofs	payment-proofs/1752643778330-mun-club-01-768x361.jpg	\N	2025-07-16 05:27:45.526236+00	2025-07-16 05:27:45.526236+00	2025-07-16 05:27:45.526236+00	{"eTag": "\\"5430e45f35fd70ab3225b21b57634444\\"", "size": 22573, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-07-16T05:27:46.000Z", "contentLength": 22573, "httpStatusCode": 200}	ca5ef713-325b-4b4e-a969-477008586164	\N	{}
dc7d699e-232f-4b99-a936-1cc108724942	id-proofs	id-proofs/1752643778330-IDJK3274522896805_1.pdf	\N	2025-07-16 05:27:45.557461+00	2025-07-16 05:27:45.557461+00	2025-07-16 05:27:45.557461+00	{"eTag": "\\"698a57b004909ba5f466ef41a2956fdb\\"", "size": 158100, "mimetype": "application/pdf", "cacheControl": "max-age=3600", "lastModified": "2025-07-16T05:27:46.000Z", "contentLength": 158100, "httpStatusCode": 200}	ee2f7d1d-8026-4c1b-92ba-718112ca500e	\N	{}
7f99fc9f-cced-4330-a862-e74ebf5fd7ed	social-media-proofs	social-media-proofs/1752731019207-mun-club-01-768x361.jpg	\N	2025-07-17 05:41:46.731595+00	2025-07-17 05:41:46.731595+00	2025-07-17 05:41:46.731595+00	{"eTag": "\\"5430e45f35fd70ab3225b21b57634444\\"", "size": 22573, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-07-17T05:41:47.000Z", "contentLength": 22573, "httpStatusCode": 200}	f808edbc-2156-4244-ad50-d43db7dd02eb	\N	{}
036ab1e4-8b11-4cc7-a5ff-419cb82fadb1	payment-proofs	payment-proofs/1752731019207-mun-club-01-768x361.jpg	\N	2025-07-17 05:41:46.784507+00	2025-07-17 05:41:46.784507+00	2025-07-17 05:41:46.784507+00	{"eTag": "\\"5430e45f35fd70ab3225b21b57634444\\"", "size": 22573, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-07-17T05:41:47.000Z", "contentLength": 22573, "httpStatusCode": 200}	503df233-b087-40e6-8885-0a0c76abf3e0	\N	{}
7dbc0da7-339c-47ce-80c1-a88a92060a6e	id-proofs	id-proofs/1752731019207-mun-club-01-768x361.jpg	\N	2025-07-17 05:41:46.865883+00	2025-07-17 05:41:46.865883+00	2025-07-17 05:41:46.865883+00	{"eTag": "\\"5430e45f35fd70ab3225b21b57634444\\"", "size": 22573, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-07-17T05:41:47.000Z", "contentLength": 22573, "httpStatusCode": 200}	b2e2650c-0c2b-481f-96a5-e4b18f0f1106	\N	{}
dadffc0d-24c8-4454-b7e1-86d4e028db37	payment-proofs	delegation-payment-proofs/.emptyFolderPlaceholder	\N	2025-07-22 06:46:35.157522+00	2025-07-22 06:46:35.157522+00	2025-07-22 06:46:35.157522+00	{"eTag": "\\"d41d8cd98f00b204e9800998ecf8427e\\"", "size": 0, "mimetype": "application/octet-stream", "cacheControl": "max-age=3600", "lastModified": "2025-07-22T06:46:36.000Z", "contentLength": 0, "httpStatusCode": 200}	b28f8ec3-8ab3-4b64-bd4f-9812a3107a20	\N	{}
\.


--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads" ("id", "in_progress_size", "upload_signature", "bucket_id", "key", "version", "owner_id", "created_at", "user_metadata") FROM stdin;
\.


--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads_parts" ("id", "upload_id", "size", "part_number", "bucket_id", "key", "etag", "owner_id", "version", "created_at") FROM stdin;
\.


--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 1, false);


--
-- Name: delegates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."delegates_id_seq"', 1, true);


--
-- Name: delegation_delegates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."delegation_delegates_id_seq"', 17, true);


--
-- Name: delegations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."delegations_id_seq"', 22, true);


--
-- Name: observers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."observers_id_seq"', 2, true);


--
-- PostgreSQL database dump complete
--

RESET ALL;
