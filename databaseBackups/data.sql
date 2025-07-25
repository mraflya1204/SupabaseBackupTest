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

COPY "public"."delegates" ("id", "created_at", "name", "school", "email", "phone", "nationality", "dob", "type", "accommodation", "mun_experiences", "referral_code", "council1", "council1_country", "council2", "council2_country", "council3", "council3_country", "payment_proof_url", "social_media_proof_url", "id_proof_url", "double_delegate_name") FROM stdin;
1	2025-07-17 05:41:46.990704+00	testes	tes	tes@gmail.com	+62 12345678222	tes	2025-07-09	International	yes	asdasd	sdasd	asdasd	asdasd	asdas	asdasd	asdasd	asdasd	https://mjkvqobjuwoqamrtddia.supabase.co/storage/v1/object/public/payment-proofs/payment-proofs/1752731019207-mun-club-01-768x361.jpg	https://mjkvqobjuwoqamrtddia.supabase.co/storage/v1/object/public/social-media-proofs/social-media-proofs/1752731019207-mun-club-01-768x361.jpg	https://mjkvqobjuwoqamrtddia.supabase.co/storage/v1/object/public/id-proofs/id-proofs/1752731019207-mun-club-01-768x361.jpg	\N
3	2025-07-22 16:13:25.229369+00	ads	sekolah	waduh@gmail.com	+62 12345678222	tes	2025-07-08	Local	yes	asdasd	adasd	ads	asd	sad	asdasd	asdasd	asds	https://mjkvqobjuwoqamrtddia.supabase.co/storage/v1/object/public/payment-proofs/payment-proofs/1753200803459-mun-club-01-768x361.jpg	https://mjkvqobjuwoqamrtddia.supabase.co/storage/v1/object/public/social-media-proofs/social-media-proofs/1753200803459-mun-club-01-768x361.jpg	https://mjkvqobjuwoqamrtddia.supabase.co/storage/v1/object/public/id-proofs/id-proofs/1753200803459-mun-club-01-768x361.jpg	\N
4	2025-07-22 19:32:46.588695+00	tyutyuty	adstyutyu	utyutyuty@gmail.com	+62 12345678222	ytityiity	2025-07-17	Local	yes	tyityityiyti	yuyuo	tyityi	tyityi	tyity	tyityi	ytityi	tyityi	https://mjkvqobjuwoqamrtddia.supabase.co/storage/v1/object/public/payment-proofs/payment-proofs/1753212878709-mun-club-01-768x361.jpg	https://mjkvqobjuwoqamrtddia.supabase.co/storage/v1/object/public/social-media-proofs/social-media-proofs/1753212878709-mun-club-01-768x361.jpg	https://mjkvqobjuwoqamrtddia.supabase.co/storage/v1/object/public/id-proofs/id-proofs/1753212878709-mun-club-01-768x361.jpg	\N
5	2025-07-24 00:25:27.968055+00	adgdg	adgadg	dgdgsag@gmail.com	+62 12345678	qweqwe	2025-07-11	Local	yes	asdasd	dghdgh	dfhdfh	dfhdf	dfhdfh	dhfdfh	dfhdfh	dfhdfh	https://mjkvqobjuwoqamrtddia.supabase.co/storage/v1/object/public/payment-proofs/payment-proofs/1753316841990-mun-club-01-768x361.jpg	https://mjkvqobjuwoqamrtddia.supabase.co/storage/v1/object/public/social-media-proofs/social-media-proofs/1753316841990-mun-club-01-768x361.jpg	https://mjkvqobjuwoqamrtddia.supabase.co/storage/v1/object/public/id-proofs/id-proofs/1753316841990-mun-club-01-768x361.jpg	dfhdfh
\.


--
-- Data for Name: delegations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."delegations" ("id", "created_at", "delegation_name", "school", "payment_proof_url", "referal_code", "accommodation", "type") FROM stdin;
23	2025-07-22 10:12:34.973182+00	ITS new	ITS	https://mjkvqobjuwoqamrtddia.supabase.co/storage/v1/object/public/payment-proofs/delegation-payment-proofs/1753179153278-1753162802005-payment.jpg	\N	\N	\N
24	2025-07-22 10:20:31.218299+00	ITS Lain	ITS	https://mjkvqobjuwoqamrtddia.supabase.co/storage/v1/object/public/payment-proofs/delegation-payment-proofs/1753179628766-1753162802005-payment.jpg	\N	\N	\N
25	2025-07-24 01:27:55.288823+00	adgadg	adgadg	https://mjkvqobjuwoqamrtddia.supabase.co/storage/v1/object/public/payment-proofs/delegation-payment-proofs/1753320589709-mun-club-01-768x361.jpg	\N	\N	\N
26	2025-07-24 13:02:45.298614+00	delegasi keren	sekolah keren	https://mjkvqobjuwoqamrtddia.supabase.co/storage/v1/object/public/payment-proofs/delegation-payment-proofs/1753362280447-simon.jpg	\N	yes	Local
\.


