--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.5
-- Dumped by pg_dump version 9.5.5

-- Started on 2017-02-08 07:38:34

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = cadastre, pg_catalog;

--
-- TOC entry 4583 (class 0 OID 206729)
-- Dependencies: 279
-- Data for Name: area_type; Type: TABLE DATA; Schema: cadastre; Owner: postgres
--

INSERT INTO area_type VALUES ('officialArea', 'Official Area::::Официальная Площадь::::المساحة الرسمية::::Superficie Officielle::::::::Área Oficial::::登记面积', '::::::::::::::::::::::::', 'c');
INSERT INTO area_type VALUES ('surveyedArea', 'Surveyed Area::::Площадь по Съемке::::المساحة الممسوحة::::Superficie Levée::::::::Área Pesquisada::::已调查面积', '::::::::::::::::::::::::', 'c');
INSERT INTO area_type VALUES ('calculatedArea', 'Calculated Area::::Вычисленная Площадь::::المساحة المحسوبة::::Superficie Calculée::::::::Área Calculada::::已计算面积', '::::::::::::::::::::::::', 'c');
INSERT INTO area_type VALUES ('nonOfficialArea', 'Non-official Area::::Неофициальная Площадь::::مساحة غير رسمية::::Superficie Non-officielle::::::::Área Não Oficial::::非正式面积', '::::::::::::::::::::::::', 'c');


--
-- TOC entry 4584 (class 0 OID 206736)
-- Dependencies: 280
-- Data for Name: building_unit_type; Type: TABLE DATA; Schema: cadastre; Owner: postgres
--

INSERT INTO building_unit_type VALUES ('individual', 'Individual::::Индивидуальное::::فردي::::Individuel::::::::Individual::::个人', '::::::::::::::::::::::::', 'c');
INSERT INTO building_unit_type VALUES ('shared', 'Shared::::Общая::::مشتركة::::Partagé::::::::Compartilhado::::共享', '::::::::::::::::::::::::', 'c');


--
-- TOC entry 4590 (class 0 OID 206804)
-- Dependencies: 286
-- Data for Name: cadastre_object_type; Type: TABLE DATA; Schema: cadastre; Owner: postgres
--

INSERT INTO cadastre_object_type VALUES ('buildingUnit', 'Building Unit::::Единица Здания::::وحدة بناية::::Bâtiment::::::::Unidade de Construção::::建筑单元', '::::::::::::::::::::::::', 'x', false);
INSERT INTO cadastre_object_type VALUES ('parcel', 'Parcel::::Участок::::قطعة::::Parcelle::::::::Parcela::::宗地', '::::::::::::::::::::::::', 'c', true);
INSERT INTO cadastre_object_type VALUES ('utilityNetwork', 'Utility Network::::Инфраструктурная Сеть::::شبكة خدمات::::Réseaux de services publics::::::::Rede de Utilidade::::实用网络', '::::::::::::::::::::::::', 'x', false);


--
-- TOC entry 4591 (class 0 OID 206811)
-- Dependencies: 287
-- Data for Name: dimension_type; Type: TABLE DATA; Schema: cadastre; Owner: postgres
--

INSERT INTO dimension_type VALUES ('0D', '0D::::0D::::0D::::0D::::::::0D::::0维', '::::::::::::::::::::::::', 'c');
INSERT INTO dimension_type VALUES ('1D', '1D::::1D::::1D::::1D::::::::1D::::1维', '::::::::::::::::::::::::', 'c');
INSERT INTO dimension_type VALUES ('2D', '2D::::2D::::2D::::2D::::::::2D::::2维', '::::::::::::::::::::::::', 'c');
INSERT INTO dimension_type VALUES ('3D', '3D::::3D::::3D::::3D::::::::3D::::3维', '::::::::::::::::::::::::', 'c');
INSERT INTO dimension_type VALUES ('liminal', 'Liminal::::Liminal::::حدي::::Liminal::::::::Liminar::::阈限', '::::::::::::::::::::::::', 'x');