--
-- Data for Name: delegation_delegates; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."delegation_delegates" ("id", "delegation_id", "created_at", "delegate_order", "name", "nationality", "dob", "mun_experiences", "id_proof_url", "council1", "council1_country", "council2", "council2_country", "council3", "council3_country", "double_delegate_name", "delegation_name", "email", "phone") FROM stdin;
1	23	2025-07-22 13:16:49.247915+00	1	John Doe	Indonesia	1900-01-01		PLEASE_UPDATE_URL							\N	\N	\N	\N
2	23	2025-07-22 13:16:49.247915+00	2	Luci	Indonesia	1900-01-01		PLEASE_UPDATE_URL						\N	\N	\N	\N	\N
3	24	2025-07-22 13:16:49.247915+00	1	John Doe Lain	Indonesia	1900-01-01	1	PLEASE_UPDATE_URL	1	1	1	1	1	1	\N	\N	\N	\N
4	24	2025-07-22 13:16:49.247915+00	2	Luci Lain	Indonesia	1900-01-01	2	PLEASE_UPDATE_URL	2	2	2	2	2	\N	\N	\N	\N	\N
5	25	2025-07-24 01:27:55.792462+00	1	dhdfh	dfhdfh	2025-07-22	dhdhfd	https://mjkvqobjuwoqamrtddia.supabase.co/storage/v1/object/public/id-proofs/delegation-id-proofs/1753320589703-1-Mask%20group.png	sfhsfh	sfhsfh	sfhsfh	sfhsfh	sfhsfh	sfhshf	\N	\N	\N	\N
6	25	2025-07-24 01:27:55.792462+00	2	dgjdgj	dgjdg	2025-07-17	dgjdgj	https://mjkvqobjuwoqamrtddia.supabase.co/storage/v1/object/public/id-proofs/delegation-id-proofs/1753320589703-2-mun-club-01-768x361.jpg	dgjdgj	dgjdg	dgjdgj	dgjdgj	dgjdgj	dgjdgj	\N	\N	\N	\N
7	25	2025-07-24 01:27:55.792462+00	3	gjfgj	fgjfgj	2025-07-23	fgjfgj	https://mjkvqobjuwoqamrtddia.supabase.co/storage/v1/object/public/id-proofs/delegation-id-proofs/1753320589703-3-mun-club-01-768x361.jpg	fgjfg	jfjgfgj	fgjfgj	fgjfgj	fgjfgj	fgjfgj	\N	\N	\N	\N
8	25	2025-07-24 01:27:55.792462+00	4	gfjfgj	fgjfgj	2025-07-25	fgjfgj	https://mjkvqobjuwoqamrtddia.supabase.co/storage/v1/object/public/id-proofs/delegation-id-proofs/1753320589703-4-Mask%20group.png	fgjfgj	fgjfgj	fgjfgj	fgjfgj	fgjfg	fgjfgj	\N	\N	\N	\N
9	26	2025-07-24 13:02:45.916084+00	1	sfhsfh	dfhdfh	2025-07-18	adgadg	https://mjkvqobjuwoqamrtddia.supabase.co/storage/v1/object/public/id-proofs/delegation-id-proofs/1753362280408-1-simon.jpg	adgadg	adgadg	adgadg	adgadg	adgadg	adgadg	\N	delegasi keren	sfhsf@gmail.com	+62 151351353124
10	26	2025-07-24 13:02:45.916084+00	2	dfjdgj	jdgjdjdgj	2025-07-24	djfdjdfj	https://mjkvqobjuwoqamrtddia.supabase.co/storage/v1/object/public/id-proofs/delegation-id-proofs/1753362280408-2-simon.jpg	dfjdfj	dfjdfj	dfjdfj	dfjdfj	dfjdfj	jdfjfd	\N	delegasi keren	yuoy@hmail.com	+62 575079124124124
11	26	2025-07-24 13:02:45.916084+00	3	sshffh	adgadgg	2025-07-24	fjfsh	https://mjkvqobjuwoqamrtddia.supabase.co/storage/v1/object/public/id-proofs/delegation-id-proofs/1753362280408-3-simon.jpg	sfhsfh	shffs	sfhshf	sfhfsh	sfhsfh	sfsfhfsh	\N	delegasi keren	sfhfshhf@mail.com	+62 113136163124124
12	26	2025-07-24 13:02:45.916084+00	4	sfhsfhs	shsfhfsh	2025-07-23	sfhsfh	https://mjkvqobjuwoqamrtddia.supabase.co/storage/v1/object/public/id-proofs/delegation-id-proofs/1753362280408-4-simon.jpg	sfhshf	sfhshf	sfhshf	sfhfsh	sfhshf	sfhfsh	\N	delegasi keren	ryiyr@gmail.com	+62 942047124124124
13	26	2025-07-24 13:02:45.916084+00	5	sjdjdjg	adadadgadg	2025-07-24	adgadgadg	https://mjkvqobjuwoqamrtddia.supabase.co/storage/v1/object/public/id-proofs/delegation-id-proofs/1753362280408-5-simon.jpg	adgagdadg	gadgaadg	adgadg	adgadg	adagadg	adgadg	\N	delegasi keren	dgjdf@gmail.com	+62 10396136124124
\.


--
-- Data for Name: delegation_delegates_old; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."delegation_delegates_old" ("id", "delegation_id", "created_at", "delegate_order", "name", "email", "phone_number", "nationality", "is_international_delegate", "mun_experiences", "accommodation", "council_1", "first_country_1", "second_country_1", "council_2", "first_country_2", "second_country_2", "council_3", "first_country_3", "second_country_3", "co_delegate_name_unsc", "co_delegate_contact_unsc", "social_media_proof_url") FROM stdin;
18	23	2025-07-22 10:12:35.722062+00	1	John Doe	test@gmail.com	62123456789	Indonesia	t												\N	\N	https://mjkvqobjuwoqamrtddia.supabase.co/storage/v1/object/public/social-media-proofs/delegation-social-media-proofs/1753179153275-1-github%20pp.jpg
19	23	2025-07-22 10:12:35.722062+00	2	Luci	test@gmail.com	628987456123	Indonesia	f										\N		\N	\N	https://mjkvqobjuwoqamrtddia.supabase.co/storage/v1/object/public/social-media-proofs/delegation-social-media-proofs/1753179153275-2-github%20pp.jpg
20	24	2025-07-22 10:20:32.130479+00	1	John Doe Lain	lain@gmail.com	62123456789	Indonesia	t	1		1	1	1	1	1	1	1	1	1	\N	\N	https://mjkvqobjuwoqamrtddia.supabase.co/storage/v1/object/public/social-media-proofs/delegation-social-media-proofs/1753179628764-1-github%20pp.jpg
21	24	2025-07-22 10:20:32.130479+00	2	Luci Lain	lain@gmail.com	628987456123	Indonesia	f	2		2	2	2	2	2	2	2	\N	2	\N	\N	https://mjkvqobjuwoqamrtddia.supabase.co/storage/v1/object/public/social-media-proofs/delegation-social-media-proofs/1753179628764-2-github%20pp.jpg
\.