--
-- TOC entry 4581 (class 0 OID 206527)
-- Dependencies: 250
-- Data for Name: land_use_type; Type: TABLE DATA; Schema: cadastre; Owner: postgres
--

INSERT INTO land_use_type VALUES ('industrial', 'Industrial::::Производственная::::صناعي::::Industriel::::Industrial::::Industrial::::工业的', '::::::::::::::::::::::::', 'c');
INSERT INTO land_use_type VALUES ('residential', 'Residential::::Жилая::::سكني::::Résidentiel::::Residencial::::Residencial::::居住', '::::::::::::::::::::::::', 'c');
INSERT INTO land_use_type VALUES ('agricultural', 'Agricultural::::Сельскохозяйственная::::زراعي::::Agricole::::Agricultura::::Agrícola::::农业的', '::::::::::::::::::::::::', 'c');
INSERT INTO land_use_type VALUES ('commercial', 'Commercial::::Коммерческая::::تجاري::::Commercial::::Comercial::::Comercial::::商业的', '::::::::::::::::::::::::', 'c');


--
-- TOC entry 4598 (class 0 OID 206882)
-- Dependencies: 295
-- Data for Name: level_content_type; Type: TABLE DATA; Schema: cadastre; Owner: postgres
--

INSERT INTO level_content_type VALUES ('building', 'Building::::Здание::::بناية::::Bâtiment::::::::Construção::::建筑', '::::::::::::::::::::::::', 'x');
INSERT INTO level_content_type VALUES ('customary', 'Customary::::Традиционный::::عرفي::::Coutumier::::::::Consuetudinário::::习惯法', '::::::::::::::::::::::::', 'x');
INSERT INTO level_content_type VALUES ('geographicLocator', 'Geographic Locators::::Географические Точки::::تحديد المواقع الجغرافية::::Repères Géographiques::::::::Localizadores geográficos::::地理定位', 'Extension to LADM::::Расширение LADM::::ميزة إضافية للنظام::::Extension au LADM::::::::Extensão para LADM::::扩展为 LADM', 'c');
INSERT INTO level_content_type VALUES ('informal', 'Informal::::Неформальный::::غير رسمي::::Informel::::::::Informal::::非正式', '::::::::::::::::::::::::', 'x');
INSERT INTO level_content_type VALUES ('mixed', 'Mixed::::Смешанный::::مختلط::::Mixte::::::::Misto::::混合的', '::::::::::::::::::::::::', 'x');
INSERT INTO level_content_type VALUES ('network', 'Network::::Сеть::::شبكة::::Réseau::::::::Rede::::网络', '::::::::::::::::::::::::', 'x');
INSERT INTO level_content_type VALUES ('primaryRight', 'Primary Right::::Первичное право::::حق اساسي::::Droit Principal::::::::Direito Fundamental::::基本权利', '::::::::::::::::::::::::', 'c');
INSERT INTO level_content_type VALUES ('responsibility', 'Responsibility::::Ответственность::::المسؤوليات::::Responsibilité::::::::Responsabilidade::::责任', '::::::::::::::::::::::::', 'x');
INSERT INTO level_content_type VALUES ('restriction', 'Restriction::::Ограничение::::القيود::::Restriction::::::::Restrição::::限制', '::::::::::::::::::::::::', 'c');


--
-- TOC entry 4601 (class 0 OID 206917)
-- Dependencies: 299
-- Data for Name: register_type; Type: TABLE DATA; Schema: cadastre; Owner: postgres
--