--
-- Data for Name: observers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."observers" ("id", "created_at", "name", "nationality", "mun_experiences", "email", "phone", "payment_proof_url", "council1", "council2", "council3", "accommodation") FROM stdin;
2	2025-07-15 12:02:20.651176+00	test user	2025-07-15	Conference_Council_Year_Award_Role	test@email.com	08123456789	https://mjkvqobjuwoqamrtddia.supabase.co/storage/v1/object/public/payment-proofs/payment-proofs/1752580939899-payment.jpg	council_4	council_3	council_3	\N
3	2025-07-22 19:34:23.219022+00	qweqwe	qweqwe	qqweqwe	qwqweqwe@gmail.com	+62 12345678222	https://mjkvqobjuwoqamrtddia.supabase.co/storage/v1/object/public/payment-proofs/payment-proofs/1753212975906-mun-club-01-768x361.jpg	qweqwe	qewqwe	qweqwe	\N
4	2025-07-22 20:16:37.447559+00	afasd	hfshsfh	sfhsfh	weh@gmail.com	+62 12345678222	https://mjkvqobjuwoqamrtddia.supabase.co/storage/v1/object/public/payment-proofs/payment-proofs/1753215395491-mun-club-01-768x361.jpg	ssfhs	sfhsfh	sfhs	\N
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
e0f92449-50a7-4c1b-8d90-217644bcdcfc	payment-proofs	delegation-payment-proofs/1753179628766-1753162802005-payment.jpg	\N	2025-07-22 10:20:31.031386+00	2025-07-22 10:20:31.031386+00	2025-07-22 10:20:31.031386+00	{"eTag": "\\"9fbbc657a763be3617a2cccf0dcf9a70\\"", "size": 83029, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-07-22T10:20:31.000Z", "contentLength": 83029, "httpStatusCode": 200}	baafc396-14d1-45ef-a61f-dcf73f4b149c	\N	{}
1cb3afb1-b1e2-4634-b611-4f33da807541	social-media-proofs	delegation-social-media-proofs/1753179628764-2-github pp.jpg	\N	2025-07-22 10:20:31.916997+00	2025-07-22 10:20:31.916997+00	2025-07-22 10:20:31.916997+00	{"eTag": "\\"c24e3aac6cbf410dfa5dd51448c3b5d3\\"", "size": 1192901, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-07-22T10:20:32.000Z", "contentLength": 1192901, "httpStatusCode": 200}	5d55e263-548f-4af2-abe3-f8f1d39d3381	\N	{}
9c0ede55-1bc7-46fa-ac34-8de50003d350	social-media-proofs	delegation-social-media-proofs/1753179628764-1-github pp.jpg	\N	2025-07-22 10:20:32.023114+00	2025-07-22 10:20:32.023114+00	2025-07-22 10:20:32.023114+00	{"eTag": "\\"c24e3aac6cbf410dfa5dd51448c3b5d3\\"", "size": 1192901, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-07-22T10:20:32.000Z", "contentLength": 1192901, "httpStatusCode": 200}	6cf2ef48-ccf9-42f6-bfad-4309e2e40eec	\N	{}
12df90c0-bff4-4c93-8664-21ff84460cf7	id-proofs	id-proofs/1753200803459-mun-club-01-768x361.jpg	\N	2025-07-22 16:13:24.371823+00	2025-07-22 16:13:24.371823+00	2025-07-22 16:13:24.371823+00	{"eTag": "\\"5430e45f35fd70ab3225b21b57634444\\"", "size": 22573, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-07-22T16:13:25.000Z", "contentLength": 22573, "httpStatusCode": 200}	04e2a338-8c89-4bc1-ba39-93134ed7f209	\N	{}
42906b49-0374-41c1-8e15-a49802030bb8	social-media-proofs	social-media-proofs/1753200803459-mun-club-01-768x361.jpg	\N	2025-07-22 16:13:24.408556+00	2025-07-22 16:13:24.408556+00	2025-07-22 16:13:24.408556+00	{"eTag": "\\"5430e45f35fd70ab3225b21b57634444\\"", "size": 22573, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-07-22T16:13:25.000Z", "contentLength": 22573, "httpStatusCode": 200}	edaab94e-e09e-419c-ab5f-710217250171	\N	{}
598d6cfb-e085-4840-b75d-1f06a6d5f8d7	payment-proofs	payment-proofs/1753215395491-mun-club-01-768x361.jpg	\N	2025-07-22 20:16:36.596462+00	2025-07-22 20:16:36.596462+00	2025-07-22 20:16:36.596462+00	{"eTag": "\\"5430e45f35fd70ab3225b21b57634444\\"", "size": 22573, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-07-22T20:16:37.000Z", "contentLength": 22573, "httpStatusCode": 200}	e851fbdd-f17c-4d20-8430-b4eb924186f5	\N	{}
f63e3d1c-8fc0-46e0-a81c-e69bdf4ace76	payment-proofs	payment-proofs/1753316841990-mun-club-01-768x361.jpg	\N	2025-07-24 00:25:27.486619+00	2025-07-24 00:25:27.486619+00	2025-07-24 00:25:27.486619+00	{"eTag": "\\"5430e45f35fd70ab3225b21b57634444\\"", "size": 22573, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-07-24T00:25:28.000Z", "contentLength": 22573, "httpStatusCode": 200}	012dd8b4-afc2-44ce-815a-1c56a22082d5	\N	{}
58b626bd-6d0e-4054-94ea-c278c0c2a6e6	id-proofs	id-proofs/1753316841990-mun-club-01-768x361.jpg	\N	2025-07-24 00:25:27.503842+00	2025-07-24 00:25:27.503842+00	2025-07-24 00:25:27.503842+00	{"eTag": "\\"5430e45f35fd70ab3225b21b57634444\\"", "size": 22573, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-07-24T00:25:28.000Z", "contentLength": 22573, "httpStatusCode": 200}	b2df2a61-08f7-4839-b40a-9a97a7a5f63b	\N	{}
ee8e9df1-b6d7-45a6-9b5e-96222b9c7168	social-media-proofs	social-media-proofs/1753316841990-mun-club-01-768x361.jpg	\N	2025-07-24 00:25:27.780904+00	2025-07-24 00:25:27.780904+00	2025-07-24 00:25:27.780904+00	{"eTag": "\\"5430e45f35fd70ab3225b21b57634444\\"", "size": 22573, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-07-24T00:25:28.000Z", "contentLength": 22573, "httpStatusCode": 200}	f6185539-9f18-4741-a8fb-ee32275fcfca	\N	{}
edd40c6f-8380-43f8-98cc-a0a14b87e6c5	social-media-proofs	delegation-social-media-proofs/1753362280407-1-simon.jpg	\N	2025-07-24 13:02:45.693493+00	2025-07-24 13:02:45.693493+00	2025-07-24 13:02:45.693493+00	{"eTag": "\\"66cb276e22dc12c83967194fd0382d04\\"", "size": 21373, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-07-24T13:02:46.000Z", "contentLength": 21373, "httpStatusCode": 200}	44b772b1-02ae-485c-9385-f1694b608570	\N	{}
9635c26b-9e09-4f41-8d73-81f6cef1b312	payment-proofs	delegation-payment-proofs/1753179153278-1753162802005-payment.jpg	\N	2025-07-22 10:12:34.780681+00	2025-07-22 10:12:34.780681+00	2025-07-22 10:12:34.780681+00	{"eTag": "\\"9fbbc657a763be3617a2cccf0dcf9a70\\"", "size": 83029, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-07-22T10:12:35.000Z", "contentLength": 83029, "httpStatusCode": 200}	dc984fd2-23e7-4f32-9c83-e8a34a5442b0	\N	{}
d2d53aff-a496-4dcc-8ccd-c0284dace0a7	social-media-proofs	delegation-social-media-proofs/1753179153275-2-github pp.jpg	\N	2025-07-22 10:12:35.550146+00	2025-07-22 10:12:35.550146+00	2025-07-22 10:12:35.550146+00	{"eTag": "\\"c24e3aac6cbf410dfa5dd51448c3b5d3\\"", "size": 1192901, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-07-22T10:12:36.000Z", "contentLength": 1192901, "httpStatusCode": 200}	4868af27-9ab3-48d7-88df-6cbdc589d394	\N	{}
301bcd8a-daa3-46bd-9224-3dfcae228345	social-media-proofs	delegation-social-media-proofs/1753179153275-1-github pp.jpg	\N	2025-07-22 10:12:35.621061+00	2025-07-22 10:12:35.621061+00	2025-07-22 10:12:35.621061+00	{"eTag": "\\"c24e3aac6cbf410dfa5dd51448c3b5d3\\"", "size": 1192901, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-07-22T10:12:36.000Z", "contentLength": 1192901, "httpStatusCode": 200}	db24d5de-0b48-471e-a5fd-9d7b7680b33a	\N	{}
84ec2d85-1362-4c73-b9cb-10422926151e	id-proofs	id-proofs/1753200790243-mun-club-01-768x361.jpg	\N	2025-07-22 16:13:11.187855+00	2025-07-22 16:13:11.187855+00	2025-07-22 16:13:11.187855+00	{"eTag": "\\"5430e45f35fd70ab3225b21b57634444\\"", "size": 22573, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-07-22T16:13:12.000Z", "contentLength": 22573, "httpStatusCode": 200}	5fd3de0e-5e44-479c-9b2b-38fd606d598c	\N	{}
1bd6c0f8-2e55-40e9-8f7a-51f23918b896	social-media-proofs	social-media-proofs/1753200790243-mun-club-01-768x361.jpg	\N	2025-07-22 16:13:11.229804+00	2025-07-22 16:13:11.229804+00	2025-07-22 16:13:11.229804+00	{"eTag": "\\"5430e45f35fd70ab3225b21b57634444\\"", "size": 22573, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-07-22T16:13:12.000Z", "contentLength": 22573, "httpStatusCode": 200}	3837fe62-baa5-4e9c-abae-5ad3ae1c7e70	\N	{}
f0506a69-6b0f-4586-a42c-1034efd1d94f	payment-proofs	payment-proofs/1753200790243-mun-club-01-768x361.jpg	\N	2025-07-22 16:13:11.26516+00	2025-07-22 16:13:11.26516+00	2025-07-22 16:13:11.26516+00	{"eTag": "\\"5430e45f35fd70ab3225b21b57634444\\"", "size": 22573, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-07-22T16:13:12.000Z", "contentLength": 22573, "httpStatusCode": 200}	f1653801-528e-4179-9cb2-59cc945cbf07	\N	{}
659c41f5-0b9a-4990-918f-26aba5e0602d	payment-proofs	payment-proofs/1753200803459-mun-club-01-768x361.jpg	\N	2025-07-22 16:13:24.416327+00	2025-07-22 16:13:24.416327+00	2025-07-22 16:13:24.416327+00	{"eTag": "\\"5430e45f35fd70ab3225b21b57634444\\"", "size": 22573, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-07-22T16:13:25.000Z", "contentLength": 22573, "httpStatusCode": 200}	c158103b-6c0b-43d8-9392-fa5453392937	\N	{}
a5abcd5c-4522-435c-bd15-d7a6062820fa	id-proofs	id-proofs/1753212878709-mun-club-01-768x361.jpg	\N	2025-07-22 19:32:46.364295+00	2025-07-22 19:32:46.364295+00	2025-07-22 19:32:46.364295+00	{"eTag": "\\"5430e45f35fd70ab3225b21b57634444\\"", "size": 22573, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-07-22T19:32:47.000Z", "contentLength": 22573, "httpStatusCode": 200}	267ff797-424d-479b-a0fa-c697663af67f	\N	{}
3245c5ed-f4be-426f-b491-368920a80e78	payment-proofs	payment-proofs/1753212878709-mun-club-01-768x361.jpg	\N	2025-07-22 19:32:46.471973+00	2025-07-22 19:32:46.471973+00	2025-07-22 19:32:46.471973+00	{"eTag": "\\"5430e45f35fd70ab3225b21b57634444\\"", "size": 22573, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-07-22T19:32:47.000Z", "contentLength": 22573, "httpStatusCode": 200}	fcba5cad-e5a3-4c91-b2ee-db30a01d11d3	\N	{}
cc26a541-bc36-452d-b543-d09dce1f7263	social-media-proofs	social-media-proofs/1753212878709-mun-club-01-768x361.jpg	\N	2025-07-22 19:32:46.505167+00	2025-07-22 19:32:46.505167+00	2025-07-22 19:32:46.505167+00	{"eTag": "\\"5430e45f35fd70ab3225b21b57634444\\"", "size": 22573, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-07-22T19:32:47.000Z", "contentLength": 22573, "httpStatusCode": 200}	8f896d72-63ec-4ed5-b7a7-1d31e7d1986a	\N	{}
ed44fc53-dca0-4fa7-a1e3-d54b797a1dbd	payment-proofs	payment-proofs/1753212975906-mun-club-01-768x361.jpg	\N	2025-07-22 19:34:23.127694+00	2025-07-22 19:34:23.127694+00	2025-07-22 19:34:23.127694+00	{"eTag": "\\"5430e45f35fd70ab3225b21b57634444\\"", "size": 22573, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-07-22T19:34:24.000Z", "contentLength": 22573, "httpStatusCode": 200}	f4b10081-8e59-4437-8759-85b68c4e16aa	\N	{}
dadffc0d-24c8-4454-b7e1-86d4e028db37	payment-proofs	delegation-payment-proofs/.emptyFolderPlaceholder	\N	2025-07-22 06:46:35.157522+00	2025-07-22 06:46:35.157522+00	2025-07-22 06:46:35.157522+00	{"eTag": "\\"d41d8cd98f00b204e9800998ecf8427e\\"", "size": 0, "mimetype": "application/octet-stream", "cacheControl": "max-age=3600", "lastModified": "2025-07-22T06:46:36.000Z", "contentLength": 0, "httpStatusCode": 200}	b28f8ec3-8ab3-4b64-bd4f-9812a3107a20	\N	{}
14819601-0b03-4dc7-b096-167c17d902ee	payment-proofs	delegation-payment-proofs/1753320589709-mun-club-01-768x361.jpg	\N	2025-07-24 01:27:55.005321+00	2025-07-24 01:27:55.005321+00	2025-07-24 01:27:55.005321+00	{"eTag": "\\"5430e45f35fd70ab3225b21b57634444\\"", "size": 22573, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-07-24T01:27:55.000Z", "contentLength": 22573, "httpStatusCode": 200}	532773a1-a3e6-4aef-b16c-1fa1677b44bd	\N	{}
7981c9c1-ae71-4ef3-94be-de97a9e805bb	social-media-proofs	delegation-social-media-proofs/1753320590375-delegation-Mask group (1).png	\N	2025-07-24 01:27:55.193714+00	2025-07-24 01:27:55.193714+00	2025-07-24 01:27:55.193714+00	{"eTag": "\\"16b6137dc0a702b5432011f5c585d19a\\"", "size": 9525, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-07-24T01:27:56.000Z", "contentLength": 9525, "httpStatusCode": 200}	cac3d0fc-c2a5-4728-9f54-b2d47a95a4fc	\N	{}
87fe6b56-412a-49d3-9d06-9dd50dbca142	social-media-proofs	delegation-social-media-proofs/1753320589702-2-Mask group.png	\N	2025-07-24 01:27:55.433442+00	2025-07-24 01:27:55.433442+00	2025-07-24 01:27:55.433442+00	{"eTag": "\\"16b6137dc0a702b5432011f5c585d19a\\"", "size": 9525, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-07-24T01:27:56.000Z", "contentLength": 9525, "httpStatusCode": 200}	7d46e6fb-7e7b-4926-85de-1e1b3b96fd02	\N	{}
425ba2f8-6f45-4466-bf1b-da1aa0c8729b	social-media-proofs	delegation-social-media-proofs/1753320589702-4-Mask group (1).png	\N	2025-07-24 01:27:55.53917+00	2025-07-24 01:27:55.53917+00	2025-07-24 01:27:55.53917+00	{"eTag": "\\"16b6137dc0a702b5432011f5c585d19a\\"", "size": 9525, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-07-24T01:27:56.000Z", "contentLength": 9525, "httpStatusCode": 200}	9d62e345-2dae-40ef-927f-165155e3b29e	\N	{}
4ba8b997-1a05-49ce-bd9c-5b8cdb96b84c	social-media-proofs	delegation-social-media-proofs/1753320589702-3-mun-club-01-768x361.jpg	\N	2025-07-24 01:27:55.550892+00	2025-07-24 01:27:55.550892+00	2025-07-24 01:27:55.550892+00	{"eTag": "\\"5430e45f35fd70ab3225b21b57634444\\"", "size": 22573, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-07-24T01:27:56.000Z", "contentLength": 22573, "httpStatusCode": 200}	5bf8578e-f80d-4f42-8027-394b21e3cde6	\N	{}
5273d491-4fad-41b7-9dba-878ffd95b3e9	id-proofs	delegation-id-proofs/1753320589703-2-mun-club-01-768x361.jpg	\N	2025-07-24 01:27:55.573756+00	2025-07-24 01:27:55.573756+00	2025-07-24 01:27:55.573756+00	{"eTag": "\\"5430e45f35fd70ab3225b21b57634444\\"", "size": 22573, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-07-24T01:27:56.000Z", "contentLength": 22573, "httpStatusCode": 200}	eae0c680-a2ac-42df-b2ed-13571f481fe7	\N	{}
6745de65-0b60-46fe-ac6e-fd67fcc84c51	social-media-proofs	delegation-social-media-proofs/1753320589702-1-Mask group (1).png	\N	2025-07-24 01:27:55.576936+00	2025-07-24 01:27:55.576936+00	2025-07-24 01:27:55.576936+00	{"eTag": "\\"16b6137dc0a702b5432011f5c585d19a\\"", "size": 9525, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-07-24T01:27:56.000Z", "contentLength": 9525, "httpStatusCode": 200}	61cf41e8-6ed4-40d7-adc0-5068bcc5feb8	\N	{}
8ed7a290-cb84-44e9-8b59-0c363c1c0562	id-proofs	delegation-id-proofs/1753320589703-3-mun-club-01-768x361.jpg	\N	2025-07-24 01:27:55.708896+00	2025-07-24 01:27:55.708896+00	2025-07-24 01:27:55.708896+00	{"eTag": "\\"5430e45f35fd70ab3225b21b57634444\\"", "size": 22573, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-07-24T01:27:56.000Z", "contentLength": 22573, "httpStatusCode": 200}	087db7aa-3422-4de2-91d9-c299c0ac5ce7	\N	{}
d52015f9-abd5-49f8-ab85-07fb2553e214	id-proofs	delegation-id-proofs/1753320589703-1-Mask group.png	\N	2025-07-24 01:27:55.712275+00	2025-07-24 01:27:55.712275+00	2025-07-24 01:27:55.712275+00	{"eTag": "\\"16b6137dc0a702b5432011f5c585d19a\\"", "size": 9525, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-07-24T01:27:56.000Z", "contentLength": 9525, "httpStatusCode": 200}	ea6bf092-c67c-4f65-880b-32c3b77aa626	\N	{}
b1a556d6-66d8-42fd-ab34-64629e47af00	id-proofs	delegation-id-proofs/1753320589703-4-Mask group.png	\N	2025-07-24 01:27:55.717709+00	2025-07-24 01:27:55.717709+00	2025-07-24 01:27:55.717709+00	{"eTag": "\\"16b6137dc0a702b5432011f5c585d19a\\"", "size": 9525, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-07-24T01:27:56.000Z", "contentLength": 9525, "httpStatusCode": 200}	7b88a418-0f38-472b-b72e-66be2d5afb31	\N	{}
4cf3c221-dd16-4929-bff0-6ba9009e011f	payment-proofs	delegation-payment-proofs/1753362280447-simon.jpg	\N	2025-07-24 13:02:45.033997+00	2025-07-24 13:02:45.033997+00	2025-07-24 13:02:45.033997+00	{"eTag": "\\"66cb276e22dc12c83967194fd0382d04\\"", "size": 21373, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-07-24T13:02:45.000Z", "contentLength": 21373, "httpStatusCode": 200}	8c33057c-7301-4de7-969f-d179bc3c7aa7	\N	{}
fe8c97b9-ec86-4934-880e-c1bc49eddf7b	social-media-proofs	delegation-social-media-proofs/1753362280407-2-simon.jpg	\N	2025-07-24 13:02:45.494521+00	2025-07-24 13:02:45.494521+00	2025-07-24 13:02:45.494521+00	{"eTag": "\\"66cb276e22dc12c83967194fd0382d04\\"", "size": 21373, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-07-24T13:02:46.000Z", "contentLength": 21373, "httpStatusCode": 200}	bbf3c64d-4a45-43fe-bddc-19f72d98e59d	\N	{}
6e786edb-603a-4729-ac12-cca68cbb46f2	social-media-proofs	delegation-social-media-proofs/1753362280408-3-simon.jpg	\N	2025-07-24 13:02:45.574384+00	2025-07-24 13:02:45.574384+00	2025-07-24 13:02:45.574384+00	{"eTag": "\\"66cb276e22dc12c83967194fd0382d04\\"", "size": 21373, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-07-24T13:02:46.000Z", "contentLength": 21373, "httpStatusCode": 200}	3fe7d192-8a12-4f6f-be5d-03ad94d381d2	\N	{}
e69466e2-c640-4fdb-b3b1-4a74b4b546f5	social-media-proofs	delegation-social-media-proofs/1753362280408-5-simon.jpg	\N	2025-07-24 13:02:45.610503+00	2025-07-24 13:02:45.610503+00	2025-07-24 13:02:45.610503+00	{"eTag": "\\"66cb276e22dc12c83967194fd0382d04\\"", "size": 21373, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-07-24T13:02:46.000Z", "contentLength": 21373, "httpStatusCode": 200}	94b64840-97d2-4eb4-b39b-43bfa3054568	\N	{}
144c7562-d767-442a-bbed-827484715f71	social-media-proofs	delegation-social-media-proofs/1753362280408-4-simon.jpg	\N	2025-07-24 13:02:45.676422+00	2025-07-24 13:02:45.676422+00	2025-07-24 13:02:45.676422+00	{"eTag": "\\"66cb276e22dc12c83967194fd0382d04\\"", "size": 21373, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-07-24T13:02:46.000Z", "contentLength": 21373, "httpStatusCode": 200}	3dd93c9f-de96-4150-8ac8-6541d7f35e22	\N	{}
c12820c0-ca33-41ad-9e16-84836c145341	id-proofs	delegation-id-proofs/1753362280408-5-simon.jpg	\N	2025-07-24 13:02:45.771022+00	2025-07-24 13:02:45.771022+00	2025-07-24 13:02:45.771022+00	{"eTag": "\\"66cb276e22dc12c83967194fd0382d04\\"", "size": 21373, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-07-24T13:02:46.000Z", "contentLength": 21373, "httpStatusCode": 200}	9866152c-c211-4c2e-87ab-26e39d7229c7	\N	{}
17d86c69-ab34-4a9f-8946-04302387a820	id-proofs	delegation-id-proofs/1753362280408-4-simon.jpg	\N	2025-07-24 13:02:45.811497+00	2025-07-24 13:02:45.811497+00	2025-07-24 13:02:45.811497+00	{"eTag": "\\"66cb276e22dc12c83967194fd0382d04\\"", "size": 21373, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-07-24T13:02:46.000Z", "contentLength": 21373, "httpStatusCode": 200}	fcca8733-5618-40fe-bdd8-536c2eec8e3e	\N	{}
a988c5ec-bfb1-4395-8208-c3cae367e555	id-proofs	delegation-id-proofs/1753362280408-1-simon.jpg	\N	2025-07-24 13:02:45.827888+00	2025-07-24 13:02:45.827888+00	2025-07-24 13:02:45.827888+00	{"eTag": "\\"66cb276e22dc12c83967194fd0382d04\\"", "size": 21373, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-07-24T13:02:46.000Z", "contentLength": 21373, "httpStatusCode": 200}	060ade8d-d1f4-48c3-a792-b2f1f8d11f75	\N	{}
36b4753a-217a-4cf9-8f70-026bb5430e35	id-proofs	delegation-id-proofs/1753362280408-2-simon.jpg	\N	2025-07-24 13:02:45.708671+00	2025-07-24 13:02:45.708671+00	2025-07-24 13:02:45.708671+00	{"eTag": "\\"66cb276e22dc12c83967194fd0382d04\\"", "size": 21373, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-07-24T13:02:46.000Z", "contentLength": 21373, "httpStatusCode": 200}	c2d5d109-968f-4ccb-ba5b-77fbc66399b3	\N	{}
d4003cfb-8596-403d-bea4-8368e7c3463f	id-proofs	delegation-id-proofs/1753362280408-3-simon.jpg	\N	2025-07-24 13:02:45.756726+00	2025-07-24 13:02:45.756726+00	2025-07-24 13:02:45.756726+00	{"eTag": "\\"66cb276e22dc12c83967194fd0382d04\\"", "size": 21373, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-07-24T13:02:46.000Z", "contentLength": 21373, "httpStatusCode": 200}	9b8103aa-5b86-4973-967e-eb775675b6f9	\N	{}
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

SELECT pg_catalog.setval('"public"."delegates_id_seq"', 5, true);


--
-- Name: delegation_delegates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."delegation_delegates_id_seq"', 21, true);


--
-- Name: delegation_delegates_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."delegation_delegates_id_seq1"', 13, true);


--
-- Name: delegations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."delegations_id_seq"', 26, true);


--
-- Name: observers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."observers_id_seq"', 4, true);


--
-- PostgreSQL database dump complete
--

RESET ALL;