INSERT INTO register_type VALUES ('all', 'All::::Все::::الجميع::::Tout::::::::Todo::::所有', '::::::::::::::::::::::::', 'c');
INSERT INTO register_type VALUES ('forest', 'Forest::::Лес::::الغابات::::Forêt::::::::Floresta::::森林', '::::::::::::::::::::::::', 'x');
INSERT INTO register_type VALUES ('mining', 'Mining::::Добыча::::التعدين::::Mine::::::::Mineração::::采矿', '::::::::::::::::::::::::', 'x');
INSERT INTO register_type VALUES ('publicSpace', 'Public Space::::Общественная территория::::اماكن عامة::::Espace Publique::::::::Espaço Público::::公共空间', '::::::::::::::::::::::::', 'x');
INSERT INTO register_type VALUES ('rural', 'Rural::::Сельский::::ريفي::::Rural::::::::Rural::::农村', '::::::::::::::::::::::::', 'x');
INSERT INTO register_type VALUES ('urban', 'Urban::::Городской::::حضري::::Urbain::::::::Urbano::::城市', '::::::::::::::::::::::::', 'x');


--
-- TOC entry 4609 (class 0 OID 206982)
-- Dependencies: 308
-- Data for Name: structure_type; Type: TABLE DATA; Schema: cadastre; Owner: postgres
--

INSERT INTO structure_type VALUES ('topological', 'Topological::::Топологический::::طبوغرافي::::Topologique::::::::Topológica::::地志学的', '::::::::::::::::::::::::', 'c');
INSERT INTO structure_type VALUES ('unStructuredLine', 'UnstructuredLine::::Неструктурированная линия::::خط غير منتظم::::Ligne::::::::Linha não estruturada::::自由线', '::::::::::::::::::::::::', 'c');
INSERT INTO structure_type VALUES ('point', 'Point::::Точка::::نقطة::::Point::::::::Ponto::::点', '::::::::::::::::::::::::', 'c');
INSERT INTO structure_type VALUES ('polygon', 'Polygon::::Полигон::::مضلع::::Polygone::::::::Polígono::::多边形', '::::::::::::::::::::::::', 'c');
INSERT INTO structure_type VALUES ('sketch', 'Sketch::::Схема::::رسم تخطيطي::::Croquis::::::::Esboço::::草图', '::::::::::::::::::::::::', 'c');
INSERT INTO structure_type VALUES ('text', 'Text::::Текс::::نص::::Texte::::::::Texto::::文本', '::::::::::::::::::::::::', 'c');


--
-- TOC entry 4596 (class 0 OID 206870)
-- Dependencies: 293
-- Data for Name: level; Type: TABLE DATA; Schema: cadastre; Owner: postgres
--



--
-- TOC entry 4610 (class 0 OID 206989)
-- Dependencies: 309
-- Data for Name: surface_relation_type; Type: TABLE DATA; Schema: cadastre; Owner: postgres
--

INSERT INTO surface_relation_type VALUES ('above', 'Above::::Над::::فوق::::Au-dessus::::::::Acima::::以上', '::::::::::::::::::::::::', 'x');
INSERT INTO surface_relation_type VALUES ('below', 'Below::::Под::::أسفل::::En-dessous::::::::Abaixo::::以下', '::::::::::::::::::::::::', 'x');
INSERT INTO surface_relation_type VALUES ('mixed', 'Mixed::::Смешанный::::مختلط::::Mixte::::::::Misto::::混合的', '::::::::::::::::::::::::', 'x');
INSERT INTO surface_relation_type VALUES ('onSurface', 'On Surface::::На Поверхности::::فوق السطح::::En Surface::::::::Na Superfície::::表面上', '::::::::::::::::::::::::', 'c');


--
-- TOC entry 4600 (class 0 OID 206894)
-- Dependencies: 297
-- Data for Name: spatial_unit; Type: TABLE DATA; Schema: cadastre; Owner: postgres
--



--
-- TOC entry 4580 (class 0 OID 206510)
-- Dependencies: 249
-- Data for Name: cadastre_object; Type: TABLE DATA; Schema: cadastre; Owner: postgres
--



--
-- TOC entry 4585 (class 0 OID 206743)
-- Dependencies: 281
-- Data for Name: cadastre_object_historic; Type: TABLE DATA; Schema: cadastre; Owner: postgres
--



--
-- TOC entry 4586 (class 0 OID 206754)
-- Dependencies: 282
-- Data for Name: cadastre_object_node_target; Type: TABLE DATA; Schema: cadastre; Owner: postgres
--



--
-- TOC entry 4587 (class 0 OID 206768)
-- Dependencies: 283
-- Data for Name: cadastre_object_node_target_historic; Type: TABLE DATA; Schema: cadastre; Owner: postgres
--



--
-- TOC entry 4588 (class 0 OID 206779)
-- Dependencies: 284
-- Data for Name: cadastre_object_target; Type: TABLE DATA; Schema: cadastre; Owner: postgres
--



--
-- TOC entry 4589 (class 0 OID 206793)
-- Dependencies: 285
-- Data for Name: cadastre_object_target_historic; Type: TABLE DATA; Schema: cadastre; Owner: postgres
--



--
-- TOC entry 4593 (class 0 OID 206840)
-- Dependencies: 290
-- Data for Name: hierarchy_level; Type: TABLE DATA; Schema: cadastre; Owner: postgres
--

INSERT INTO hierarchy_level VALUES ('0', 'Hierarchy 0::::Hierarchy 0::::تسلسل هرمي 0::::Hiérarchie 0::::::::Hierarquia 0::::第零层', '::::::::::::::::::::::::', 'c');
INSERT INTO hierarchy_level VALUES ('1', 'Hierarchy 1::::Hierarchy 1::::تسلسل هرمي 1::::Hiérarchie 1::::::::Hierarquia 1::::第一层', '::::::::::::::::::::::::', 'c');
INSERT INTO hierarchy_level VALUES ('2', 'Hierarchy 2::::Hierarchy 2::::تسلسل هرمي 2::::Hiérarchie 2::::::::Hierarquia 2::::第二层', '::::::::::::::::::::::::', 'c');
INSERT INTO hierarchy_level VALUES ('3', 'Hierarchy 3::::Hierarchy 3::::تسلسل هرمي 3::::Hiérarchie 3::::::::Hierarquia 3::::第三层', '::::::::::::::::::::::::', 'c');
INSERT INTO hierarchy_level VALUES ('4', 'Hierarchy 4::::Hierarchy 4::::تسلسل هرمي 4::::Hiérarchie 4::::::::Hierarquia 4::::第四层', '::::::::::::::::::::::::', 'c');


--
-- TOC entry 4613 (class 0 OID 207035)
-- Dependencies: 313
-- Data for Name: utility_network_status_type; Type: TABLE DATA; Schema: cadastre; Owner: postgres
--

INSERT INTO utility_network_status_type VALUES ('inUse', 'In Use::::Используется::::قيد الاستخدام::::Utilisé::::::::Em Uso::::在使用中', '::::::::::::::::::::::::', 'c');
INSERT INTO utility_network_status_type VALUES ('outOfUse', 'Out of Use::::Не используется::::خارج الخدمة::::Hors d''usage::::::::Fora de Uso::::不在用', '::::::::::::::::::::::::', 'c');
INSERT INTO utility_network_status_type VALUES ('planned', 'Planned::::Запланировано::::مخطط::::Planifié::::::::Planejado::::被规划', '::::::::::::::::::::::::', 'c');


--
-- TOC entry 4614 (class 0 OID 207042)
-- Dependencies: 314
-- Data for Name: utility_network_type; Type: TABLE DATA; Schema: cadastre; Owner: postgres
--

INSERT INTO utility_network_type VALUES ('chemical', 'Chemicals::::Химическая::::مواد كيماوية::::Produits chimiques::::::::Materiais químicos::::化学品', '::::::::::::::::::::::::', 'c');
INSERT INTO utility_network_type VALUES ('electricity', 'Electricity::::Электричество::::كهرباء::::Electricité::::::::Eletricidade::::电', '::::::::::::::::::::::::', 'c');
INSERT INTO utility_network_type VALUES ('gas', 'Gas::::Газ::::غاز::::Gaz::::::::Gás::::气', '::::::::::::::::::::::::', 'c');
INSERT INTO utility_network_type VALUES ('heating', 'Heating::::Отопление::::حرارة::::Chauffage::::::::Aquecedor::::取暖', '::::::::::::::::::::::::', 'c');
INSERT INTO utility_network_type VALUES ('oil', 'Oil::::Нефть::::بترول::::Pétrol::::::::Óleo::::油', '::::::::::::::::::::::::', 'c');
INSERT INTO utility_network_type VALUES ('telecommunication', 'Telecommunication::::Телекоммуникации::::اتصالات::::Télécommunication::::::::Telecomunicação::::通信', '::::::::::::::::::::::::', 'c');
INSERT INTO utility_network_type VALUES ('water', 'Water::::Вода::::ماء::::Eau::::::::Água::::水', '::::::::::::::::::::::::', 'c');


--
-- TOC entry 4594 (class 0 OID 206847)
-- Dependencies: 291
-- Data for Name: legal_space_utility_network; Type: TABLE DATA; Schema: cadastre; Owner: postgres
--



--
-- TOC entry 4595 (class 0 OID 206860)
-- Dependencies: 292
-- Data for Name: legal_space_utility_network_historic; Type: TABLE DATA; Schema: cadastre; Owner: postgres
--



--
-- TOC entry 4597 (class 0 OID 206879)
-- Dependencies: 294
-- Data for Name: level_config_map_layer; Type: TABLE DATA; Schema: cadastre; Owner: postgres
--



--
-- TOC entry 4599 (class 0 OID 206889)
-- Dependencies: 296
-- Data for Name: level_historic; Type: TABLE DATA; Schema: cadastre; Owner: postgres
--



--
-- TOC entry 4602 (class 0 OID 206927)
-- Dependencies: 301
-- Data for Name: spatial_unit_address; Type: TABLE DATA; Schema: cadastre; Owner: postgres
--



--
-- TOC entry 4603 (class 0 OID 206934)
-- Dependencies: 302
-- Data for Name: spatial_unit_address_historic; Type: TABLE DATA; Schema: cadastre; Owner: postgres
--



--
-- TOC entry 4592 (class 0 OID 206818)
-- Dependencies: 288
-- Data for Name: spatial_unit_group; Type: TABLE DATA; Schema: cadastre; Owner: postgres
--



--
-- TOC entry 4604 (class 0 OID 206938)
-- Dependencies: 303
-- Data for Name: spatial_unit_group_historic; Type: TABLE DATA; Schema: cadastre; Owner: postgres
--



--
-- TOC entry 4605 (class 0 OID 206953)
-- Dependencies: 304
-- Data for Name: spatial_unit_historic; Type: TABLE DATA; Schema: cadastre; Owner: postgres
--



--
-- TOC entry 4606 (class 0 OID 206967)
-- Dependencies: 305
-- Data for Name: spatial_unit_in_group; Type: TABLE DATA; Schema: cadastre; Owner: postgres
--



--
-- TOC entry 4607 (class 0 OID 206974)
-- Dependencies: 306
-- Data for Name: spatial_unit_in_group_historic; Type: TABLE DATA; Schema: cadastre; Owner: postgres
--



--
-- TOC entry 4582 (class 0 OID 206534)
-- Dependencies: 251
-- Data for Name: spatial_value_area; Type: TABLE DATA; Schema: cadastre; Owner: postgres
--



--
-- TOC entry 4608 (class 0 OID 206978)
-- Dependencies: 307
-- Data for Name: spatial_value_area_historic; Type: TABLE DATA; Schema: cadastre; Owner: postgres
--



--
-- TOC entry 4611 (class 0 OID 207000)
-- Dependencies: 311
-- Data for Name: survey_point; Type: TABLE DATA; Schema: cadastre; Owner: postgres
--



--
-- TOC entry 4612 (class 0 OID 207020)
-- Dependencies: 312
-- Data for Name: survey_point_historic; Type: TABLE DATA; Schema: cadastre; Owner: postgres
--



-- Completed on 2017-02-08 07:38:35

--
-- PostgreSQL database dump complete
--

