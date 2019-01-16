-- EJECUCION
CREATE SEQUENCE SQ_DET_MOTOR_EVAL_IND_RIESGO
INCREMENT BY 1
START WITH 1
MAXVALUE 9999999999999999999999999999
MINVALUE 1
NOCACHE;

CREATE TABLE DET_MOTOR_EVAL_IND_RIESGO
(
ID_MOTOR_EVAL_IND_RIESGO NUMBER NOT NULL,
ID_CLIENTE NUMBER NOT NULL,
ID_SOLICITUD_ORIGINAL NUMBER NOT NULL,
ID_SOLICITUD NUMBER NOT NULL,
BURO VARCHAR2(25 ),
CLASIFICACION_BC VARCHAR2(25 ),
CLASIFICACION_SBS_NOR NUMBER,
CLASIFICACION_SBS_CPP NUMBER,
CLASIFICACION_SBS_DUD NUMBER,
CLASIFICACION_SBS_PER NUMBER,
CLASIFICACION_SBS_DEF NUMBER,
CONSULTA_IMPAGO VARCHAR2(35),
ENDEUDAMIENTO VARCHAR2(35),
RIESGO_CAMBIARIO VARCHAR2(35),
IN_ESTADO VARCHAR2(5 ),
ID_USUA_CREA         VARCHAR2(30)    not null,
FE_USUA_CREA         DATE                 not null,
DE_TERM_CREA         VARCHAR2(39 )    not null,
ID_USUA_MODI         VARCHAR2(30 ),
FE_USUA_MODI         DATE,
DE_TERM_MODI         VARCHAR2(39 ),
CONSTRAINT PK_MOTOR_EVAL_IND_RIESGO PRIMARY KEY (ID_MOTOR_EVAL_IND_RIESGO)
);

CREATE INDEX IDX_MOTOR_EVAL_IND_RIESGO_01
ON WPYMES.DET_MOTOR_EVAL_IND_RIESGO(ID_CLIENTE, ID_SOLICITUD);

GRANT SELECT, INSERT, UPDATE, DELETE ON WPYMES.DET_MOTOR_EVAL_IND_RIESGO TO APP_WPYMES;
GRANT SELECT ON WPYMES.SQ_DET_MOTOR_EVAL_IND_RIESGO TO APP_WPYMES;


---------------------------------------
INSERT INTO rel_multitabla (
  id_codigo,      id_tabla,       id_item,
  de_descripcion, no_desc_valor,
  no_desc_aux1,   no_desc_aux2,   no_desc_aux3,   no_desc_aux4,   no_desc_aux5,   no_desc_aux6,
  no_desc_aux7,   no_desc_aux8,   no_desc_aux9,   no_desc_aux10,  no_desc_aux11,  no_desc_aux12,
  tx_informativo, no_observacion, no_ind_estado,  de_area,
  fe_inicio_vig,  fe_fin_vig,
  id_usua_crea,   fe_usua_crea,   de_term_crea)
VALUES (
  sq_multitabla.nextval, '234', '00',
  'Motor Evaluador - Indicador de Riesgos', 'Código del indicador de Riesgo',
  'Código de no deterioro', 'Código de deterioro', NULL, NULL, NULL, NULL,
  NULL,     NULL,     NULL, NULL, NULL, NULL,
  NULL,     NULL,     '0',  'RIE',
  SYSDATE,  NULL,
  USER,     SYSDATE,  sys_context('userenv', 'IP_ADDRESS'));

INSERT INTO rel_multitabla (
  id_codigo,                      id_tabla,       id_item,
  de_descripcion,                 no_desc_valor,
  no_desc_aux1,   no_desc_aux2,   no_desc_aux3,   no_desc_aux4,   no_desc_aux5,   no_desc_aux6,
  no_desc_aux7,   no_desc_aux8,   no_desc_aux9,   no_desc_aux10,  no_desc_aux11,  no_desc_aux12,
  tx_informativo, no_observacion, no_ind_estado,  de_area,
  fe_inicio_vig,  fe_fin_vig,
  id_usua_crea,   fe_usua_crea,   de_term_crea)
VALUES (
  sq_multitabla.nextval, '234', '01',
  'Buro', 'BURO',
  '0', '1', NULL, NULL, NULL, NULL,
  NULL,     NULL,     NULL, NULL, NULL, NULL,
  NULL,     NULL,     '1',  'RIE',
  SYSDATE,  NULL,
  USER,     SYSDATE,  sys_context('userenv', 'IP_ADDRESS'));
------------------------------------------------------------

INSERT INTO rel_multitabla (
  id_codigo,                      id_tabla,       id_item,
  de_descripcion,                 no_desc_valor,
  no_desc_aux1,   no_desc_aux2,   no_desc_aux3,   no_desc_aux4,   no_desc_aux5,   no_desc_aux6,
  no_desc_aux7,   no_desc_aux8,   no_desc_aux9,   no_desc_aux10,  no_desc_aux11,  no_desc_aux12,
  tx_informativo, no_observacion, no_ind_estado,  de_area,
  fe_inicio_vig,  fe_fin_vig,
  id_usua_crea,   fe_usua_crea,   de_term_crea)
VALUES (
  sq_multitabla.nextval, '234', '00',
  'Motor Evaluador - Indicador de Riesgos', 'Código del indicador de Riesgo',
  'Código de no deterioro', 'Código de deterioro', NULL, NULL, NULL, NULL,
  NULL,     NULL,     NULL, NULL, NULL, NULL,
  NULL,     NULL,     '0',  'RIE',
  SYSDATE,  NULL,
  USER,     SYSDATE,  sys_context('userenv', 'IP_ADDRESS'));

INSERT INTO rel_multitabla (
  id_codigo,                      id_tabla,       id_item,
  de_descripcion,                 no_desc_valor,
  no_desc_aux1,   no_desc_aux2,   no_desc_aux3,   no_desc_aux4,   no_desc_aux5,   no_desc_aux6,
  no_desc_aux7,   no_desc_aux8,   no_desc_aux9,   no_desc_aux10,  no_desc_aux11,  no_desc_aux12,
  tx_informativo, no_observacion, no_ind_estado,  de_area,
  fe_inicio_vig,  fe_fin_vig,
  id_usua_crea,   fe_usua_crea,   de_term_crea)
VALUES (
  sq_multitabla.nextval, '234', '01',
  'Buró', 'BURO',
  '0', '1', NULL, NULL, NULL, NULL,
  NULL,     NULL,     NULL, NULL, NULL, NULL,
  NULL,     NULL,     '1',  'RIE',
  SYSDATE,  NULL,
  USER,     SYSDATE,  sys_context('userenv', 'IP_ADDRESS'));

INSERT INTO rel_multitabla (
  id_codigo,                      id_tabla,       id_item,
  de_descripcion,                 no_desc_valor,
  no_desc_aux1,   no_desc_aux2,   no_desc_aux3,   no_desc_aux4,   no_desc_aux5,   no_desc_aux6,
  no_desc_aux7,   no_desc_aux8,   no_desc_aux9,   no_desc_aux10,  no_desc_aux11,  no_desc_aux12,
  tx_informativo, no_observacion, no_ind_estado,  de_area,
  fe_inicio_vig,  fe_fin_vig,
  id_usua_crea,   fe_usua_crea,   de_term_crea)
VALUES (
  sq_multitabla.nextval, '234',   '02',
  'Clasificación Banco', 'CLASIFICACION_BC',
  '0', '1', NULL, NULL, NULL, NULL,
  NULL,     NULL,     NULL, NULL, NULL, NULL,
  NULL,     NULL,     '1',  'RIE',
  SYSDATE,  NULL,
  USER,     SYSDATE,  sys_context('userenv', 'IP_ADDRESS'));


INSERT INTO rel_multitabla (
  id_codigo,                      id_tabla,       id_item,
  de_descripcion,                 no_desc_valor,
  no_desc_aux1,   no_desc_aux2,   no_desc_aux3,   no_desc_aux4,   no_desc_aux5,   no_desc_aux6,
  no_desc_aux7,   no_desc_aux8,   no_desc_aux9,   no_desc_aux10,  no_desc_aux11,  no_desc_aux12,
  tx_informativo, no_observacion, no_ind_estado,  de_area,
  fe_inicio_vig,  fe_fin_vig,
  id_usua_crea,   fe_usua_crea,   de_term_crea)
VALUES (
  sq_multitabla.nextval,          '234',          '03',
  'Clasificación SBS Normal',     'CLASIFICACION_SBS_NOR',
  '0',            '1',            NULL,           NULL,           NULL,           NULL,
  NULL,           NULL,           NULL,           NULL,           NULL,           NULL,
  NULL,           NULL,           '1',            'RIE',
  SYSDATE,        NULL,
  USER,           SYSDATE,        sys_context('userenv', 'IP_ADDRESS'));


INSERT INTO rel_multitabla (
  id_codigo,                      id_tabla,       id_item,
  de_descripcion,                 no_desc_valor,
  no_desc_aux1,   no_desc_aux2,   no_desc_aux3,   no_desc_aux4,   no_desc_aux5,   no_desc_aux6,
  no_desc_aux7,   no_desc_aux8,   no_desc_aux9,   no_desc_aux10,  no_desc_aux11,  no_desc_aux12,
  tx_informativo, no_observacion, no_ind_estado,  de_area,
  fe_inicio_vig,  fe_fin_vig,
  id_usua_crea,   fe_usua_crea,   de_term_crea)
VALUES (
  sq_multitabla.nextval,          '234',          '04',
  'Clasificación SBS CPP',        'CLASIFICACION_SBS_CPP',
  '0',            '1',            NULL,           NULL,           NULL,           NULL,
  NULL,           NULL,           NULL,           NULL,           NULL,           NULL,
  NULL,           NULL,           '1',            'RIE',
  SYSDATE,        NULL,
  USER,           SYSDATE,        sys_context('userenv', 'IP_ADDRESS'));


INSERT INTO rel_multitabla (
  id_codigo,                      id_tabla,       id_item,
  de_descripcion,                 no_desc_valor,
  no_desc_aux1,   no_desc_aux2,   no_desc_aux3,   no_desc_aux4,   no_desc_aux5,   no_desc_aux6,
  no_desc_aux7,   no_desc_aux8,   no_desc_aux9,   no_desc_aux10,  no_desc_aux11,  no_desc_aux12,
  tx_informativo, no_observacion, no_ind_estado,  de_area,
  fe_inicio_vig,  fe_fin_vig,
  id_usua_crea,   fe_usua_crea,   de_term_crea)
VALUES (
  sq_multitabla.nextval,          '234',          '05',
  'Clasificación SBS Dudoso',     'CLASIFICACION_SBS_DUD',
  '0',            '1',            NULL,           NULL,           NULL,           NULL,
  NULL,           NULL,           NULL,           NULL,           NULL,           NULL,
  NULL,           NULL,           '1',            'RIE',
  SYSDATE,        NULL,
  USER,           SYSDATE,        sys_context('userenv', 'IP_ADDRESS'));


INSERT INTO rel_multitabla (
  id_codigo,                      id_tabla,       id_item,
  de_descripcion,                 no_desc_valor,
  no_desc_aux1,   no_desc_aux2,   no_desc_aux3,   no_desc_aux4,   no_desc_aux5,   no_desc_aux6,
  no_desc_aux7,   no_desc_aux8,   no_desc_aux9,   no_desc_aux10,  no_desc_aux11,  no_desc_aux12,
  tx_informativo, no_observacion, no_ind_estado,  de_area,
  fe_inicio_vig,  fe_fin_vig,
  id_usua_crea,   fe_usua_crea,   de_term_crea)
VALUES (
  sq_multitabla.nextval,          '234',          '06',
  'Clasificación SBS Deficiente', 'CLASIFICACION_SBS_DEF',
  '0',            '1',            NULL,           NULL,           NULL,           NULL,
  NULL,           NULL,           NULL,           NULL,           NULL,           NULL,
  NULL,           NULL,           '1',            'RIE',
  SYSDATE,        NULL,
  USER,           SYSDATE,        sys_context('userenv', 'IP_ADDRESS'));


INSERT INTO rel_multitabla (
  id_codigo,                      id_tabla,       id_item,
  de_descripcion,                 no_desc_valor,
  no_desc_aux1,   no_desc_aux2,   no_desc_aux3,   no_desc_aux4,   no_desc_aux5,   no_desc_aux6,
  no_desc_aux7,   no_desc_aux8,   no_desc_aux9,   no_desc_aux10,  no_desc_aux11,  no_desc_aux12,
  tx_informativo, no_observacion, no_ind_estado,  de_area,
  fe_inicio_vig,  fe_fin_vig,
  id_usua_crea,   fe_usua_crea,   de_term_crea)
VALUES (
  sq_multitabla.nextval,          '234',          '07',
  'Clasificación SBS Pérdida',    'CLASIFICACION_SBS_PER',
  '0',            '1',            NULL,           NULL,           NULL,           NULL,
  NULL,           NULL,           NULL,           NULL,           NULL,           NULL,
  NULL,           NULL,           '1',            'RIE',
  SYSDATE,        NULL,
  USER,           SYSDATE,        sys_context('userenv', 'IP_ADDRESS'));

INSERT INTO rel_multitabla (
  id_codigo,                      id_tabla,       id_item,
  de_descripcion,                 no_desc_valor,
  no_desc_aux1,   no_desc_aux2,   no_desc_aux3,   no_desc_aux4,   no_desc_aux5,   no_desc_aux6,
  no_desc_aux7,   no_desc_aux8,   no_desc_aux9,   no_desc_aux10,  no_desc_aux11,  no_desc_aux12,
  tx_informativo, no_observacion, no_ind_estado,  de_area,
  fe_inicio_vig,  fe_fin_vig,
  id_usua_crea,   fe_usua_crea,   de_term_crea)
VALUES (
  sq_multitabla.nextval,          '234',          '08',
  'Impago',    'IMPAGO',
  '0',            '1',            NULL,           NULL,           NULL,           NULL,
  NULL,           NULL,           NULL,           NULL,           NULL,           NULL,
  NULL,           NULL,           '1',            'RIE',
  SYSDATE,        NULL,
  USER,           SYSDATE,        sys_context('userenv', 'IP_ADDRESS'));

INSERT INTO rel_multitabla (
  id_codigo,                      id_tabla,       id_item,
  de_descripcion,                 no_desc_valor,
  no_desc_aux1,   no_desc_aux2,   no_desc_aux3,   no_desc_aux4,   no_desc_aux5,   no_desc_aux6,
  no_desc_aux7,   no_desc_aux8,   no_desc_aux9,   no_desc_aux10,  no_desc_aux11,  no_desc_aux12,
  tx_informativo, no_observacion, no_ind_estado,  de_area,
  fe_inicio_vig,  fe_fin_vig,
  id_usua_crea,   fe_usua_crea,   de_term_crea)
VALUES (
  sq_multitabla.nextval,          '234',          '09',
  'Endeudamiento',    'ENDEUDAMIENTO',
  '0',            '1',            NULL,           NULL,           NULL,           NULL,
  NULL,           NULL,           NULL,           NULL,           NULL,           NULL,
  NULL,           NULL,           '1',            'RIE',
  SYSDATE,        NULL,
  USER,           SYSDATE,        sys_context('userenv', 'IP_ADDRESS'));

INSERT INTO rel_multitabla (
  id_codigo,                      id_tabla,       id_item,
  de_descripcion,                 no_desc_valor,
  no_desc_aux1,   no_desc_aux2,   no_desc_aux3,   no_desc_aux4,   no_desc_aux5,   no_desc_aux6,
  no_desc_aux7,   no_desc_aux8,   no_desc_aux9,   no_desc_aux10,  no_desc_aux11,  no_desc_aux12,
  tx_informativo, no_observacion, no_ind_estado,  de_area,
  fe_inicio_vig,  fe_fin_vig,
  id_usua_crea,   fe_usua_crea,   de_term_crea)
VALUES (
  sq_multitabla.nextval,          '234',          '10',
  'Riesgo Cambiario',    'RIESGO_CAMBIARIO',
  '0',            '1',            NULL,           NULL,           NULL,           NULL,
  NULL,           NULL,           NULL,           NULL,           NULL,           NULL,
  NULL,           NULL,           '1',            'RIE',
  SYSDATE,        NULL,
  USER,           SYSDATE,        sys_context('userenv', 'IP_ADDRESS'));


-- Catálogos de indicadores de riesgos

-- Catálogo de indicadores de riesgos: Clasificación Banco
INSERT INTO rel_multitabla (
  id_codigo,                      id_tabla,       id_item,
  de_descripcion,                                 no_desc_valor,
  no_desc_aux1,   no_desc_aux2,   no_desc_aux3,   no_desc_aux4,   no_desc_aux5,   no_desc_aux6, no_desc_aux7,   no_desc_aux8,   no_desc_aux9,   no_desc_aux10,  no_desc_aux11,  no_desc_aux12,
  tx_informativo, no_observacion, no_ind_estado,  de_area,        fe_inicio_vig,  fe_fin_vig,     id_usua_crea,   fe_usua_crea,   de_term_crea)
VALUES (
  sq_multitabla.nextval,          '235',          '00',
  'Descripción de la clasificación banco',        'Código de registro en la BD',
  'Código de registro en ambiente HOST',          'Indicador de registro sin información',           NULL,           NULL,         NULL,           NULL,           NULL,           NULL,           NULL,           NULL,           NULL,           NULL,
  NULL,           NULL,           '0',            'RIE',          SYSDATE,        NULL,         USER,           SYSDATE,        sys_context('userenv', 'IP_ADDRESS'));

INSERT INTO rel_multitabla (
  id_codigo,                      id_tabla,       id_item,
  de_descripcion,                                 no_desc_valor,
  no_desc_aux1,   no_desc_aux2,   no_desc_aux3,   no_desc_aux4,   no_desc_aux5,   no_desc_aux6, no_desc_aux7,   no_desc_aux8,   no_desc_aux9,   no_desc_aux10,  no_desc_aux11,  no_desc_aux12,
  tx_informativo, no_observacion, no_ind_estado,  de_area,        fe_inicio_vig,  fe_fin_vig,     id_usua_crea,   fe_usua_crea,   de_term_crea)
VALUES (
  sq_multitabla.nextval,          '235',          '01',
  'Clasificación Normal',         'NOR',
  'NORMAL',       NULL,           NULL,           NULL,           NULL,           NULL,         NULL,           NULL,           NULL,           NULL,           NULL,           NULL,
  NULL,           NULL,           '1',            'RIE',          SYSDATE,        NULL,         USER,           SYSDATE,        sys_context('userenv', 'IP_ADDRESS'));

INSERT INTO rel_multitabla (
  id_codigo,                      id_tabla,       id_item,
  de_descripcion,                                 no_desc_valor,
  no_desc_aux1,   no_desc_aux2,   no_desc_aux3,   no_desc_aux4,   no_desc_aux5,   no_desc_aux6, no_desc_aux7,   no_desc_aux8,   no_desc_aux9,   no_desc_aux10,  no_desc_aux11,  no_desc_aux12,
  tx_informativo, no_observacion, no_ind_estado,  de_area,        fe_inicio_vig,  fe_fin_vig,     id_usua_crea,   fe_usua_crea,   de_term_crea)
VALUES (
  sq_multitabla.nextval,          '235',          '02',
  'Clasificación CPP',            'CPP',
  'CPP',          NULL,           NULL,           NULL,           NULL,           NULL,         NULL,           NULL,           NULL,           NULL,           NULL,           NULL,
  NULL,           NULL,           '1',            'RIE',          SYSDATE,        NULL,         USER,           SYSDATE,        sys_context('userenv', 'IP_ADDRESS'));

INSERT INTO rel_multitabla (
  id_codigo,                      id_tabla,       id_item,
  de_descripcion,                                 no_desc_valor,
  no_desc_aux1,   no_desc_aux2,   no_desc_aux3,   no_desc_aux4,   no_desc_aux5,   no_desc_aux6, no_desc_aux7,   no_desc_aux8,   no_desc_aux9,   no_desc_aux10,  no_desc_aux11,  no_desc_aux12,
  tx_informativo, no_observacion, no_ind_estado,  de_area,        fe_inicio_vig,  fe_fin_vig,     id_usua_crea,   fe_usua_crea,   de_term_crea)
VALUES (
  sq_multitabla.nextval,          '235',          '03',
  'Clasificación Dudoso',         'DUD',
  'DUDOSO',       NULL,           NULL,           NULL,           NULL,           NULL,         NULL,           NULL,           NULL,           NULL,           NULL,           NULL,
  NULL,           NULL,           '1',            'RIE',          SYSDATE,        NULL,         USER,           SYSDATE,        sys_context('userenv', 'IP_ADDRESS'));


INSERT INTO rel_multitabla (
  id_codigo,                      id_tabla,       id_item,
  de_descripcion,                                 no_desc_valor,
  no_desc_aux1,   no_desc_aux2,   no_desc_aux3,   no_desc_aux4,   no_desc_aux5,   no_desc_aux6, no_desc_aux7,   no_desc_aux8,   no_desc_aux9,   no_desc_aux10,  no_desc_aux11,  no_desc_aux12,
  tx_informativo, no_observacion, no_ind_estado,  de_area,        fe_inicio_vig,  fe_fin_vig,     id_usua_crea,   fe_usua_crea,   de_term_crea)
VALUES (
  sq_multitabla.nextval,          '235',          '04',
  'Clasificación Deficiente',     'DEF',
  'DEFICIENTE',   NULL,           NULL,           NULL,           NULL,           NULL,           NULL,           NULL,           NULL,           NULL,           NULL,           NULL,
  NULL,           NULL,           '1',            'RIE',          SYSDATE,        NULL,           USER,           SYSDATE,        sys_context('userenv', 'IP_ADDRESS'));


INSERT INTO rel_multitabla (
  id_codigo,                      id_tabla,       id_item,
  de_descripcion,                                 no_desc_valor,
  no_desc_aux1,   no_desc_aux2,   no_desc_aux3,   no_desc_aux4,   no_desc_aux5,   no_desc_aux6, no_desc_aux7,   no_desc_aux8,   no_desc_aux9,   no_desc_aux10,  no_desc_aux11,  no_desc_aux12,
  tx_informativo, no_observacion, no_ind_estado,  de_area,        fe_inicio_vig,  fe_fin_vig,     id_usua_crea,   fe_usua_crea,   de_term_crea)
VALUES (
  sq_multitabla.nextval,          '235',          '05',
  'Clasificación Perdida',        'PER',
  'PERDIDA',      NULL,           NULL,           NULL,           NULL,           NULL,           NULL,           NULL,           NULL,           NULL,           NULL,           NULL,
  NULL,           NULL,           '1',            'RIE',          SYSDATE,        NULL,           USER,           SYSDATE,        sys_context('userenv', 'IP_ADDRESS'));


INSERT INTO rel_multitabla (
  id_codigo,                      id_tabla,       id_item,
  de_descripcion,                                 no_desc_valor,
  no_desc_aux1,   no_desc_aux2,   no_desc_aux3,   no_desc_aux4,   no_desc_aux5,   no_desc_aux6, no_desc_aux7,   no_desc_aux8,   no_desc_aux9,   no_desc_aux10,  no_desc_aux11,  no_desc_aux12,
  tx_informativo, no_observacion, no_ind_estado,  de_area,        fe_inicio_vig,  fe_fin_vig,     id_usua_crea,   fe_usua_crea,   de_term_crea)
VALUES (
  sq_multitabla.nextval,          '235',          '06',
  'Sin información',              'SI',
  '',             '1',           NULL,           NULL,           NULL,           NULL,           NULL,           NULL,           NULL,           NULL,           NULL,           NULL,
  NULL,           NULL,           '1',            'RIE',          SYSDATE,        NULL,           USER,           SYSDATE,        sys_context('userenv', 'IP_ADDRESS'));

-- Catálogo de indicadores de riesgos: Impago
INSERT INTO rel_multitabla (
  id_codigo,                      id_tabla,       id_item,
  de_descripcion,                                 no_desc_valor,
  no_desc_aux1,   no_desc_aux2,   no_desc_aux3,   no_desc_aux4,   no_desc_aux5,   no_desc_aux6, no_desc_aux7,   no_desc_aux8,   no_desc_aux9,   no_desc_aux10,  no_desc_aux11,  no_desc_aux12,
  tx_informativo, no_observacion, no_ind_estado,  de_area,        fe_inicio_vig,  fe_fin_vig,     id_usua_crea,   fe_usua_crea,   de_term_crea)
VALUES (
  sq_multitabla.nextval,          '236',          '00',
  'Descripción del indicador de riesgo IMPAGO',   'Código de registro en la BD',
  'Código de registro en ambiente HOST',          'Indicador de registro sin información',      NULL,           NULL,         NULL,           NULL,           NULL,           NULL,           NULL,           NULL,           NULL,           NULL,
  NULL,           NULL,           '0',            'RIE',          SYSDATE,        NULL,         USER,           SYSDATE,        sys_context('userenv', 'IP_ADDRESS'));

INSERT INTO rel_multitabla (
  id_codigo,                      id_tabla,       id_item,
  de_descripcion,                                 no_desc_valor,
  no_desc_aux1,   no_desc_aux2,   no_desc_aux3,   no_desc_aux4,   no_desc_aux5,   no_desc_aux6, no_desc_aux7,   no_desc_aux8,   no_desc_aux9,   no_desc_aux10,  no_desc_aux11,  no_desc_aux12,
  tx_informativo, no_observacion, no_ind_estado,  de_area,        fe_inicio_vig,  fe_fin_vig,     id_usua_crea,   fe_usua_crea,   de_term_crea)
VALUES (
  sq_multitabla.nextval,          '236',          '01',
  'Si',   'SI',
  'SI',          NULL,      NULL,           NULL,         NULL,           NULL,           NULL,           NULL,           NULL,           NULL,           NULL,           NULL,
  NULL,           NULL,           '1',            'RIE',          SYSDATE,        NULL,         USER,           SYSDATE,        sys_context('userenv', 'IP_ADDRESS'));


INSERT INTO rel_multitabla (
  id_codigo,                      id_tabla,       id_item,
  de_descripcion,                                 no_desc_valor,
  no_desc_aux1,   no_desc_aux2,   no_desc_aux3,   no_desc_aux4,   no_desc_aux5,   no_desc_aux6, no_desc_aux7,   no_desc_aux8,   no_desc_aux9,   no_desc_aux10,  no_desc_aux11,  no_desc_aux12,
  tx_informativo, no_observacion, no_ind_estado,  de_area,        fe_inicio_vig,  fe_fin_vig,     id_usua_crea,   fe_usua_crea,   de_term_crea)
VALUES (
  sq_multitabla.nextval,          '236',          '02',
  'No',   'NO',
  'NO',          NULL,      NULL,           NULL,         NULL,           NULL,           NULL,           NULL,           NULL,           NULL,           NULL,           NULL,
  NULL,           NULL,           '1',            'RIE',          SYSDATE,        NULL,         USER,           SYSDATE,        sys_context('userenv', 'IP_ADDRESS'));


INSERT INTO rel_multitabla (
  id_codigo,                      id_tabla,       id_item,
  de_descripcion,                                 no_desc_valor,
  no_desc_aux1,   no_desc_aux2,   no_desc_aux3,   no_desc_aux4,   no_desc_aux5,   no_desc_aux6, no_desc_aux7,   no_desc_aux8,   no_desc_aux9,   no_desc_aux10,  no_desc_aux11,  no_desc_aux12,
  tx_informativo, no_observacion, no_ind_estado,  de_area,        fe_inicio_vig,  fe_fin_vig,     id_usua_crea,   fe_usua_crea,   de_term_crea)
VALUES (
  sq_multitabla.nextval,          '236',          '03',
  'Sin información',   'SIN_INFORMACION',
  '',          '1',      NULL,           NULL,         NULL,           NULL,           NULL,           NULL,           NULL,           NULL,           NULL,           NULL,
  NULL,           NULL,           '1',            'RIE',          SYSDATE,        NULL,         USER,           SYSDATE,        sys_context('userenv', 'IP_ADDRESS'));


-- Catálogo de indicadores de riesgos: Endeudamiento
INSERT INTO rel_multitabla (
  id_codigo,                      id_tabla,       id_item,
  de_descripcion,                                 no_desc_valor,
  no_desc_aux1,   no_desc_aux2,   no_desc_aux3,   no_desc_aux4,   no_desc_aux5,   no_desc_aux6, no_desc_aux7,   no_desc_aux8,   no_desc_aux9,   no_desc_aux10,  no_desc_aux11,  no_desc_aux12,
  tx_informativo, no_observacion, no_ind_estado,  de_area,        fe_inicio_vig,  fe_fin_vig,     id_usua_crea,   fe_usua_crea,   de_term_crea)
VALUES (
  sq_multitabla.nextval,          '237',          '00',
  'Descripción del indicador de riesgo ENDEUDAMIENTO',   'Código de registro en la BD',
  'Código de registro en ambiente HOST',          'Indicador de registro sin información',      NULL,           NULL,         NULL,           NULL,           NULL,           NULL,           NULL,           NULL,           NULL,           NULL,
  NULL,           NULL,           '0',            'RIE',          SYSDATE,        NULL,         USER,           SYSDATE,        sys_context('userenv', 'IP_ADDRESS'));

INSERT INTO rel_multitabla (
  id_codigo,                      id_tabla,       id_item,
  de_descripcion,                                 no_desc_valor,
  no_desc_aux1,   no_desc_aux2,   no_desc_aux3,   no_desc_aux4,   no_desc_aux5,   no_desc_aux6, no_desc_aux7,   no_desc_aux8,   no_desc_aux9,   no_desc_aux10,  no_desc_aux11,  no_desc_aux12,
  tx_informativo, no_observacion, no_ind_estado,  de_area,        fe_inicio_vig,  fe_fin_vig,     id_usua_crea,   fe_usua_crea,   de_term_crea)
VALUES (
  sq_multitabla.nextval,          '237',          '01',
  'No sobreendeudado',   'NO_SOBR_ENDE',
  'NO SOBREENDEUDADO',          NULL,      NULL,           NULL,         NULL,           NULL,           NULL,           NULL,           NULL,           NULL,           NULL,           NULL,
  NULL,           NULL,           '1',            'RIE',          SYSDATE,        NULL,         USER,           SYSDATE,        sys_context('userenv', 'IP_ADDRESS'));

INSERT INTO rel_multitabla (
  id_codigo,                      id_tabla,       id_item,
  de_descripcion,                                 no_desc_valor,
  no_desc_aux1,   no_desc_aux2,   no_desc_aux3,   no_desc_aux4,   no_desc_aux5,   no_desc_aux6, no_desc_aux7,   no_desc_aux8,   no_desc_aux9,   no_desc_aux10,  no_desc_aux11,  no_desc_aux12,
  tx_informativo, no_observacion, no_ind_estado,  de_area,        fe_inicio_vig,  fe_fin_vig,     id_usua_crea,   fe_usua_crea,   de_term_crea)
VALUES (
  sq_multitabla.nextval,          '237',          '02',
  'Sobreendeudado',   'SOBR_ENDE',
  'SOBREENDEUDADO',          NULL,      NULL,           NULL,         NULL,           NULL,           NULL,           NULL,           NULL,           NULL,           NULL,           NULL,
  NULL,           NULL,           '1',            'RIE',          SYSDATE,        NULL,         USER,           SYSDATE,        sys_context('userenv', 'IP_ADDRESS'));

INSERT INTO rel_multitabla (
  id_codigo,                      id_tabla,       id_item,
  de_descripcion,                                 no_desc_valor,
  no_desc_aux1,   no_desc_aux2,   no_desc_aux3,   no_desc_aux4,   no_desc_aux5,   no_desc_aux6, no_desc_aux7,   no_desc_aux8,   no_desc_aux9,   no_desc_aux10,  no_desc_aux11,  no_desc_aux12,
  tx_informativo, no_observacion, no_ind_estado,  de_area,        fe_inicio_vig,  fe_fin_vig,     id_usua_crea,   fe_usua_crea,   de_term_crea)
VALUES (
  sq_multitabla.nextval,          '237',          '03',
  'Potencialmente sobreendeudado',   'POTE_SOBR_ENDE',
  'POTENCIALMENTE SOBREENDEUDADO',          NULL,      NULL,           NULL,         NULL,           NULL,           NULL,           NULL,           NULL,           NULL,           NULL,           NULL,
  NULL,           NULL,           '1',            'RIE',          SYSDATE,        NULL,         USER,           SYSDATE,        sys_context('userenv', 'IP_ADDRESS'));

INSERT INTO rel_multitabla (
  id_codigo,                      id_tabla,       id_item,
  de_descripcion,                                 no_desc_valor,
  no_desc_aux1,   no_desc_aux2,   no_desc_aux3,   no_desc_aux4,   no_desc_aux5,   no_desc_aux6, no_desc_aux7,   no_desc_aux8,   no_desc_aux9,   no_desc_aux10,  no_desc_aux11,  no_desc_aux12,
  tx_informativo, no_observacion, no_ind_estado,  de_area,        fe_inicio_vig,  fe_fin_vig,     id_usua_crea,   fe_usua_crea,   de_term_crea)
VALUES (
  sq_multitabla.nextval,          '237',          '04',
  'Sin información',   'SIN_INFORMACION',
  '',          '1',      NULL,           NULL,         NULL,           NULL,           NULL,           NULL,           NULL,           NULL,           NULL,           NULL,
  NULL,           NULL,           '1',            'RIE',          SYSDATE,        NULL,         USER,           SYSDATE,        sys_context('userenv', 'IP_ADDRESS'));




-- Catálogo de indicadores de riesgos: Riesgo cambiario
INSERT INTO rel_multitabla (
  id_codigo,                      id_tabla,       id_item,
  de_descripcion,                                 no_desc_valor,
  no_desc_aux1,   no_desc_aux2,   no_desc_aux3,   no_desc_aux4,   no_desc_aux5,   no_desc_aux6, no_desc_aux7,   no_desc_aux8,   no_desc_aux9,   no_desc_aux10,  no_desc_aux11,  no_desc_aux12,
  tx_informativo, no_observacion, no_ind_estado,  de_area,        fe_inicio_vig,  fe_fin_vig,     id_usua_crea,   fe_usua_crea,   de_term_crea)
VALUES (
  sq_multitabla.nextval,          '238',          '00',
  'Descripción del indicador de riesgo RIESGO CAMBIARIO',   'Código de registro en la BD',
  'Código de registro en ambiente HOST',          'Indicador de registro sin información',      NULL,           NULL,         NULL,           NULL,           NULL,           NULL,           NULL,           NULL,           NULL,           NULL,
  NULL,           NULL,           '0',            'RIE',          SYSDATE,        NULL,         USER,           SYSDATE,        sys_context('userenv', 'IP_ADDRESS'));

INSERT INTO rel_multitabla (
  id_codigo,                      id_tabla,       id_item,
  de_descripcion,                                 no_desc_valor,
  no_desc_aux1,   no_desc_aux2,   no_desc_aux3,   no_desc_aux4,   no_desc_aux5,   no_desc_aux6, no_desc_aux7,   no_desc_aux8,   no_desc_aux9,   no_desc_aux10,  no_desc_aux11,  no_desc_aux12,
  tx_informativo, no_observacion, no_ind_estado,  de_area,        fe_inicio_vig,  fe_fin_vig,     id_usua_crea,   fe_usua_crea,   de_term_crea)
VALUES (
  sq_multitabla.nextval,          '238',          '01',
  'No expuesto',   'NO_EXPU',
  'NO EXPUESTO',          NULL,      NULL,           NULL,         NULL,           NULL,           NULL,           NULL,           NULL,           NULL,           NULL,           NULL,
  NULL,           NULL,           '1',            'RIE',          SYSDATE,        NULL,         USER,           SYSDATE,        sys_context('userenv', 'IP_ADDRESS'));

INSERT INTO rel_multitabla (
  id_codigo,                      id_tabla,       id_item,
  de_descripcion,                                 no_desc_valor,
  no_desc_aux1,   no_desc_aux2,   no_desc_aux3,   no_desc_aux4,   no_desc_aux5,   no_desc_aux6, no_desc_aux7,   no_desc_aux8,   no_desc_aux9,   no_desc_aux10,  no_desc_aux11,  no_desc_aux12,
  tx_informativo, no_observacion, no_ind_estado,  de_area,        fe_inicio_vig,  fe_fin_vig,     id_usua_crea,   fe_usua_crea,   de_term_crea)
VALUES (
  sq_multitabla.nextval,          '238',          '02',
  'Expuesto',   'EXPU',
  'EXPUESTO',          NULL,      NULL,           NULL,         NULL,           NULL,           NULL,           NULL,           NULL,           NULL,           NULL,           NULL,
  NULL,           NULL,           '1',            'RIE',          SYSDATE,        NULL,         USER,           SYSDATE,        sys_context('userenv', 'IP_ADDRESS'));

INSERT INTO rel_multitabla (
  id_codigo,                      id_tabla,       id_item,
  de_descripcion,                                 no_desc_valor,
  no_desc_aux1,   no_desc_aux2,   no_desc_aux3,   no_desc_aux4,   no_desc_aux5,   no_desc_aux6, no_desc_aux7,   no_desc_aux8,   no_desc_aux9,   no_desc_aux10,  no_desc_aux11,  no_desc_aux12,
  tx_informativo, no_observacion, no_ind_estado,  de_area,        fe_inicio_vig,  fe_fin_vig,     id_usua_crea,   fe_usua_crea,   de_term_crea)
VALUES (
  sq_multitabla.nextval,          '238',          '03',
  'Sustancialmente expuesto',   'SUST_EXPU',
  'SUSTANCIALMENTE EXPUESTO',          NULL,      NULL,           NULL,         NULL,           NULL,           NULL,           NULL,           NULL,           NULL,           NULL,           NULL,
  NULL,           NULL,           '1',            'RIE',          SYSDATE,        NULL,         USER,           SYSDATE,        sys_context('userenv', 'IP_ADDRESS'));

INSERT INTO rel_multitabla (
  id_codigo,                      id_tabla,       id_item,
  de_descripcion,                                 no_desc_valor,
  no_desc_aux1,   no_desc_aux2,   no_desc_aux3,   no_desc_aux4,   no_desc_aux5,   no_desc_aux6, no_desc_aux7,   no_desc_aux8,   no_desc_aux9,   no_desc_aux10,  no_desc_aux11,  no_desc_aux12,
  tx_informativo, no_observacion, no_ind_estado,  de_area,        fe_inicio_vig,  fe_fin_vig,     id_usua_crea,   fe_usua_crea,   de_term_crea)
VALUES (
  sq_multitabla.nextval,          '238',          '04',
  'Sin información',   'SIN_INFORMACION',
  '',          '1',      NULL,           NULL,         NULL,           NULL,           NULL,           NULL,           NULL,           NULL,           NULL,           NULL,
  NULL,           NULL,           '1',            'RIE',          SYSDATE,        NULL,         USER,           SYSDATE,        sys_context('userenv', 'IP_ADDRESS'));



------ CÓDIGO DE DETERIOROS

INSERT INTO rel_multitabla (
  id_codigo,                      id_tabla,       id_item,
  de_descripcion,                                 no_desc_valor,
  no_desc_aux1,   no_desc_aux2,   no_desc_aux3,   no_desc_aux4,   no_desc_aux5,   no_desc_aux6, no_desc_aux7,   no_desc_aux8,   no_desc_aux9,   no_desc_aux10,  no_desc_aux11,  no_desc_aux12,
  tx_informativo, no_observacion, no_ind_estado,  de_area,        fe_inicio_vig,  fe_fin_vig,     id_usua_crea,   fe_usua_crea,   de_term_crea)
VALUES (
  sq_multitabla.nextval,          '239',          '00',
  'Deterioro',    'código',
  'color del texto',          'color del caja',      NULL,           NULL,         NULL,           NULL,           NULL,           NULL,           NULL,           NULL,           NULL,           NULL,
  NULL,           NULL,           '0',            'RIE',          SYSDATE,        NULL,         USER,           SYSDATE,        sys_context('userenv', 'IP_ADDRESS'));

INSERT INTO rel_multitabla (
  id_codigo,                      id_tabla,       id_item,
  de_descripcion,                                 no_desc_valor,
  no_desc_aux1,   no_desc_aux2,   no_desc_aux3,   no_desc_aux4,   no_desc_aux5,   no_desc_aux6, no_desc_aux7,   no_desc_aux8,   no_desc_aux9,   no_desc_aux10,  no_desc_aux11,  no_desc_aux12,
  tx_informativo, no_observacion, no_ind_estado,  de_area,        fe_inicio_vig,  fe_fin_vig,     id_usua_crea,   fe_usua_crea,   de_term_crea)
VALUES (
  sq_multitabla.nextval,          '239',          '01',
  'DETERIORADO',      '1',
  '#FFFFFF',   '#FF0000',      NULL,           NULL,         NULL,           NULL,           NULL,           NULL,           NULL,           NULL,           NULL,           NULL,
  NULL,           NULL,           '1',            'RIE',          SYSDATE,        NULL,         USER,           SYSDATE,        sys_context('userenv', 'IP_ADDRESS'));

INSERT INTO rel_multitabla (
  id_codigo,                      id_tabla,       id_item,
  de_descripcion,                                 no_desc_valor,
  no_desc_aux1,   no_desc_aux2,   no_desc_aux3,   no_desc_aux4,   no_desc_aux5,   no_desc_aux6, no_desc_aux7,   no_desc_aux8,   no_desc_aux9,   no_desc_aux10,  no_desc_aux11,  no_desc_aux12,
  tx_informativo, no_observacion, no_ind_estado,  de_area,        fe_inicio_vig,  fe_fin_vig,     id_usua_crea,   fe_usua_crea,   de_term_crea)
VALUES (
  sq_multitabla.nextval,          '239',          '02',
  'NO DETERIORADO',   '0',
  '#888',   '#f5f5f5',      NULL,           NULL,         NULL,           NULL,           NULL,           NULL,           NULL,           NULL,           NULL,           NULL,
  NULL,           NULL,           '1',            'RIE',          SYSDATE,        NULL,         USER,           SYSDATE,        sys_context('userenv', 'IP_ADDRESS'));




------------------------------------
-- ACTUALIZACIÓN DE DATA DEL BURO
------------------------------------
update rel_multitabla set no_desc_aux1 = 'Descripción', no_desc_valor = 'Código', no_desc_aux2 = 'Peso para evaluación del motor evaluador' where id_tabla = '013' and id_item = '00';
update rel_multitabla set no_desc_aux1 = 'G1', no_desc_aux2 = '1' where id_tabla = '013' and id_item = '01';
update rel_multitabla set no_desc_aux1 = 'G2', no_desc_aux2 = '1' where id_tabla = '013' and id_item = '02';
update rel_multitabla set no_desc_aux1 = 'G3', no_desc_aux2 = '1' where id_tabla = '013' and id_item = '03';
update rel_multitabla set no_desc_aux1 = 'G4', no_desc_aux2 = '1' where id_tabla = '013' and id_item = '04';
update rel_multitabla set no_desc_aux1 = 'G5', no_desc_aux2 = '1' where id_tabla = '013' and id_item = '05';
update rel_multitabla set no_desc_aux1 = 'G6', no_desc_aux2 = '1' where id_tabla = '013' and id_item = '06';
update rel_multitabla set no_desc_aux1 = 'G7', no_desc_aux2 = '2' where id_tabla = '013' and id_item = '07';
update rel_multitabla set no_desc_aux1 = 'G8', no_desc_aux2 = '2' where id_tabla = '013' and id_item = '08';
update rel_multitabla set no_desc_aux1 = 'NB', no_desc_aux2 = '1' where id_tabla = '013' and id_item = '09';

INSERT INTO rel_multitabla (
  id_codigo,                      id_tabla,       id_item,
  de_descripcion,                                 no_desc_valor,
  no_desc_aux1,   no_desc_aux2,   no_desc_aux3,   no_desc_aux4,   no_desc_aux5,   no_desc_aux6, no_desc_aux7,   no_desc_aux8,   no_desc_aux9,   no_desc_aux10,  no_desc_aux11,  no_desc_aux12,
  tx_informativo, no_observacion, no_ind_estado,  de_area,        fe_inicio_vig,  fe_fin_vig,     id_usua_crea,   fe_usua_crea,   de_term_crea)
VALUES (
  sq_multitabla.nextval,          '013',          '10',
  'SI',   '10',
  'Sin información',   '1',      NULL,           NULL,         NULL,           NULL,           NULL,           NULL,           NULL,           NULL,           NULL,           NULL,
  NULL,           NULL,           '1',            'RIE',          SYSDATE,        NULL,         USER,           SYSDATE,        sys_context('userenv', 'IP_ADDRESS'));


----------------------------------------
-- ACTUALIZACIÓN DE CLASIFICACIÓN BANCO
----------------------------------------
update rel_multitabla set no_desc_aux2 = 'Peso para evaluación del motor evaluador' where id_tabla = '012' and id_item = '00';
update rel_multitabla set no_desc_aux2 = '1' where id_tabla = '012' and id_item = '01';
update rel_multitabla set no_desc_aux2 = '2' where id_tabla = '012' and id_item = '02';
update rel_multitabla set no_desc_aux2 = '3' where id_tabla = '012' and id_item = '03';
update rel_multitabla set no_desc_aux2 = '4' where id_tabla = '012' and id_item = '04';
update rel_multitabla set no_desc_aux2 = '5' where id_tabla = '012' and id_item = '05';
update rel_multitabla set no_desc_aux2 = '1' where id_tabla = '012' and id_item = '06';

INSERT INTO rel_multitabla (
  id_codigo,                      id_tabla,       id_item,
  de_descripcion,                                 no_desc_valor,
  no_desc_aux1,   no_desc_aux2,   no_desc_aux3,   no_desc_aux4,   no_desc_aux5,   no_desc_aux6, no_desc_aux7,   no_desc_aux8,   no_desc_aux9,   no_desc_aux10,  no_desc_aux11,  no_desc_aux12,
  tx_informativo, no_observacion, no_ind_estado,  de_area,        fe_inicio_vig,  fe_fin_vig,     id_usua_crea,   fe_usua_crea,   de_term_crea)
VALUES (
  sq_multitabla.nextval,          '012',          '07',
  'SIN INFORMACIÓN',   7,
  'SI',   '1',      NULL,           NULL,         NULL,           NULL,           NULL,           NULL,           NULL,           NULL,           NULL,           NULL,
  NULL,           NULL,           '1',            'RIE',          SYSDATE,        NULL,         USER,           SYSDATE,        sys_context('userenv', 'IP_ADDRESS'));

update rel_multitabla set no_desc_aux3 = 'Descripción', no_desc_aux4 = 'Indicador de registro sin información' where id_tabla = '012' and id_item = '00';
update rel_multitabla set no_desc_aux3 = 'Normal', no_desc_aux4 = '' where id_tabla = '012' and id_item = '01';
update rel_multitabla set no_desc_aux3 = 'Cpp', no_desc_aux4 = '' where id_tabla = '012' and id_item = '02';
update rel_multitabla set no_desc_aux3 = 'Deficiente', no_desc_aux4 = '' where id_tabla = '012' and id_item = '03';
update rel_multitabla set no_desc_aux3 = 'Dudoso', no_desc_aux4 = '' where id_tabla = '012' and id_item = '04';
update rel_multitabla set no_desc_aux3 = 'Pérdida', no_desc_aux4 = '' where id_tabla = '012' and id_item = '05';
update rel_multitabla set no_desc_aux3 = 'Sin clasificación', no_desc_aux4 = '' where id_tabla = '012' and id_item = '06';
update rel_multitabla set no_desc_aux3 = 'Sin información', no_desc_aux4 = '1' where id_tabla = '012' and id_item = '07';


----------------------------------------
-- ACTUALIZACIÓN DE IMPAGOS
----------------------------------------
update rel_multitabla set no_desc_aux3 = 'Peso para evaluación del motor evaluador' where id_tabla = '236' and id_item = '00';
update rel_multitabla set no_desc_aux3 = '2' where id_tabla = '236' and id_item = '01';
update rel_multitabla set no_desc_aux3 = '1' where id_tabla = '236' and id_item = '02';
update rel_multitabla set no_desc_aux3 = '1' where id_tabla = '236' and id_item = '03';


----------------------------------------
-- ACTUALIZACIÓN DE SOBRE ENDEUDAMIENTO
----------------------------------------
update rel_multitabla set no_desc_aux3 = 'Peso para evaluación del motor evaluador' where id_tabla = '237' and id_item = '00';
update rel_multitabla set no_desc_aux3 = '1' where id_tabla = '237' and id_item = '01';
update rel_multitabla set no_desc_aux3 = '2' where id_tabla = '237' and id_item = '02';
update rel_multitabla set no_desc_aux3 = '3' where id_tabla = '237' and id_item = '03';
update rel_multitabla set no_desc_aux3 = '1' where id_tabla = '237' and id_item = '04';



----------------------------------------
-- ACTUALIZACIÓN DE RIESGO CAMBIARIO
----------------------------------------
update rel_multitabla set no_desc_aux3 = 'Código de registro en la BD', no_desc_aux4 = 'Indicador de registro sin información', no_desc_aux5 = 'Peso para evaluación del motor evaluador' where id_tabla = '149' and id_item = '00';
update rel_multitabla set no_desc_aux3 = 'NO_EXPU', no_desc_aux4 = '', no_desc_aux5 = '1' where id_tabla = '149' and id_item = '01';
update rel_multitabla set no_desc_aux3 = 'EXPU', no_desc_aux4 = '', no_desc_aux5 = '2' where id_tabla = '149' and id_item = '02';
update rel_multitabla set no_desc_aux3 = 'SUST_EXPU', no_desc_aux4 = '', no_desc_aux5 = '3' where id_tabla = '149' and id_item = '03';
update rel_multitabla set no_desc_aux3 = 'SIN_INFO', no_desc_aux4 = '1', no_desc_aux5 = '1' where id_tabla = '149' and id_item = '04';


----------------------------------------
-- ACTUALIZACIÓN DE LOS PARÁMETROS DEL MOTOR EVALUADOR
----------------------------------------
update rel_multitabla set no_desc_aux3 = 'Código de la tabla paramétrica' where id_tabla = '234' and id_item = '00';
update rel_multitabla set no_desc_aux3 = '013' where id_tabla = '234' and id_item = '01';
update rel_multitabla set no_desc_aux3 = '012' where id_tabla = '234' and id_item = '02';
update rel_multitabla set no_desc_aux3 = '236' where id_tabla = '234' and id_item = '08';
update rel_multitabla set no_desc_aux3 = '237' where id_tabla = '234' and id_item = '09';
update rel_multitabla set no_desc_aux3 = '149' where id_tabla = '234' and id_item = '10';

----------------------------------------------------------------------------------------
--  AGREGAR FLAG PARA ACTIVAR/DESACTIVAR EL MOTOR EVALUADOR PARA TODAS LAS SOLICITUDES
----------------------------------------------------------------------------------------
INSERT INTO rel_multitabla (
  id_codigo,                      id_tabla,       id_item,
  de_descripcion,                 no_desc_valor,
  no_desc_aux1,   no_desc_aux2,   no_desc_aux3,   no_desc_aux4,   no_desc_aux5,   no_desc_aux6,
  no_desc_aux7,   no_desc_aux8,   no_desc_aux9,   no_desc_aux10,  no_desc_aux11,  no_desc_aux12,
  tx_informativo, no_observacion, no_ind_estado,  de_area,
  fe_inicio_vig,  fe_fin_vig,
  id_usua_crea,   fe_usua_crea,   de_term_crea)
VALUES (
  sq_multitabla.nextval,          '073',          '98',
  'Flag Activación MOTOR EVALUADOR',    'FLAG_ACTIVO_MOTOR_EVALUADOR',
  '1',            NULL,           NULL,           NULL,           NULL,           NULL,
  NULL,           NULL,           NULL,           NULL,           NULL,           NULL,
  NULL,           NULL,           '1',            'RIE',
  SYSDATE,        NULL,
  USER,           SYSDATE,        sys_context('userenv', 'IP_ADDRESS'));


----------------------------------------------------------------------------------------
--  SE AGREGA UNA COLUMNA EN LA SOLICITUD DE INDICADOR DE MOTOR EVALUADOR INACTIVO
----------------------------------------------------------------------------------------
alter table det_solicitud add in_motor_evaluador_inactivo varchar2(1);


-- Agrega el indice previo de motor evaluador
alter table det_motor_eval_ind_riesgo add id_motor_eval_ind_riesgo_prev number;



-- agrega flag para el servicio de actualizar el cuadro de posición
INSERT
  INTO WPYMES.REL_MULTITABLA (ID_CODIGO,ID_TABLA,ID_ITEM,DE_DESCRIPCION,NO_DESC_VALOR,NO_DESC_AUX1,NO_DESC_AUX2,
                              NO_DESC_AUX3,NO_DESC_AUX4,NO_DESC_AUX5,NO_DESC_AUX6,NO_DESC_AUX7,NO_DESC_AUX8,
                              NO_DESC_AUX9,NO_DESC_AUX10,NO_DESC_AUX11,NO_DESC_AUX12,NO_DESC_AUX13,NO_DESC_AUX14,
                              NO_DESC_AUX15,NO_DESC_AUX16,TX_INFORMATIVO,NO_OBSERVACION,DE_AREA,NO_IND_ESTADO,
                              FE_INICIO_VIG,FE_FIN_VIG,ID_USUA_CREA,FE_USUA_CREA,DE_TERM_CREA,ID_USUA_MODI,FE_USUA_MODI,
                              DE_TERM_MODI,NO_DESC_AUX17,NO_DESC_AUX18,NO_DESC_AUX19)
  VALUES (SQ_MULTITABLA.nextval,'073','99','Flag de activación/desactivación del servicio actualizar cuadro de posición','FLAG_ACTUALIZAR_CUADRO_POSICION','1',null,
          null,null,null,null,null,null,
          null,null,null,null,null,null,
          null,null,null,null,'RIE','1',
          SYSDATE,null,USER,SYSDATE,sys_context('userenv', 'IP_ADDRESS'),null,null,
          null,null,null,null);

		  
-- actualiza el peso del motivo en otros
update REL_MULTITABLA set NO_DESC_AUX5 = 1 where ID_TABLA = '231' and DE_DESCRIPCION = 'OTROS';


CREATE OR REPLACE PACKAGE ppym_navegabilidad IS

  c_tipo_flujo_tabla      CONSTANT VARCHAR2(3) := '232';
  c_tipo_flujo_normal     CONSTANT VARCHAR2(3) := 'N';
  c_tipo_flujo_modificada CONSTANT VARCHAR2(3) := 'M';
  c_tipo_flujo_reingreso  CONSTANT VARCHAR2(3) := 'R';

  -- Author  : WALTER
  -- Created : 06/11/2017 10:03:51 10:03:51
  PROCEDURE clonar_solicitud(p_co_solicitud_ext_nuevo    VARCHAR2,
                             p_co_solicitud_ext_original VARCHAR2,
                             p_id_tipo_flujo_nuevo       NUMBER,
                             o_result                    OUT INT,
                             o_mensaje                   OUT VARCHAR2);

  PROCEDURE actualizar_vinculo(p_co_solicitud_ext_nuevo    VARCHAR2,
                               p_co_solicitud_ext_original VARCHAR2,
                               o_result                    OUT INT,
                               o_mensaje                   OUT VARCHAR2);

  PROCEDURE registrar_flujo(p_id_solicitud_nuevo    NUMBER,
                            p_id_solicitud_original NUMBER,
                            p_id_tipo_flujo_nuevo   NUMBER);

  PROCEDURE registrar_flujo(p_id_solicitud_nuevo NUMBER);

  PROCEDURE restaurar_solicitud(p_co_solicitud_ext VARCHAR2);

END ppym_navegabilidad;
/

CREATE OR REPLACE PACKAGE BODY ppym_navegabilidad IS

  /**
  * @param p_co_solicitud_ext_nuevo    Código de solicitud externo hijo (la solicitud nueva).
  * @param p_co_solicitud_ext_original Código de solicitud externo padre (la solicitud original).
  * @param O_RESULT                    Resultado de éxito o error del procedimiento.
  * @param O_MENSAJE                   Mensaje de resultado de éxito o error de la ejecución del procedimiento.
  * @author wmendoza
  * @version 1.0 wmendoza 12/12/2017
  * @version 1.1 wmendoza 13/12/2017
  */
  PROCEDURE clonar_solicitud(p_co_solicitud_ext_nuevo    VARCHAR2,
                             p_co_solicitud_ext_original VARCHAR2,
                             p_id_tipo_flujo_nuevo       NUMBER,
                             o_result                    OUT INT,
                             o_mensaje                   OUT VARCHAR2) IS

    -- VARIABLES
    v_co_solicitud_ext_nuevo    det_solicitud.co_solicitud_ext%TYPE;
    v_co_solicitud_ext_original det_solicitud.co_solicitud_ext%TYPE;
    v_id_solicitud_original     det_solicitud.id_solicitud%TYPE;
    v_id_solicitud_nuevo        det_solicitud.id_solicitud%TYPE;
    v_id_balance_original       cat_balance.id_balance%TYPE;
    v_id_balance_nuevo          cat_balance.id_balance%TYPE;
    v_id_balance_eeff_original  cat_balance_eeff.id_balance_eeff%TYPE;
    v_id_balance_eeff_nuevo     cat_balance_eeff.id_balance_eeff%TYPE;
    v_id_persona_original       cat_persona.id_persona%TYPE;
    v_id_persona_nuevo          cat_persona.id_persona%TYPE;
    v_id_cp_producto_original   cat_cp_producto.id_cp_producto%TYPE;
    v_id_cp_producto_nuevo      cat_cp_producto.id_cp_producto%TYPE;
    v_id_no_extractivo_original mae_no_extractivo.id_no_extractivo%TYPE;
    v_id_no_extractivo_nuevo    mae_no_extractivo.id_no_extractivo%TYPE;
    v_id_producto_nuevo         cat_producto.id_producto%TYPE;
    v_id_producto_original      cat_producto.id_producto%TYPE;
    v_id_info_cuali_nuevo       cat_info_cuali_noextractivo.id_info_cuali%TYPE;
    v_id_info_cuali_original    cat_info_cuali_noextractivo.id_info_cuali%TYPE;

    -- LNARVAEZ 20/03/2018 - M4_S3 - INTEGRACIÓN CON REPORTE DE CREDITO WEB - CONDICIONANTES: INICIO
    v_id_condicion_nuevo    cat_condicion.id_condicion%TYPE;
    v_id_condicion_original cat_condicion.id_condicion%TYPE;
    -- LNARVAEZ 20/03/2018: FIN

    v_existe_fin INT;

    TYPE t_id_persona IS TABLE OF INT INDEX BY PLS_INTEGER;
    v_t_cat_persona  t_id_persona;
    v_id_persona_org cat_persona.id_persona_org%TYPE;

    TYPE t_id_producto IS TABLE OF INT INDEX BY PLS_INTEGER;
    v_t_cat_producto  t_id_producto;
    v_id_producto_org cat_producto.id_producto_org%TYPE;

    -- CURSORES
    CURSOR c_cat_persona(p_id_solicitud_original VARCHAR2) IS
      SELECT *
        FROM cat_persona
       WHERE id_solicitud = p_id_solicitud_original
       ORDER BY id_persona;

    -- LNARVAEZ 21/03/2018 - M4_S3 - INTEGRACIÓN CON REPORTE DE CREDITO WEB - CONYUGE: INICIO
    CURSOR c_cat_persona_conyuge(p_id_solicitud_original VARCHAR2) IS
      SELECT *
        FROM cat_persona
       WHERE id_solicitud = p_id_solicitud_original
         AND id_persona_conyuge IS NOT NULL
       ORDER BY id_persona;
    -- LNARVAEZ 21/03/2018: FIN

    CURSOR c_cat_cp_producto(p_id_persona_original VARCHAR2) IS
      SELECT *
        FROM cat_cp_producto
       WHERE id_persona = p_id_persona_original
       ORDER BY id_cp_producto;

    CURSOR c_cat_balance(p_id_solicitud_original VARCHAR2) IS
      SELECT *
        FROM cat_balance
       WHERE id_solicitud = p_id_solicitud_original
       ORDER BY id_balance;

    CURSOR c_cat_balance_eeff(p_id_balance_original VARCHAR2) IS
      SELECT *
        FROM cat_balance_eeff
       WHERE id_balance = p_id_balance_original
       ORDER BY id_balance_eeff;

    CURSOR c_mae_no_extractivo(p_id_solicitud_original VARCHAR2) IS
      SELECT *
        FROM mae_no_extractivo
       WHERE id_solicitud = p_id_solicitud_original
       ORDER BY id_no_extractivo;

    CURSOR c_cat_producto(p_id_solicitud_original VARCHAR2) IS
      SELECT *
        FROM cat_producto
       WHERE id_solicitud = p_id_solicitud_original
       ORDER BY id_producto;

    CURSOR c_cat_info_cuali_noextractivo(p_id_solicitud_original VARCHAR2) IS
      SELECT *
        FROM cat_info_cuali_noextractivo cicn
       WHERE cicn.id_solicitud = p_id_solicitud_original
       ORDER BY cicn.id_info_cuali;

    -- LNARVAEZ 20/03/2018 - M4_S3 - INTEGRACIÓN CON REPORTE DE CREDITO WEB - CONDICIONANTES: INICIO
    CURSOR c_cat_condicion(p_id_solicitud_original VARCHAR2) IS
      SELECT *
        FROM cat_condicion
       WHERE id_solicitud = p_id_solicitud_original
       ORDER BY id_condicion;

    CURSOR c_cat_condicion_producto(p_id_condicion_original VARCHAR2) IS
      SELECT *
        FROM cat_condicion_producto
       WHERE id_condicion = p_id_condicion_original
       ORDER BY id_condicion_producto;
    -- LNARVAEZ 20/03/2018: FIN

  BEGIN
    v_co_solicitud_ext_nuevo    := p_co_solicitud_ext_nuevo;
    v_co_solicitud_ext_original := p_co_solicitud_ext_original;

    -- Verifica si existe el número de solicitud nueva ya existe en la bd.
    SELECT COUNT(*)
      INTO v_existe_fin
      FROM det_solicitud
     WHERE co_solicitud_ext = v_co_solicitud_ext_nuevo;

    IF v_existe_fin > 0
    THEN
      o_result  := 50;
      o_mensaje := 'Error: La solicitud ' || v_co_solicitud_ext_nuevo ||
                   ' ya se encuentra clonado.';
      RETURN;
    END IF;

    -- Captura el ID de la solicitud original
    SELECT id_solicitud
      INTO v_id_solicitud_original
      FROM det_solicitud
     WHERE co_solicitud_ext = v_co_solicitud_ext_original;

    -- Genera un nuevo ID para la solicitud nueva
    v_id_solicitud_nuevo := sq_solicitud.nextval;

    -- DET_SOLICITUD
    INSERT INTO det_solicitud
      (id_solicitud, id_cliente, co_solicitud, co_solicitud_ext, fe_solicitud,
       no_oficina, co_oficina, no_territorio, co_oficina_titular, opcion,
       in_estado, co_tipo_flujo, co_tipo_campania, co_tipo_operacion,
       id_tipo_regimen, co_giro_negocio, co_giro_negocio_eva,
       co_estrategia_negocio, co_riesgo_cam, in_act_est_fu, fe_solicitud_exp,
       id_res_sol, co_eeff_actua, co_ofea_aprmod, fe_dictamen, id_fase,
       id_estado_sol, co_tipo_formato, co_usuario_oficina, no_usuario_oficina,
       co_usuario_riesgos, no_usuario_riesgos, co_usuario_dict, no_usuario_dict,
       id_instancia, in_dictaminado, id_usua_crea, fe_usua_crea, de_term_crea,
       id_usua_modi, fe_usua_modi, de_term_modi, in_importador, id_tipo_cliente,
       id_centro_negocio, flag_rmt, in_ult_soli_inf_glob, in_ult_soli_soli, id_visita_vigente)
      SELECT v_id_solicitud_nuevo, id_cliente, co_solicitud,
             v_co_solicitud_ext_nuevo, SYSDATE, no_oficina, co_oficina,
             no_territorio, co_oficina_titular, opcion, in_estado, co_tipo_flujo,
             co_tipo_campania, co_tipo_operacion, id_tipo_regimen,
             co_giro_negocio, co_giro_negocio_eva, co_estrategia_negocio,
             co_riesgo_cam, in_act_est_fu, fe_solicitud_exp, id_res_sol,
             co_eeff_actua, co_ofea_aprmod, fe_dictamen, id_fase, id_estado_sol,
             co_tipo_formato, co_usuario_oficina, no_usuario_oficina,
             co_usuario_riesgos, no_usuario_riesgos, NULL, NULL, id_instancia,
             in_dictaminado, id_usua_crea, SYSDATE, de_term_crea, id_usua_modi,
             SYSDATE, de_term_modi, in_importador, id_tipo_cliente,
             id_centro_negocio, flag_rmt, in_ult_soli_inf_glob, in_ult_soli_soli, id_visita_vigente
        FROM det_solicitud
       WHERE id_solicitud = v_id_solicitud_original;

    -- CAT_CP_CONTRATO
    INSERT INTO cat_cp_contrato
      (id_cp_contrato, id_cp_producto, co_solicitud_ext, no_documento,
       co_contrato, co_moneda, mo_monto_deuda, fe_vencimiento, fe_formalizacion,
       id_fase, in_estado, in_seleccionado, de_producto, in_por_formalizar, mo_monto_deuda_original)
      SELECT sq_cp_contrato.nextval, id_cp_producto, v_co_solicitud_ext_nuevo,
             no_documento, co_contrato, co_moneda, mo_monto_deuda,
             fe_vencimiento, fe_formalizacion, id_fase, in_estado,
             in_seleccionado, de_producto, in_por_formalizar, mo_monto_deuda_original
        FROM cat_cp_contrato
       WHERE co_solicitud_ext = v_co_solicitud_ext_original
         AND id_cp_producto IS NULL;

    -- CAT_PERSONA
    FOR r_cat_persona IN c_cat_persona(v_id_solicitud_original)
    LOOP

      v_id_persona_nuevo    := sq_persona.nextval;
      v_id_persona_original := r_cat_persona.id_persona;

      --<INI: 2017-11-07: Artificio para obtener el id_persona en el campo id_persona_org>
      v_t_cat_persona(v_id_persona_original) := v_id_persona_nuevo;

      IF v_t_cat_persona.exists(r_cat_persona.id_persona_org)
      THEN
        v_id_persona_org := v_t_cat_persona(r_cat_persona.id_persona_org);
      ELSE
        v_id_persona_org := NULL;
      END IF;
      --<FIN: 2017-11-07>

      INSERT INTO cat_persona
        (id_persona, id_solicitud, de_tipo_documento, de_documento,
         de_razon_social, de_codigo_central, un_edad, ct_buro, de_clasif_bbva,
         de_clasif_eeff, mo_deuda_ssff, mo_patrimonio_rrpp, nu_accion,
         co_estado_civil, co_tipo_persona, co_tipo_vinculo, de_inelegible,
         mo_deuda_seguro, id_fase, in_economico, in_estado, in_manual,
         in_persona, in_visita_vigente, id_usua_crea, fe_usua_crea, de_term_crea,
         id_usua_modi, fe_usua_modi, de_term_modi, id_persona_org,
         in_pe25_no_permitido, id_tipo_regimen, de_tipo_documento_conyuge,
         de_documento_conyuge, id_persona_conyuge, mo_info_banc_deud_directa,
         mo_info_banc_deud_indirecta, de_esca_rating, de_peri_rating,
         in_cons_host, in_titu_cony)
      VALUES
        (v_id_persona_nuevo, v_id_solicitud_nuevo,
         r_cat_persona.de_tipo_documento, r_cat_persona.de_documento,
         r_cat_persona.de_razon_social, r_cat_persona.de_codigo_central,
         r_cat_persona.un_edad, r_cat_persona.ct_buro,
         r_cat_persona.de_clasif_bbva, r_cat_persona.de_clasif_eeff,
         r_cat_persona.mo_deuda_ssff, r_cat_persona.mo_patrimonio_rrpp,
         r_cat_persona.nu_accion, r_cat_persona.co_estado_civil,
         r_cat_persona.co_tipo_persona, r_cat_persona.co_tipo_vinculo,
         r_cat_persona.de_inelegible, r_cat_persona.mo_deuda_seguro,
         r_cat_persona.id_fase, r_cat_persona.in_economico,
         r_cat_persona.in_estado, r_cat_persona.in_manual,
         r_cat_persona.in_persona, r_cat_persona.in_visita_vigente,
         r_cat_persona.id_usua_crea, r_cat_persona.fe_usua_crea,
         r_cat_persona.de_term_crea, r_cat_persona.id_usua_modi, SYSDATE,
         r_cat_persona.de_term_modi, v_id_persona_org,
         r_cat_persona.in_pe25_no_permitido, r_cat_persona.id_tipo_regimen,
         r_cat_persona.de_tipo_documento_conyuge,
         r_cat_persona.de_documento_conyuge, r_cat_persona.id_persona_conyuge,
         r_cat_persona.mo_info_banc_deud_directa,
         r_cat_persona.mo_info_banc_deud_indirecta, r_cat_persona.de_esca_rating,
         r_cat_persona.de_peri_rating, r_cat_persona.in_cons_host, r_cat_persona.in_titu_cony);

      -- CAL_FAMILIA_DEUDA
      INSERT INTO cal_familia_deuda
        (id_fami_deuda, id_solicitud, id_persona, codfamilia, familia,
         tipoplazo, producto, tea, tem, plazo, entidad, in_manual, deuda_m1,
         deuda_m2, deuda_m3, deuda_mc1, deuda_mc2, deuda_dif, cuota_calc,
         gasfin_calc, interes_calc, linea_usada, linea_no_usada, tipo_generacion,
         comentario, periodo, amortizacion)
        SELECT sq_fami_deuda.nextval, v_id_solicitud_nuevo, v_id_persona_nuevo,
               codfamilia, familia, tipoplazo, producto, tea, tem, plazo,
               entidad, in_manual, deuda_m1, deuda_m2, deuda_m3, deuda_mc1,
               deuda_mc2, deuda_dif, cuota_calc, gasfin_calc, interes_calc,
               linea_usada, linea_no_usada, tipo_generacion, comentario, periodo,
               amortizacion
          FROM cal_familia_deuda
         WHERE id_solicitud = v_id_solicitud_original
           AND id_persona = v_id_persona_original;

      -- CAT_CP_PRODUCTO
      FOR r_cat_cp_producto IN c_cat_cp_producto(v_id_persona_original)
      LOOP

        v_id_cp_producto_nuevo    := sq_cp_producto.nextval;
        v_id_cp_producto_original := r_cat_cp_producto.id_cp_producto;

        INSERT INTO cat_cp_producto
          (id_cp_producto, id_persona, co_producto, co_sub_producto,
           de_producto, de_sub_producto, in_riesgo, in_propuesta, id_tipo_plazo,
           mo_lim_autorizado, mo_riesgo_actual, mo_prop_oficina, mo_riesgo,
           in_estado, id_usua_crea, fe_usua_crea, de_term_crea, id_usua_modi,
           fe_usua_modi, de_term_modi, limi_auto)
        VALUES
          (v_id_cp_producto_nuevo, v_id_persona_nuevo,
           r_cat_cp_producto.co_producto, r_cat_cp_producto.co_sub_producto,
           r_cat_cp_producto.de_producto, r_cat_cp_producto.de_sub_producto,
           r_cat_cp_producto.in_riesgo, r_cat_cp_producto.in_propuesta,
           r_cat_cp_producto.id_tipo_plazo, r_cat_cp_producto.mo_lim_autorizado,
           r_cat_cp_producto.mo_riesgo_actual, r_cat_cp_producto.mo_prop_oficina,
           r_cat_cp_producto.mo_riesgo, r_cat_cp_producto.in_estado,
           r_cat_cp_producto.id_usua_crea, r_cat_cp_producto.fe_usua_crea,
           r_cat_cp_producto.de_term_crea, r_cat_cp_producto.id_usua_modi,
           SYSDATE, r_cat_cp_producto.de_term_modi, r_cat_cp_producto.limi_auto);

        -- CAT_CP_CONTRATO
        INSERT INTO cat_cp_contrato
          (id_cp_contrato, id_cp_producto, co_solicitud_ext, no_documento,
           co_contrato, co_moneda, mo_monto_deuda, fe_vencimiento,
           fe_formalizacion, id_fase, in_estado, in_seleccionado, de_producto,
           in_por_formalizar, mo_monto_deuda_original)
          SELECT sq_cp_contrato.nextval, v_id_cp_producto_nuevo,
                 v_co_solicitud_ext_nuevo, no_documento, co_contrato, co_moneda,
                 mo_monto_deuda, fe_vencimiento, fe_formalizacion, id_fase,
                 in_estado, in_seleccionado, de_producto, in_por_formalizar, mo_monto_deuda_original
            FROM cat_cp_contrato
           WHERE id_cp_producto = v_id_cp_producto_original;

      END LOOP;

      -- CAT_GARANTIA
      INSERT INTO cat_garantia
        (id_garantia, id_persona, co_categoria, co_tipo_garantia,
         de_tipo_garantia, co_subtipo_garantia, co_sub_producto, co_num_garantia,
         co_moneda, mo_importe, fe_formalizacion, in_situacion,
         de_situacion_host, de_situacion_wp, fecha_tasacion, modalidad,
         valor_gravamen, valor_comercial, valor_realizable, rango, propietario,
         numero_deposito, titular, fecha_vencimiento, fiador, descripcion,
         fecha_renovacion, numero_carta, banco_emision, co_gen_especifica,
         co_tip_bien, area, in_ins_rpp, in_ren_fija, in_ren_variable, co_lug_alm,
         co_tip_fianza, nro_fia_bancaria, ca_tit_valor, val_nominal,
         val_cotizado, nro_letras, observaciones, in_estado, co_tip_bie_host,
         de_tip_bie_host, id_usua_crea, fe_usua_crea, de_term_crea, id_usua_modi,
         fe_usua_modi, de_term_modi,
         -- JLOPEZ 23/03/2018 - PARA SABER SI SE CAMBIO DATOS DE LA GARANTIA : INICIO
         in_editada
         -- JLOPEZ 23/03/2018 : FIN
         )
        SELECT sq_garantia.nextval, cg.*
          FROM (SELECT v_id_persona_nuevo, co_categoria, co_tipo_garantia,
                        de_tipo_garantia, co_subtipo_garantia, co_sub_producto,
                        co_num_garantia, co_moneda, mo_importe, fe_formalizacion,
                        in_situacion, de_situacion_host, de_situacion_wp,
                        fecha_tasacion, modalidad, valor_gravamen, valor_comercial,
                        valor_realizable, rango, propietario, numero_deposito,
                        titular, fecha_vencimiento, fiador, descripcion,
                        fecha_renovacion, numero_carta, banco_emision,
                        co_gen_especifica, co_tip_bien, area, in_ins_rpp,
                        in_ren_fija, in_ren_variable, co_lug_alm, co_tip_fianza,
                        nro_fia_bancaria, ca_tit_valor, val_nominal, val_cotizado,
                        nro_letras, observaciones, in_estado, co_tip_bie_host,
                        de_tip_bie_host, id_usua_crea, fe_usua_crea, de_term_crea,
                        id_usua_modi, SYSDATE, de_term_modi,
                        -- JLOPEZ 23/03/2018 - PARA SABER SI SE CAMBIO DATOS DE LA GARANTIA : INICIO
                        in_editada
                 -- JLOPEZ 23/03/2018 : FIN
                   FROM cat_garantia
                  WHERE id_persona = v_id_persona_original
                  ORDER BY id_garantia ASC) cg;

      -- CAL_PERIODO_DEUDA
      INSERT INTO cal_periodo_deuda
        (id_peri_deuda, id_solicitud, id_persona, entidad, periodo, codfamilia,
         familia, tipoplazo, producto, tem, tea, plazo, deuda, lineausada,
         lineanousada)
        SELECT sq_peri_deuda.nextval, v_id_solicitud_nuevo, v_id_persona_nuevo,
               entidad, periodo, codfamilia, familia, tipoplazo, producto, tem,
               tea, plazo, deuda, lineausada, lineanousada
          FROM cal_periodo_deuda
         WHERE id_solicitud = v_id_solicitud_original
           AND id_persona = v_id_persona_original;

      -- CAL_TRANSACCION_DEUDA
      INSERT INTO cal_transaccion_deuda
        (id_trans_deuda, id_solicitud, id_persona, det_id_solicitud, periodo,
         entidad, tipocredito, saldo, cuenta, tipodeuda, aux1, aux2, codproducto,
         tipo_producto, origen, activo, familia)
        SELECT sq_trans_deuda.nextval, v_id_solicitud_nuevo, v_id_persona_nuevo,
               NULL, periodo, entidad, tipocredito, saldo, cuenta, tipodeuda,
               aux1, aux2, codproducto, tipo_producto, origen, activo, familia
          FROM cal_transaccion_deuda
         WHERE det_id_solicitud = v_id_solicitud_original
           AND id_persona = v_id_persona_original;

    END LOOP;

    -- LNARVAEZ 21/03/2018 - M4_S3 - INTEGRACIÓN CON REPORTE DE CREDITO WEB - CONYUGE: INICIO
    FOR r_cat_persona IN c_cat_persona_conyuge(v_id_solicitud_original)
    LOOP

      v_id_persona_nuevo := v_t_cat_persona(r_cat_persona.id_persona_conyuge);

      UPDATE cat_persona
         SET id_persona_conyuge = v_id_persona_nuevo
       WHERE id_persona_conyuge = r_cat_persona.id_persona_conyuge
         AND id_solicitud = v_id_solicitud_nuevo;

    END LOOP;
    -- LNARVAEZ 21/03/2018: FIN

    -- CAT_BALANCE
    FOR r_cat_balance IN c_cat_balance(v_id_solicitud_original)
    LOOP

      v_id_balance_original := r_cat_balance.id_balance;
      v_id_balance_nuevo    := sq_pdt_sunat.nextval;

      INSERT INTO cat_balance
        (id_balance, id_solicitud, id_flujo_caja, mo_ing_vta_prom_sunat,
         co_giro_negocio, mo_cole_vacac_enero, mo_cole_taller_enero,
         pc_margen_util_bruta, pc_margen_util_bruta_ref, pc_ing_indic_informal,
         id_usua_crea, fe_usua_crea, de_term_crea, id_usua_modi, fe_usua_modi,
         de_term_modi)
      VALUES
        (v_id_balance_nuevo, v_id_solicitud_nuevo, r_cat_balance.id_flujo_caja,
         r_cat_balance.mo_ing_vta_prom_sunat, r_cat_balance.co_giro_negocio,
         r_cat_balance.mo_cole_vacac_enero, r_cat_balance.mo_cole_taller_enero,
         r_cat_balance.pc_margen_util_bruta,
         r_cat_balance.pc_margen_util_bruta_ref,
         r_cat_balance.pc_ing_indic_informal, r_cat_balance.id_usua_crea,
         r_cat_balance.fe_usua_crea, r_cat_balance.de_term_crea,
         r_cat_balance.id_usua_modi, SYSDATE, r_cat_balance.de_term_modi);

      -- CAT_BALANCE_COSTO_VENTA
      INSERT INTO cat_balance_costo_venta
        (id_balance_costo_venta, id_balance, co_costo_venta, mo_gasto,
         co_giro_negocio, in_estado, id_usua_crea, fe_usua_crea, de_term_crea,
         id_usua_modi, fe_usua_modi, de_term_modi)
        SELECT sq_cat_balance_costo_venta.nextval, v_id_balance_nuevo,
               co_costo_venta, mo_gasto, co_giro_negocio, in_estado,
               id_usua_crea, fe_usua_crea, de_term_crea, id_usua_modi, SYSDATE,
               de_term_modi
          FROM cat_balance_costo_venta
         WHERE id_balance = v_id_balance_original;

      -- CAT_BALANCE_EEFF
      FOR r_cat_balance_eeff IN c_cat_balance_eeff(v_id_balance_original)
      LOOP

        v_id_balance_eeff_original := r_cat_balance_eeff.id_balance_eeff;
        v_id_balance_eeff_nuevo    := sq_balance_eeff.nextval;

        INSERT INTO cat_balance_eeff
          (id_balance_eeff, id_balance, mo_ac_caja, mo_ac_banco, mo_ac_cliente,
           mo_ac_otr_cuenta_cobrar, mo_ac_inventario,
           mo_ac_cp_relacionado_propuesta, mo_ac_mercaderia,
           mo_ac_producto_proceso, mo_ac_materia_prima, mo_ac_existencia_recibir,
           mo_ac_tot_corriente, mo_ac_lp_relacionado_propuesta, mo_mueble_ensere,
           mo_inmuebles, mo_maquinariaseq, mo_ac_tot_no_corriente, mo_ac_tot,
           mo_pa_banco_deuda_cp, mo_pa_proveedor, mo_pa_otr_cuenta_pagar_cp,
           mo_pa_tot_corriente, mo_pa_deuda_financiera_lp,
           mo_pa_cuenta_pagar_relacionada, mo_pa_otr_cuenta_pagar_lp,
           mo_pa_tot_no_corriente, mo_pa_tot, mo_pa_patrimonio,
           mo_tot_pa_patrimonio, mo_venta_total, mo_costo_venta,
           mo_gasto_operativo, mo_utilidad_operativa, mo_gasto_financiero,
           mo_gasto_familiar, mo_otr_ingreso_2, mo_impuesto,
           mo_utilidad_disponible, de_esp_otr_ingreso, mo_ing_ant_pen,
           mo_ing_ant_usd, mo_ing_cur_pen, mo_ing_cur_usd, mo_fbbva_ante_sma,
           mo_fbbva_curr_sma, in_estado, id_usua_crea, fe_usua_crea,
           de_term_crea, id_usua_modi, fe_usua_modi, de_term_modi)
        VALUES
          (v_id_balance_eeff_nuevo, v_id_balance_nuevo,
           r_cat_balance_eeff.mo_ac_caja, r_cat_balance_eeff.mo_ac_banco,
           r_cat_balance_eeff.mo_ac_cliente,
           r_cat_balance_eeff.mo_ac_otr_cuenta_cobrar,
           r_cat_balance_eeff.mo_ac_inventario,
           r_cat_balance_eeff.mo_ac_cp_relacionado_propuesta,
           r_cat_balance_eeff.mo_ac_mercaderia,
           r_cat_balance_eeff.mo_ac_producto_proceso,
           r_cat_balance_eeff.mo_ac_materia_prima,
           r_cat_balance_eeff.mo_ac_existencia_recibir,
           r_cat_balance_eeff.mo_ac_tot_corriente,
           r_cat_balance_eeff.mo_ac_lp_relacionado_propuesta,
           r_cat_balance_eeff.mo_mueble_ensere, r_cat_balance_eeff.mo_inmuebles,
           r_cat_balance_eeff.mo_maquinariaseq,
           r_cat_balance_eeff.mo_ac_tot_no_corriente,
           r_cat_balance_eeff.mo_ac_tot, r_cat_balance_eeff.mo_pa_banco_deuda_cp,
           r_cat_balance_eeff.mo_pa_proveedor,
           r_cat_balance_eeff.mo_pa_otr_cuenta_pagar_cp,
           r_cat_balance_eeff.mo_pa_tot_corriente,
           r_cat_balance_eeff.mo_pa_deuda_financiera_lp,
           r_cat_balance_eeff.mo_pa_cuenta_pagar_relacionada,
           r_cat_balance_eeff.mo_pa_otr_cuenta_pagar_lp,
           r_cat_balance_eeff.mo_pa_tot_no_corriente,
           r_cat_balance_eeff.mo_pa_tot, r_cat_balance_eeff.mo_pa_patrimonio,
           r_cat_balance_eeff.mo_tot_pa_patrimonio,
           r_cat_balance_eeff.mo_venta_total, r_cat_balance_eeff.mo_costo_venta,
           r_cat_balance_eeff.mo_gasto_operativo,
           r_cat_balance_eeff.mo_utilidad_operativa,
           r_cat_balance_eeff.mo_gasto_financiero,
           r_cat_balance_eeff.mo_gasto_familiar,
           r_cat_balance_eeff.mo_otr_ingreso_2, r_cat_balance_eeff.mo_impuesto,
           r_cat_balance_eeff.mo_utilidad_disponible,
           r_cat_balance_eeff.de_esp_otr_ingreso,
           r_cat_balance_eeff.mo_ing_ant_pen, r_cat_balance_eeff.mo_ing_ant_usd,
           r_cat_balance_eeff.mo_ing_cur_pen, r_cat_balance_eeff.mo_ing_cur_usd,
           r_cat_balance_eeff.mo_fbbva_ante_sma,
           r_cat_balance_eeff.mo_fbbva_curr_sma, r_cat_balance_eeff.in_estado,
           r_cat_balance_eeff.id_usua_crea, r_cat_balance_eeff.fe_usua_crea,
           r_cat_balance_eeff.de_term_crea, r_cat_balance_eeff.id_usua_modi,
           SYSDATE, r_cat_balance_eeff.de_term_modi);

        -- CAT_BALANCE_EEFF_INMUEBLE
        INSERT INTO cat_balance_eeff_inmueble
          (id_inmueble, id_balance_eeff, de_ubicacion, de_propietario, de_uso,
           co_realizable, mo_metraje, mo_precio_m2, mo_valor_inmueble_declarado,
           mo_valor_inmueble_evaluado, in_estado, id_usua_crea, fe_usua_crea,
           de_term_crea, id_usua_modi, fe_usua_modi, de_term_modi)
          SELECT sq_balance_eeff_inmueble.nextval, v_id_balance_eeff_nuevo,
                 de_ubicacion, de_propietario, de_uso, co_realizable, mo_metraje,
                 mo_precio_m2, mo_valor_inmueble_declarado,
                 mo_valor_inmueble_evaluado, in_estado, id_usua_crea,
                 fe_usua_crea, de_term_crea, id_usua_modi, SYSDATE, de_term_modi
            FROM cat_balance_eeff_inmueble
           WHERE id_balance_eeff = v_id_balance_eeff_original;

        -- CAT_BALANCE_EEFF_MAQU_EQU
        INSERT INTO cat_balance_eeff_maqu_equ
          (id_maquina_equipo, id_balance_eeff, co_uso_negocio, de_placa,
           mo_valor_nuevo, de_antiguedad, mo_valor_estimado, in_estado,
           id_usua_crea, fe_usua_crea, de_term_crea, id_usua_modi, fe_usua_modi,
           de_term_modi)
          SELECT sq_balance_eeff_maquina_equipo.nextval, v_id_balance_eeff_nuevo,
                 co_uso_negocio, de_placa, mo_valor_nuevo, de_antiguedad,
                 mo_valor_estimado, in_estado, id_usua_crea, fe_usua_crea,
                 de_term_crea, id_usua_modi, SYSDATE, de_term_modi
            FROM cat_balance_eeff_maqu_equ
           WHERE id_balance_eeff = v_id_balance_eeff_original;

        -- CAT_BALANCE_EEFF_MUEBLE_ENSER
        INSERT INTO cat_balance_eeff_mueble_enser
          (id_muebles_enseres, id_balance_eeff, de_muebles_enseres, mo_cantidad,
           mo_valor_bien, mo_valor_estimado, in_estado, id_usua_crea,
           fe_usua_crea, de_term_crea, id_usua_modi, fe_usua_modi, de_term_modi)
          SELECT sq_balance_eeff_mueble_enser.nextval, v_id_balance_eeff_nuevo,
                 cbeme.de_muebles_enseres, cbeme.mo_cantidad,
                 cbeme.mo_valor_bien, cbeme.mo_valor_estimado, cbeme.in_estado,
                 cbeme.id_usua_crea, cbeme.fe_usua_crea, cbeme.de_term_crea,
                 cbeme.id_usua_modi, cbeme.fe_usua_modi, cbeme.de_term_modi
            FROM (SELECT *
                     FROM cat_balance_eeff_mueble_enser
                    WHERE id_balance_eeff = v_id_balance_eeff_original
                    ORDER BY id_muebles_enseres ASC) cbeme;

      END LOOP;

      -- CAT_BALANCE_GASTO_OPERATIVO
      INSERT INTO cat_balance_gasto_operativo
        (id_balance_gasto_operativo, id_balance, mo_total, co_gasto, in_estado,
         id_usua_crea, fe_usua_crea, de_term_crea, id_usua_modi, fe_usua_modi,
         de_term_modi)
        SELECT sq_cat_balance_gasto_operativo.nextval, v_id_balance_nuevo,
               mo_total, co_gasto, in_estado, id_usua_crea, fe_usua_crea,
               de_term_crea, id_usua_modi, SYSDATE, de_term_modi
          FROM cat_balance_gasto_operativo
         WHERE id_balance = v_id_balance_original;

      -- CAT_BALANCE_GASTO_PERSONAL
      INSERT INTO cat_balance_gasto_personal
        (id_balance_gasto_personal, id_balance, mo_miembro_unidad_familiar,
         mo_gastos_implicitos, mo_alquiler, mo_deuda_sbs, mo_otros, in_estado,
         id_usua_crea, fe_usua_crea, de_term_crea, id_usua_modi, fe_usua_modi,
         de_term_modi)
        SELECT sq_cat_balance_gasto_personal.nextval, v_id_balance_nuevo,
               mo_miembro_unidad_familiar, mo_gastos_implicitos, mo_alquiler,
               mo_deuda_sbs, mo_otros, in_estado, id_usua_crea, fe_usua_crea,
               de_term_crea, id_usua_modi, SYSDATE, de_term_modi
          FROM cat_balance_gasto_personal
         WHERE id_balance = v_id_balance_original;

      -- CAT_BALANCE_GASTO_PLANILLA
      INSERT INTO cat_balance_gasto_planilla
        (id_gasto_planilla, id_balance, co_planilla, ca_personal, mo_sueldo,
         in_gasto_operativo, mo_subtotal, in_estado, id_usua_crea, fe_usua_crea,
         de_term_crea, id_usua_modi, fe_usua_modi, de_term_modi)
        SELECT sq_cat_balance_gasto_planilla.nextval, v_id_balance_nuevo,
               co_planilla, ca_personal, mo_sueldo, in_gasto_operativo,
               mo_subtotal, in_estado, id_usua_crea, fe_usua_crea, de_term_crea,
               id_usua_modi, SYSDATE, de_term_modi
          FROM cat_balance_gasto_planilla
         WHERE id_balance = v_id_balance_original;

      -- CAT_BALANCE_INSUMO_PRINC
      INSERT INTO cat_balance_insumo_princ
        (id_insumo_princ, id_balance, de_insumo, mo_total, in_estado,
         id_usua_crea, fe_usua_crea, de_term_crea, id_usua_modi, fe_usua_modi,
         de_term_modi)
        SELECT sq_cat_balance_insumo_princ.nextval, v_id_balance_nuevo,
               de_insumo, mo_total, in_estado, id_usua_crea, fe_usua_crea,
               de_term_crea, id_usua_modi, SYSDATE, de_term_modi
          FROM cat_balance_insumo_princ
         WHERE id_balance = v_id_balance_original;

      -- CAT_BALANCE_SERV_TERC
      INSERT INTO cat_balance_serv_terc
        (id_serv_terc, id_balance, de_servicio, mo_total, in_estado,
         id_usua_crea, fe_usua_crea, de_term_crea, id_usua_modi, fe_usua_modi,
         de_term_modi)
        SELECT sq_cat_balance_serv_terc.nextval, v_id_balance_nuevo, de_servicio,
               mo_total, in_estado, id_usua_crea, fe_usua_crea, de_term_crea,
               id_usua_modi, SYSDATE, de_term_modi
          FROM cat_balance_serv_terc
         WHERE id_balance = v_id_balance_original;

      -- CAT_INGRESOS_PROD_NO_REPRESENT
      INSERT INTO cat_ingresos_prod_no_represent
        (id_ingreso_adic, id_balance, de_cole_detalle, mo_cole_importe,
         ca_rest_mesas, ca_rest_personas_mesa, ca_rest_vueltas,
         mo_rest_precio_prom, mo_rest_ingresos_dia, in_rest_fin_semana,
         ca_rest_dias_trab, mo_serv_vtas_prod_mes1, mo_serv_vtas_prod_mes2,
         mo_serv_vtas_prod_mes3, co_giro_negocio, in_estado, id_usua_crea,
         fe_usua_crea, de_term_crea, id_usua_modi, fe_usua_modi, de_term_modi)
        SELECT sq_ingresos_prod_no_represent.nextval, v_id_balance_nuevo,
               de_cole_detalle, mo_cole_importe, ca_rest_mesas,
               ca_rest_personas_mesa, ca_rest_vueltas, mo_rest_precio_prom,
               mo_rest_ingresos_dia, in_rest_fin_semana, ca_rest_dias_trab,
               mo_serv_vtas_prod_mes1, mo_serv_vtas_prod_mes2,
               mo_serv_vtas_prod_mes3, co_giro_negocio, in_estado, id_usua_crea,
               fe_usua_crea, de_term_crea, id_usua_modi, SYSDATE, de_term_modi
          FROM cat_ingresos_prod_no_represent
         WHERE id_balance = v_id_balance_original;

      -- CAT_INGRESOS_PROD_REPRESENT
      INSERT INTO cat_ingresos_prod_represent
        (id_prod_rep, id_balance, de_producto, ca_comer_uni_vend,
         de_comer_uni_present, mo_precio_compra, mo_precio_venta,
         mo_comer_utilidad_bruta, ca_manuf_cantidad, mo_comer_ventas_prod,
         de_cole_grados, ca_cole_aulas, ca_cole_alumnos, ca_cole_alumn_beca,
         de_cole_turnos, mo_cole_pension_mes_prom, mo_cole_ingreso_mes,
         de_hotel_tipo_habitacion, ca_hotel_habitaciones, mo_hotel_tarifa_diaria,
         mo_hotel_tasa_arribo_ocupab, mo_total_mensual,
         co_transpcarga_tipo_transp, ca_unidades, co_trcarga_clasif_transp,
         co_trcarga_tipo_prod, mo_transpcarga_flete_ida,
         mo_trcarga_flete_ida_vuelta, mo_trcarga_flete_retorno,
         ca_trcarga_viajes_mes, mo_trcarga_ingreso_bruto, de_alqmaq_marca_modelo,
         de_alqmaq_placa, de_alqmaq_tipo_unidad, co_alqmaq_tipo_contrato,
         ca_alqmaq_horas_mes, ca_alqmaq_chofer_unidad, mo_alqmaq_precio_hora,
         mo_ingreso_bruto, co_serv_tipo_servicio, ca_serv_num_serv_mes,
         mo_serv_venta_prod_mes1, mo_serv_venta_prod_mes2,
         mo_serv_venta_prod_mes3, co_giro_negocio, in_estado, id_usua_crea,
         fe_usua_crea, de_term_crea, id_usua_modi, fe_usua_modi, de_term_modi)
        SELECT sq_ingresos_prod_represent.nextval, v_id_balance_nuevo,
               de_producto, ca_comer_uni_vend, de_comer_uni_present,
               mo_precio_compra, mo_precio_venta, mo_comer_utilidad_bruta,
               ca_manuf_cantidad, mo_comer_ventas_prod, de_cole_grados,
               ca_cole_aulas, ca_cole_alumnos, ca_cole_alumn_beca,
               de_cole_turnos, mo_cole_pension_mes_prom, mo_cole_ingreso_mes,
               de_hotel_tipo_habitacion, ca_hotel_habitaciones,
               mo_hotel_tarifa_diaria, mo_hotel_tasa_arribo_ocupab,
               mo_total_mensual, co_transpcarga_tipo_transp, ca_unidades,
               co_trcarga_clasif_transp, co_trcarga_tipo_prod,
               mo_transpcarga_flete_ida, mo_trcarga_flete_ida_vuelta,
               mo_trcarga_flete_retorno, ca_trcarga_viajes_mes,
               mo_trcarga_ingreso_bruto, de_alqmaq_marca_modelo, de_alqmaq_placa,
               de_alqmaq_tipo_unidad, co_alqmaq_tipo_contrato,
               ca_alqmaq_horas_mes, ca_alqmaq_chofer_unidad,
               mo_alqmaq_precio_hora, mo_ingreso_bruto, co_serv_tipo_servicio,
               ca_serv_num_serv_mes, mo_serv_venta_prod_mes1,
               mo_serv_venta_prod_mes2, mo_serv_venta_prod_mes3, co_giro_negocio,
               in_estado, id_usua_crea, fe_usua_crea, de_term_crea, id_usua_modi,
               SYSDATE, de_term_modi
          FROM cat_ingresos_prod_represent
         WHERE id_balance = v_id_balance_original;

    END LOOP;

    -- CAT_COMENTARIO
    INSERT INTO cat_comentario
      (id_comentario, id_solicitud, tx_titulo, tx_comentario, id_fase,
       in_estado, co_operacion, in_editable, rol_usuario_crea, no_usuario_crea,
       id_usua_crea, fe_usua_crea, de_term_crea, id_usua_modi, fe_usua_modi,
       de_term_modi)
      SELECT sq_comentario.nextval, v_id_solicitud_nuevo, tx_titulo,
             tx_comentario, id_fase, in_estado, co_operacion, in_editable,
             rol_usuario_crea, no_usuario_crea, id_usua_crea, fe_usua_crea,
             de_term_crea, id_usua_modi, SYSDATE, de_term_modi
        FROM cat_comentario
       WHERE id_solicitud = v_id_solicitud_original
         AND NOT EXISTS (SELECT *
                FROM det_solicitud_retorno
               WHERE det_solicitud_retorno.id_comentario_ofi =
                     cat_comentario.id_comentario
                  OR det_solicitud_retorno.id_comentario_rie =
                     cat_comentario.id_comentario);

    -- CAT_INFO_ADIC_CLIENTE
    INSERT INTO cat_info_adic_cliente
      (id_info_adic_cliente, id_solicitud, ca_cant_locales, un_edad_rep_legal,
       in_depen_comercia, de_grado_concentr, id_tipo_maquinari,
       ca_unidades_propi, ca_unidades_alqui, de_licen_funciona, ca_aulas,
       ca_profesores, id_nivel_educacio, id_permiso_ugel, ca_puntos_venta,
       ca_almacenes, id_tipo_hospedaje, ur_pagina_web, ca_talleres,
       id_tipo_comida, de_tipo_comida, de_clasif_servicio, de_atencion,
       de_nom_cli_concen, un_anio_exp_serv, id_fase, id_usua_crea, fe_usua_crea,
       de_term_crea, id_usua_modi, fe_usua_modi, de_term_modi)
      SELECT sq_info_adic_cliente.nextval, v_id_solicitud_nuevo, ca_cant_locales,
             un_edad_rep_legal, in_depen_comercia, de_grado_concentr,
             id_tipo_maquinari, ca_unidades_propi, ca_unidades_alqui,
             de_licen_funciona, ca_aulas, ca_profesores, id_nivel_educacio,
             id_permiso_ugel, ca_puntos_venta, ca_almacenes, id_tipo_hospedaje,
             ur_pagina_web, ca_talleres, id_tipo_comida, de_tipo_comida,
             de_clasif_servicio, de_atencion, de_nom_cli_concen,
             un_anio_exp_serv, id_fase, id_usua_crea, fe_usua_crea, de_term_crea,
             id_usua_modi, SYSDATE, de_term_modi
        FROM cat_info_adic_cliente
       WHERE id_solicitud = v_id_solicitud_original;

    -- CAT_INFO_CUALI_NOEXTRACTIVO
    FOR r_cat_info_cuali_noextractivo IN c_cat_info_cuali_noextractivo(v_id_solicitud_original)
    LOOP

      v_id_info_cuali_nuevo    := sq_info_cuali_noext.nextval;
      v_id_info_cuali_original := r_cat_info_cuali_noextractivo.id_info_cuali;

      INSERT INTO cat_info_cuali_noextractivo
        (id_info_cuali, id_solicitud, fe_vis_con, co_preg_tipo_visita,
         co_resp_tipo_visita, co_tipo_perfil, de_punt_tipo_perfil, co_tipo_clien,
         de_punt_tipo_clien, co_preg_cn_pert, co_resp_cn_pert, co_preg_cnl_ingr,
         co_resp_cnl_ingr, de_nom_per_ges_neg, de_dni_per_aten_vis,
         de_nom_per_aten_vis, de_email_per_aten_vis, de_tel_cel, de_tel_fijo_emp,
         co_preg_carg_pers_entr_empr, co_resp_carg_pers_entr_empr,
         de_part_acc_entrev, co_preg_alert_fren_acti, co_resp_alert_fren_acti,
         de_punt_alert_fren_acti, co_preg_tipo_alert, co_resp_tipo_alert,
         de_punt_tipo_alert, de_perf_prop_come, co_preg_exper_prof,
         co_resp_exper_prof, de_punt_exper_prof, co_preg_exis_ries_suce_nego,
         co_resp_exis_ries_suce_nego, de_punt_exis_ries_suce_nego,
         co_preg_exper_nego, co_resp_exper_nego, de_punt_exper_nego,
         co_preg_refe_nega_terc, co_resp_refe_nega_terc, de_punt_refe_nega_terc,
         de_det_refe_nega, co_preg_uso_tec_infr, co_resp_uso_tec_infr,
         de_punt_uso_tec_infr, co_preg_colat_bbva, co_resp_colat_bbva,
         de_punt_colat_bbva, co_preg_canali_haber, co_resp_canali_haber,
         de_punt_canali_haber, co_preg_porc_ingr_decl, co_resp_porc_ingr_decl,
         de_punt_porc_ingr_decl, co_preg_vinc_nego_alert_nega,
         co_resp_vinc_nego_alert_nega, de_punt_vinc_nego_alert_nega, de_nom_vinc,
         co_preg_tipo_vncl, co_resp_tipo_vncl, de_alert_nega_obs,
         co_preg_conc_clien, co_resp_conc_clien, de_punt_conc_clien,
         co_preg_conc_prve, co_resp_conc_prve, de_punt_conc_prve,
         co_preg_entor_nego, co_resp_entor_nego, de_punt_entor_nego,
         co_preg_calid_exis, co_resp_calid_exis, de_punt_calid_exis,
         co_preg_zona_infl, co_resp_zona_infl, de_punt_zona_infl,
         co_preg_clien_pres_est_vent, co_resp_clien_pres_est_vent,
         co_preg_rep_leg, co_resp_rep_leg, de_punt_rep_leg, co_preg_opin,
         co_resp_opin, co_preg_rsg_cmb, co_resp_rsg_cmb, de_comen_final,
         de_punt_final, id_usua_crea, fe_usua_crea, de_term_crea, id_usua_modi,
         fe_usua_modi, de_term_modi, id_usua_visita, de_usua_visita)
      VALUES
        (v_id_info_cuali_nuevo, v_id_solicitud_nuevo,
         r_cat_info_cuali_noextractivo.fe_vis_con,
         r_cat_info_cuali_noextractivo.co_preg_tipo_visita,
         r_cat_info_cuali_noextractivo.co_resp_tipo_visita,
         r_cat_info_cuali_noextractivo.co_tipo_perfil,
         r_cat_info_cuali_noextractivo.de_punt_tipo_perfil,
         r_cat_info_cuali_noextractivo.co_tipo_clien,
         r_cat_info_cuali_noextractivo.de_punt_tipo_clien,
         r_cat_info_cuali_noextractivo.co_preg_cn_pert,
         r_cat_info_cuali_noextractivo.co_resp_cn_pert,
         r_cat_info_cuali_noextractivo.co_preg_cnl_ingr,
         r_cat_info_cuali_noextractivo.co_resp_cnl_ingr,
         r_cat_info_cuali_noextractivo.de_nom_per_ges_neg,
         r_cat_info_cuali_noextractivo.de_dni_per_aten_vis,
         r_cat_info_cuali_noextractivo.de_nom_per_aten_vis,
         r_cat_info_cuali_noextractivo.de_email_per_aten_vis,
         r_cat_info_cuali_noextractivo.de_tel_cel,
         r_cat_info_cuali_noextractivo.de_tel_fijo_emp,
         r_cat_info_cuali_noextractivo.co_preg_carg_pers_entr_empr,
         r_cat_info_cuali_noextractivo.co_resp_carg_pers_entr_empr,
         r_cat_info_cuali_noextractivo.de_part_acc_entrev,
         r_cat_info_cuali_noextractivo.co_preg_alert_fren_acti,
         r_cat_info_cuali_noextractivo.co_resp_alert_fren_acti,
         r_cat_info_cuali_noextractivo.de_punt_alert_fren_acti,
         r_cat_info_cuali_noextractivo.co_preg_tipo_alert,
         r_cat_info_cuali_noextractivo.co_resp_tipo_alert,
         r_cat_info_cuali_noextractivo.de_punt_tipo_alert,
         r_cat_info_cuali_noextractivo.de_perf_prop_come,
         r_cat_info_cuali_noextractivo.co_preg_exper_prof,
         r_cat_info_cuali_noextractivo.co_resp_exper_prof,
         r_cat_info_cuali_noextractivo.de_punt_exper_prof,
         r_cat_info_cuali_noextractivo.co_preg_exis_ries_suce_nego,
         r_cat_info_cuali_noextractivo.co_resp_exis_ries_suce_nego,
         r_cat_info_cuali_noextractivo.de_punt_exis_ries_suce_nego,
         r_cat_info_cuali_noextractivo.co_preg_exper_nego,
         r_cat_info_cuali_noextractivo.co_resp_exper_nego,
         r_cat_info_cuali_noextractivo.de_punt_exper_nego,
         r_cat_info_cuali_noextractivo.co_preg_refe_nega_terc,
         r_cat_info_cuali_noextractivo.co_resp_refe_nega_terc,
         r_cat_info_cuali_noextractivo.de_punt_refe_nega_terc,
         r_cat_info_cuali_noextractivo.de_det_refe_nega,
         r_cat_info_cuali_noextractivo.co_preg_uso_tec_infr,
         r_cat_info_cuali_noextractivo.co_resp_uso_tec_infr,
         r_cat_info_cuali_noextractivo.de_punt_uso_tec_infr,
         r_cat_info_cuali_noextractivo.co_preg_colat_bbva,
         r_cat_info_cuali_noextractivo.co_resp_colat_bbva,
         r_cat_info_cuali_noextractivo.de_punt_colat_bbva,
         r_cat_info_cuali_noextractivo.co_preg_canali_haber,
         r_cat_info_cuali_noextractivo.co_resp_canali_haber,
         r_cat_info_cuali_noextractivo.de_punt_canali_haber,
         r_cat_info_cuali_noextractivo.co_preg_porc_ingr_decl,
         r_cat_info_cuali_noextractivo.co_resp_porc_ingr_decl,
         r_cat_info_cuali_noextractivo.de_punt_porc_ingr_decl,
         r_cat_info_cuali_noextractivo.co_preg_vinc_nego_alert_nega,
         r_cat_info_cuali_noextractivo.co_resp_vinc_nego_alert_nega,
         r_cat_info_cuali_noextractivo.de_punt_vinc_nego_alert_nega,
         r_cat_info_cuali_noextractivo.de_nom_vinc,
         r_cat_info_cuali_noextractivo.co_preg_tipo_vncl,
         r_cat_info_cuali_noextractivo.co_resp_tipo_vncl,
         r_cat_info_cuali_noextractivo.de_alert_nega_obs,
         r_cat_info_cuali_noextractivo.co_preg_conc_clien,
         r_cat_info_cuali_noextractivo.co_resp_conc_clien,
         r_cat_info_cuali_noextractivo.de_punt_conc_clien,
         r_cat_info_cuali_noextractivo.co_preg_conc_prve,
         r_cat_info_cuali_noextractivo.co_resp_conc_prve,
         r_cat_info_cuali_noextractivo.de_punt_conc_prve,
         r_cat_info_cuali_noextractivo.co_preg_entor_nego,
         r_cat_info_cuali_noextractivo.co_resp_entor_nego,
         r_cat_info_cuali_noextractivo.de_punt_entor_nego,
         r_cat_info_cuali_noextractivo.co_preg_calid_exis,
         r_cat_info_cuali_noextractivo.co_resp_calid_exis,
         r_cat_info_cuali_noextractivo.de_punt_calid_exis,
         r_cat_info_cuali_noextractivo.co_preg_zona_infl,
         r_cat_info_cuali_noextractivo.co_resp_zona_infl,
         r_cat_info_cuali_noextractivo.de_punt_zona_infl,
         r_cat_info_cuali_noextractivo.co_preg_clien_pres_est_vent,
         r_cat_info_cuali_noextractivo.co_resp_clien_pres_est_vent,
         r_cat_info_cuali_noextractivo.co_preg_rep_leg,
         r_cat_info_cuali_noextractivo.co_resp_rep_leg,
         r_cat_info_cuali_noextractivo.de_punt_rep_leg,
         r_cat_info_cuali_noextractivo.co_preg_opin,
         r_cat_info_cuali_noextractivo.co_resp_opin,
         r_cat_info_cuali_noextractivo.co_preg_rsg_cmb,
         r_cat_info_cuali_noextractivo.co_resp_rsg_cmb,
         r_cat_info_cuali_noextractivo.de_comen_final,
         r_cat_info_cuali_noextractivo.de_punt_final,
         r_cat_info_cuali_noextractivo.id_usua_crea,
         r_cat_info_cuali_noextractivo.fe_usua_crea,
         r_cat_info_cuali_noextractivo.de_term_crea,
         r_cat_info_cuali_noextractivo.id_usua_modi, SYSDATE,
         r_cat_info_cuali_noextractivo.de_term_modi,
         r_cat_info_cuali_noextractivo.id_usua_visita,
         r_cat_info_cuali_noextractivo.de_usua_visita);

      -- CAT_DIRECCION
      INSERT INTO cat_direccion
        (id_direccion, id_cliente, id_info_cuali, co_tipo_local_visitado,
         de_tipo_local_visitado, co_situ_local_visitado, de_situ_local_visitado,
         in_local_visitado, de_direccion_visitado, co_tipo_local, de_tipo_local,
         in_estado, id_departamento, id_provincia, id_distrito, id_usua_crea,
         fe_usua_crea, de_term_crea, id_usua_modi, fe_usua_modi, de_term_modi)
        SELECT sq_direccion.nextval, id_cliente, v_id_info_cuali_nuevo,
               co_tipo_local_visitado, de_tipo_local_visitado,
               co_situ_local_visitado, de_situ_local_visitado, in_local_visitado,
               de_direccion_visitado, co_tipo_local, de_tipo_local, in_estado,
               id_departamento, id_provincia, id_distrito, id_usua_crea,
               fe_usua_crea, de_term_crea, id_usua_modi, fe_usua_modi,
               de_term_modi
          FROM cat_direccion
         WHERE id_info_cuali = v_id_info_cuali_original;

      -- CAT_CAMPANIA
      INSERT INTO cat_campania
        (id_campania, id_cliente, no_campania, pc_ventas, co_tipo_campania,
         de_tipo_campania, in_estado, id_usua_crea, fe_usua_crea, de_term_crea,
         id_usua_modi, fe_usua_modi, de_term_modi, id_info_cuali)
        SELECT sq_campania.nextval, id_cliente, no_campania, pc_ventas,
               co_tipo_campania, de_tipo_campania, in_estado, id_usua_crea,
               fe_usua_crea, de_term_crea, id_usua_modi, fe_usua_modi,
               de_term_modi, v_id_info_cuali_nuevo
          FROM cat_campania
         WHERE id_info_cuali = v_id_info_cuali_original;

    END LOOP;

    --<INI: 2017-11-07: Artificio para obtener el ID_PRODUCTO en el campo ID_PRODUCTO_ORG>
    FOR r_cat_producto IN c_cat_producto(v_id_solicitud_original)
    LOOP

      v_id_producto_nuevo    := sq_producto.nextval;
      v_id_producto_original := r_cat_producto.id_producto;

      v_t_cat_producto(v_id_producto_original) := v_id_producto_nuevo;

      IF v_t_cat_producto.exists(r_cat_producto.id_producto_org)
      THEN
        v_id_producto_org := v_t_cat_producto(r_cat_producto.id_producto_org);
      ELSE
        v_id_producto_org := NULL;
      END IF;

      -- CAT_PRODUCTO
      INSERT INTO cat_producto
        (id_producto, id_solicitud, co_producto, co_sub_producto,
         mo_importe_solicit, mo_precio_venta, co_moneda, co_oferta,
         ti_tipo_operacion, id_tipo_prod_plzo, pc_tasa_anual, fe_venc_linea,
         de_campania, pc_tasa_mensual, mo_cuota, mo_gas_fin_pri_cuo, mensaje,
         un_plazo_reembolso, un_plazo_vencimien, fe_vencimiento, in_linea,
         id_resultado, de_correlativo_fu, id_resultado_auto, de_dictaminado,
         cu_inic_sin_igv, pc_cu_inic_sin_igv, va_come_sin_igv, li_actual,
         cr_cancelable, nu_cuenta, ef_girador, fe_venc_let_factura,
         no_ruc_beneficiario, ve_por_dias, ti_bien_adquirir, pr_venta, me_pago,
         ve_carta, ef_aceptante, id_fase, pl_venc_dias, in_estado, id_usua_crea,
         fe_usua_crea, de_term_crea, id_usua_modi, fe_usua_modi, de_term_modi,
         id_producto_org, in_modificable,
         -- JLOPEZ 23/03/2018 - INTEGRA EL REPORTE DE CREDITO : INICIO
         orden, referencia, sub_prod_vinc
         -- JLOPEZ 23/03/2018 : FIN
         )
      VALUES
        (v_id_producto_nuevo, v_id_solicitud_nuevo, r_cat_producto.co_producto,
         r_cat_producto.co_sub_producto, r_cat_producto.mo_importe_solicit,
         r_cat_producto.mo_precio_venta, r_cat_producto.co_moneda,
         r_cat_producto.co_oferta, r_cat_producto.ti_tipo_operacion,
         r_cat_producto.id_tipo_prod_plzo, r_cat_producto.pc_tasa_anual,
         r_cat_producto.fe_venc_linea, r_cat_producto.de_campania,
         r_cat_producto.pc_tasa_mensual, r_cat_producto.mo_cuota,
         r_cat_producto.mo_gas_fin_pri_cuo, r_cat_producto.mensaje,
         r_cat_producto.un_plazo_reembolso, r_cat_producto.un_plazo_vencimien,
         r_cat_producto.fe_vencimiento, r_cat_producto.in_linea,
         r_cat_producto.id_resultado, r_cat_producto.de_correlativo_fu,
         r_cat_producto.id_resultado_auto, r_cat_producto.de_dictaminado,
         r_cat_producto.cu_inic_sin_igv, r_cat_producto.pc_cu_inic_sin_igv,
         r_cat_producto.va_come_sin_igv, r_cat_producto.li_actual,
         r_cat_producto.cr_cancelable, r_cat_producto.nu_cuenta,
         r_cat_producto.ef_girador, r_cat_producto.fe_venc_let_factura,
         r_cat_producto.no_ruc_beneficiario, r_cat_producto.ve_por_dias,
         r_cat_producto.ti_bien_adquirir, r_cat_producto.pr_venta,
         r_cat_producto.me_pago, r_cat_producto.ve_carta,
         r_cat_producto.ef_aceptante, r_cat_producto.id_fase,
         r_cat_producto.pl_venc_dias, r_cat_producto.in_estado,
         r_cat_producto.id_usua_crea, r_cat_producto.fe_usua_crea,
         r_cat_producto.de_term_crea, r_cat_producto.id_usua_modi, SYSDATE,
         r_cat_producto.de_term_modi, v_id_producto_org,
         r_cat_producto.in_modificable,
         -- JLOPEZ 23/03/2018 - INTEGRA EL REPORTE DE CREDITO : INICIO
         r_cat_producto.orden, r_cat_producto.referencia,
         r_cat_producto.sub_prod_vinc
         -- JLOPEZ 23/03/2018 : FIN
         );

    END LOOP;
    --<FIN: 2017-11-07>

    -- LNARVAEZ 20/03/2018 - M4_S3 - INTEGRACIÓN CON REPORTE DE CREDITO WEB - CONDICIONANTES: INICIO
    FOR r_cat_condicion IN c_cat_condicion(v_id_solicitud_original)
    LOOP

      v_id_condicion_nuevo := sq_condicion.nextval;
      v_id_condicion_original := r_cat_condicion.id_condicion;

      INSERT INTO cat_condicion (id_condicion,
                                 id_solicitud,
                                 co_tipo,
                                 co_condicion,
                                 in_prefijo,
                                 fe_condicion,
                                 tx_descripcion,
                                 in_estado,
                                 id_usua_crea,
                                 fe_usua_crea,
                                 de_term_crea,
                                 id_usua_modi,
                                 fe_usua_modi,
                                 de_term_modi)
      VALUES (v_id_condicion_nuevo,
              v_id_solicitud_nuevo,
              r_cat_condicion.co_tipo,
              r_cat_condicion.co_condicion,
              r_cat_condicion.in_prefijo,
              r_cat_condicion.fe_condicion,
              r_cat_condicion.tx_descripcion,
              r_cat_condicion.in_estado,
              r_cat_condicion.id_usua_crea,
              r_cat_condicion.fe_usua_crea,
              r_cat_condicion.de_term_crea,
              r_cat_condicion.id_usua_modi,
              r_cat_condicion.fe_usua_modi,
              r_cat_condicion.de_term_modi);

      FOR r_cat_condicion_producto IN c_cat_condicion_producto(v_id_condicion_original)
      LOOP

        v_id_producto_nuevo := v_t_cat_producto(r_cat_condicion_producto.id_producto);

        INSERT INTO cat_condicion_producto (id_condicion_producto,
                                            id_condicion,
                                            id_producto,
                                            in_estado,
                                            id_usua_crea,
                                            fe_usua_crea,
                                            de_term_crea,
                                            id_usua_modi,
                                            fe_usua_modi,
                                            de_term_modi)
        VALUES (sq_condicion_producto.nextval,
                v_id_condicion_nuevo,
                v_id_producto_nuevo,
                r_cat_condicion_producto.in_estado,
                r_cat_condicion_producto.id_usua_crea,
                r_cat_condicion_producto.fe_usua_crea,
                r_cat_condicion_producto.de_term_crea,
                r_cat_condicion_producto.id_usua_modi,
                r_cat_condicion_producto.fe_usua_modi,
                r_cat_condicion_producto.de_term_modi);

      END LOOP;

    END LOOP;
    -- LNARVAEZ 20/03/2018: FIN

    -- CAT_SOLICITUD_INFO
    INSERT INTO cat_solicitud_info
      (id_sol_dato, id_solicitud, in_recaudo, in_caudal, in_dsct_let_fac,
       in_visanet, in_cd_expor, in_pago_provee, in_trans_ext, in_pago_haber,
       in_factoring, in_cd_impor, tx_foda, tx_valoracion, tx_sustento_ope,
       tx_descripcion, tx_admision, tx_condicion_pre, tx_condicion_post,
       id_usua_crea, fe_usua_crea, de_term_crea, id_usua_modi, fe_usua_modi,
       de_term_modi, co_documento_acc, de_documento_acc, tx_foda_for,
       tx_foda_opo, tx_foda_deb, tx_foda_ame)
      SELECT sq_solicitud_info.nextval, v_id_solicitud_nuevo, in_recaudo,
             in_caudal, in_dsct_let_fac, in_visanet, in_cd_expor, in_pago_provee,
             in_trans_ext, in_pago_haber, in_factoring, in_cd_impor, tx_foda,
             tx_valoracion, tx_sustento_ope, tx_descripcion, tx_admision,
             tx_condicion_pre, tx_condicion_post, id_usua_crea, fe_usua_crea,
             de_term_crea, id_usua_modi, SYSDATE, de_term_modi, co_documento_acc,
             de_documento_acc, tx_foda_for, tx_foda_opo, tx_foda_deb,
             tx_foda_ame
        FROM cat_solicitud_info
       WHERE id_solicitud = v_id_solicitud_original;

    -- CAT_VISITA_VIGENTE
    INSERT INTO cat_visita_vigente
      (id_visita_vigente, id_solicitud, fe_ultima_visita,
       fe_actualizacion_visita, co_plazo_visita, de_codigo_central,
       id_usua_visita, de_usua_visita, id_usua_crea, fe_usua_crea, de_term_crea,
       id_usua_modi, fe_usua_modi, de_term_modi)
      SELECT sq_visita_vigente.nextval, v_id_solicitud_nuevo, fe_ultima_visita,
             fe_actualizacion_visita, co_plazo_visita, de_codigo_central,
             id_usua_visita, de_usua_visita, id_usua_crea, fe_usua_crea,
             de_term_crea, id_usua_modi, SYSDATE, de_term_modi
        FROM cat_visita_vigente
       WHERE id_solicitud = v_id_solicitud_original;

    -- DET_NAVEGABILIDAD
    INSERT INTO det_navegabilidad
      (id_navegabilidad, id_solicitud, in_edicion, in_tipo, in_contraste,
       in_info_cual, in_info_cuan, in_dependiente, id_usua_editor,
       fe_inicio_edicion, fe_final_edicion)
      SELECT sq_navegabilidad.nextval, v_id_solicitud_nuevo, in_edicion, in_tipo,
             in_contraste, in_info_cual, in_info_cuan, in_dependiente,
             id_usua_editor, fe_inicio_edicion, fe_final_edicion
        FROM det_navegabilidad
       WHERE id_solicitud = v_id_solicitud_original;

    -- MAE_NO_EXTRACTIVO
    FOR r_mae_no_extractivo IN c_mae_no_extractivo(v_id_solicitud_original)
    LOOP

      v_id_no_extractivo_original := r_mae_no_extractivo.id_no_extractivo;
      v_id_no_extractivo_nuevo    := sq_no_extractivo.nextval;

      INSERT INTO mae_no_extractivo
        (id_no_extractivo, id_solicitud, co_actividad, co_actividad_eva,
         de_eft_cert_sunat, de_eft_perio_sunat, mo_eft_vta_anu_sun,
         de_eft_rat_periodo, de_eft_rat_escala, pc_eft_pcje_delega,
         de_eft_rat_validado, de_eft_cert_visita, de_eft_per_visita,
         mo_eft_ven_men_vis, de_eft_cert_ajust, de_eft_perio_ajust,
         mo_eft_ven_anu_aju, id_eeff_actualizad, in_oferta_apro_mod,
         aa_djs_per_ventas, mo_djs_ventas, mo_djs_imp_rentas, pc_djs_indi_inform,
         mo_ef_caja, mo_ef_bancos, mo_ef_clientes, mo_ef_ot_ctas_cobr,
         mo_ef_ac_cp_rel_pr, mo_ef_inventarios, mo_ef_mer_prod_ter,
         mo_ef_prod_en_proc, mo_ef_mat_pr_en_su, mo_ef_existe_recib,
         mo_ef_tot_act_corr, mo_ef_ac_lp_rel_pr, mo_ef_inmuebles,
         mo_ef_maq_y_equipo, mo_ef_mueb_y_enser, mo_ef_otros_activos,
         mo_ef_cta_de_cdre, mo_ef_tot_ac_no_co, mo_ef_tot_activos,
         mo_ef_ba_de_fin_cp, mo_ef_proveedores, mo_ef_ot_ctas_p_cp,
         mo_ef_tot_pas_cte, mo_ef_ba_de_fin_lp, mo_ef_ctas_pa_rela,
         mo_ef_ot_ctas_p_lp, mo_ef_tot_p_no_cor, mo_ef_tot_pasivos,
         mo_ef_patrimonio, mo_ef_tot_pas_pat, mo_gp_vtas_t_ca_ri,
         mo_gp_cost_de_vent, mo_gp_gast_operati, mo_gp_util_operati,
         mo_gp_gas_financie, mo_gp_gas_familiar, mo_gp_otros_gastos,
         mo_gp_impuestos, mo_gp_util_disponi, mo_dic_ri_vigente,
         mo_dic_ri_aprobad, mo_dic_ri_total, mo_dic_gara_hipot,
         mo_dic_gara_liqui, mo_dic_gara_forma, mo_dic_gara_leasi,
         mo_dic_tot_garan, mo_dic_gara_adic, mo_dic_rat_cober, de_califica_dicta,
         mo_rf_liquidez, mo_rf_cap_trab, mo_rf_existencias, mo_rf_dias_cobro,
         mo_rf_dias_pago, mo_rf_ciclo_neg, mo_rf_pay_back, mo_rf_cobertura,
         pc_ifs_tipo_cam, mo_ifs_deuda_dire_ssff, mo_ifs_deuda_indi_ssff,
         mo_ib_deuda_dire, mo_ib_deuda_indi, in_djs_f0625,
         in_djs_criterio_experto, in_djs_bloq, in_no_contrastable,
         in_balance_bloq, id_usua_crea, fe_usua_crea, de_term_crea, id_usua_modi,
         fe_usua_modi, de_term_modi, in_visita, in_acti_actual,
         de_dic_escalamiento, in_reg_con, in_reg_inf_cua, in_reg_bal, in_reg_pdt,
         in_apr_mod
         -- WMENDOZA 23/03/2018 - PDT SUNAT - IDENTIFICADOR SI EL PDT ES CONTRASTABLE O NO CONTRASTABLE : INICIO
        , in_contraste
         -- WMENDOZA 23/03/2018: FIN
         -- DSANTOS 08/05/2018 - CANALIZACIÓN FLUJO BBVA : INICIO
        , in_updat_canaliz_host, mo_cfb_ic_cur_pen, mo_cfb_ic_ant_pen,
         mo_cfb_ic_cur_usd, mo_cfb_ic_ant_usd, mo_cfb_sm_cur_pen,
         mo_cfb_sm_ant_pen, mo_cfb_sm_cur_usd, mo_cfb_sm_ant_usd
         -- DSANTOS 08/05/2018: FIN
         )
      VALUES
        (v_id_no_extractivo_nuevo, v_id_solicitud_nuevo,
         r_mae_no_extractivo.co_actividad, r_mae_no_extractivo.co_actividad_eva,
         r_mae_no_extractivo.de_eft_cert_sunat,
         r_mae_no_extractivo.de_eft_perio_sunat,
         r_mae_no_extractivo.mo_eft_vta_anu_sun,
         r_mae_no_extractivo.de_eft_rat_periodo,
         r_mae_no_extractivo.de_eft_rat_escala,
         r_mae_no_extractivo.pc_eft_pcje_delega,
         r_mae_no_extractivo.de_eft_rat_validado,
         r_mae_no_extractivo.de_eft_cert_visita,
         r_mae_no_extractivo.de_eft_per_visita,
         r_mae_no_extractivo.mo_eft_ven_men_vis,
         r_mae_no_extractivo.de_eft_cert_ajust,
         r_mae_no_extractivo.de_eft_perio_ajust,
         r_mae_no_extractivo.mo_eft_ven_anu_aju,
         r_mae_no_extractivo.id_eeff_actualizad,
         r_mae_no_extractivo.in_oferta_apro_mod,
         r_mae_no_extractivo.aa_djs_per_ventas,
         r_mae_no_extractivo.mo_djs_ventas,
         r_mae_no_extractivo.mo_djs_imp_rentas,
         r_mae_no_extractivo.pc_djs_indi_inform, r_mae_no_extractivo.mo_ef_caja,
         r_mae_no_extractivo.mo_ef_bancos, r_mae_no_extractivo.mo_ef_clientes,
         r_mae_no_extractivo.mo_ef_ot_ctas_cobr,
         r_mae_no_extractivo.mo_ef_ac_cp_rel_pr,
         r_mae_no_extractivo.mo_ef_inventarios,
         r_mae_no_extractivo.mo_ef_mer_prod_ter,
         r_mae_no_extractivo.mo_ef_prod_en_proc,
         r_mae_no_extractivo.mo_ef_mat_pr_en_su,
         r_mae_no_extractivo.mo_ef_existe_recib,
         r_mae_no_extractivo.mo_ef_tot_act_corr,
         r_mae_no_extractivo.mo_ef_ac_lp_rel_pr,
         r_mae_no_extractivo.mo_ef_inmuebles,
         r_mae_no_extractivo.mo_ef_maq_y_equipo,
         r_mae_no_extractivo.mo_ef_mueb_y_enser,
         r_mae_no_extractivo.mo_ef_otros_activos,
         r_mae_no_extractivo.mo_ef_cta_de_cdre,
         r_mae_no_extractivo.mo_ef_tot_ac_no_co,
         r_mae_no_extractivo.mo_ef_tot_activos,
         r_mae_no_extractivo.mo_ef_ba_de_fin_cp,
         r_mae_no_extractivo.mo_ef_proveedores,
         r_mae_no_extractivo.mo_ef_ot_ctas_p_cp,
         r_mae_no_extractivo.mo_ef_tot_pas_cte,
         r_mae_no_extractivo.mo_ef_ba_de_fin_lp,
         r_mae_no_extractivo.mo_ef_ctas_pa_rela,
         r_mae_no_extractivo.mo_ef_ot_ctas_p_lp,
         r_mae_no_extractivo.mo_ef_tot_p_no_cor,
         r_mae_no_extractivo.mo_ef_tot_pasivos,
         r_mae_no_extractivo.mo_ef_patrimonio,
         r_mae_no_extractivo.mo_ef_tot_pas_pat,
         r_mae_no_extractivo.mo_gp_vtas_t_ca_ri,
         r_mae_no_extractivo.mo_gp_cost_de_vent,
         r_mae_no_extractivo.mo_gp_gast_operati,
         r_mae_no_extractivo.mo_gp_util_operati,
         r_mae_no_extractivo.mo_gp_gas_financie,
         r_mae_no_extractivo.mo_gp_gas_familiar,
         r_mae_no_extractivo.mo_gp_otros_gastos,
         r_mae_no_extractivo.mo_gp_impuestos,
         r_mae_no_extractivo.mo_gp_util_disponi,
         r_mae_no_extractivo.mo_dic_ri_vigente,
         r_mae_no_extractivo.mo_dic_ri_aprobad,
         r_mae_no_extractivo.mo_dic_ri_total,
         r_mae_no_extractivo.mo_dic_gara_hipot,
         r_mae_no_extractivo.mo_dic_gara_liqui,
         r_mae_no_extractivo.mo_dic_gara_forma,
         r_mae_no_extractivo.mo_dic_gara_leasi,
         r_mae_no_extractivo.mo_dic_tot_garan,
         r_mae_no_extractivo.mo_dic_gara_adic,
         r_mae_no_extractivo.mo_dic_rat_cober,
         r_mae_no_extractivo.de_califica_dicta,
         r_mae_no_extractivo.mo_rf_liquidez, r_mae_no_extractivo.mo_rf_cap_trab,
         r_mae_no_extractivo.mo_rf_existencias,
         r_mae_no_extractivo.mo_rf_dias_cobro,
         r_mae_no_extractivo.mo_rf_dias_pago,
         r_mae_no_extractivo.mo_rf_ciclo_neg, r_mae_no_extractivo.mo_rf_pay_back,
         r_mae_no_extractivo.mo_rf_cobertura,
         r_mae_no_extractivo.pc_ifs_tipo_cam,
         r_mae_no_extractivo.mo_ifs_deuda_dire_ssff,
         r_mae_no_extractivo.mo_ifs_deuda_indi_ssff,
         r_mae_no_extractivo.mo_ib_deuda_dire,
         r_mae_no_extractivo.mo_ib_deuda_indi, r_mae_no_extractivo.in_djs_f0625,
         r_mae_no_extractivo.in_djs_criterio_experto,
         r_mae_no_extractivo.in_djs_bloq, r_mae_no_extractivo.in_no_contrastable,
         r_mae_no_extractivo.in_balance_bloq, r_mae_no_extractivo.id_usua_crea,
         r_mae_no_extractivo.fe_usua_crea, r_mae_no_extractivo.de_term_crea,
         r_mae_no_extractivo.id_usua_modi, SYSDATE,
         r_mae_no_extractivo.de_term_modi, r_mae_no_extractivo.in_visita,
         r_mae_no_extractivo.in_acti_actual,
         r_mae_no_extractivo.de_dic_escalamiento, r_mae_no_extractivo.in_reg_con,
         r_mae_no_extractivo.in_reg_inf_cua, r_mae_no_extractivo.in_reg_bal,
         r_mae_no_extractivo.in_reg_pdt, r_mae_no_extractivo.in_apr_mod,
         -- WMENDOZA 23/03/2018 - PDT SUNAT - IDENTIFICADOR SI EL PDT ES CONTRASTABLE O NO CONTRASTABLE : INICIO
         r_mae_no_extractivo.in_contraste,
         -- WMENDOZA 23/03/2018: FIN
         -- DSANTOS 08/05/2018 - CANALIZACIÓN FLUJO BBVA : INICIO
         r_mae_no_extractivo.in_updat_canaliz_host,
         r_mae_no_extractivo.mo_cfb_ic_cur_pen,
         r_mae_no_extractivo.mo_cfb_ic_ant_pen,
         r_mae_no_extractivo.mo_cfb_ic_cur_usd,
         r_mae_no_extractivo.mo_cfb_ic_ant_usd,
         r_mae_no_extractivo.mo_cfb_sm_cur_pen,
         r_mae_no_extractivo.mo_cfb_sm_ant_pen,
         r_mae_no_extractivo.mo_cfb_sm_cur_usd,
         r_mae_no_extractivo.mo_cfb_sm_ant_usd
         -- DSANTOS 08/05/2018: FIN
         );

      -- CAT_PDT_SUNAT
      INSERT INTO cat_pdt_sunat
        (id_pdt_sunat, id_no_extractivo, aa_per_ventas, mm_per_mes,
         mo_ventas_mens, mo_imp_renta_men, mo_imp_renta_web, in_tipo_pdt,
         id_usua_crea, fe_usua_crea, de_term_crea, id_usua_modi, fe_usua_modi,
         de_term_modi)
        SELECT sq_pdt_sunat.nextval, v_id_no_extractivo_nuevo, aa_per_ventas,
               mm_per_mes, mo_ventas_mens, mo_imp_renta_men, mo_imp_renta_web,
               in_tipo_pdt, id_usua_crea, fe_usua_crea, de_term_crea,
               id_usua_modi, SYSDATE, de_term_modi
          FROM cat_pdt_sunat
         WHERE id_no_extractivo = v_id_no_extractivo_original;

    END LOOP;

    INSERT INTO cat_indicador_riesgo
      (id_cat_indicador_riesgo, id_solicitud, id_fase, co_ubigeo, de_ubigeo,
       co_actividad_cliente, de_actividad_cliente, co_etiqueta_cliente,
       de_etiqueta_cliente, de_razon_social, de_telefono, de_direccion, de_buro,
       de_correo, un_edad, un_experiencia, un_anti_cliente, mo_tipo_cambi,
       mo_deud_segu, co_grupo_economi, de_grupo_economi, un_num_enti,
       de_punt_rating, de_esca_rating, de_peri_rating, de_sobre_ende, de_impago,
       de_inelegible, de_info_banc_clas, mo_info_banc_deud,
       mo_info_banc_deud_cast, mo_info_banc_deud_directa,
       mo_info_banc_deud_indirecta, de_info_ssff_clas, de_info_ssff_peri,
       mo_info_ssff_deud, mo_info_ssff_deud_cast, mo_info_ssff_deud_directa,
       mo_info_ssff_deud_indirecta, mo_sal_ant_pen, mo_sal_ant_usd,
       mo_sal_cur_pen, mo_sal_cur_usd, mo_ing_ant_pen, mo_ing_ant_usd,
       mo_ing_cur_pen, mo_ing_cur_usd, mo_interes_curso, mo_comision_curso,
       mo_ordinario_curso, de_certificado_01, de_periodo_01, mo_venta_01,
       de_certificado_02, de_periodo_02, mo_venta_02, de_certificado_03,
       de_periodo_03, mo_venta_03, id_usua_crea, fe_usua_crea, de_term_crea,
       id_usua_modi, fe_usua_modi, de_term_modi, mo_info_ssff_deud_coac_sunat)
      SELECT sq_cat_indicador_riesgo.nextval, v_id_solicitud_nuevo, id_fase,
             co_ubigeo, de_ubigeo, co_actividad_cliente, de_actividad_cliente,
             co_etiqueta_cliente, de_etiqueta_cliente, de_razon_social,
             de_telefono, de_direccion, de_buro, de_correo, un_edad,
             un_experiencia, un_anti_cliente, mo_tipo_cambi, mo_deud_segu,
             co_grupo_economi, de_grupo_economi, un_num_enti, de_punt_rating,
             de_esca_rating, de_peri_rating, de_sobre_ende, de_impago,
             de_inelegible, de_info_banc_clas, mo_info_banc_deud,
             mo_info_banc_deud_cast, mo_info_banc_deud_directa,
             mo_info_banc_deud_indirecta, de_info_ssff_clas, de_info_ssff_peri,
             mo_info_ssff_deud, mo_info_ssff_deud_cast,
             mo_info_ssff_deud_directa, mo_info_ssff_deud_indirecta,
             mo_sal_ant_pen, mo_sal_ant_usd, mo_sal_cur_pen, mo_sal_cur_usd,
             mo_ing_ant_pen, mo_ing_ant_usd, mo_ing_cur_pen, mo_ing_cur_usd,
             mo_interes_curso, mo_comision_curso, mo_ordinario_curso,
             de_certificado_01, de_periodo_01, mo_venta_01, de_certificado_02,
             de_periodo_02, mo_venta_02, de_certificado_03, de_periodo_03,
             mo_venta_03, id_usua_crea, fe_usua_crea, de_term_crea, id_usua_modi,
             fe_usua_modi, de_term_modi, mo_info_ssff_deud_coac_sunat
        FROM cat_indicador_riesgo cir
       WHERE cir.id_solicitud = v_id_solicitud_original;

    actualizar_vinculo(p_co_solicitud_ext_nuevo, p_co_solicitud_ext_original,
                       o_result, o_mensaje);
    registrar_flujo(v_id_solicitud_nuevo, v_id_solicitud_original,
                    p_id_tipo_flujo_nuevo);

  EXCEPTION
    WHEN OTHERS THEN
      o_result  := 99;
      o_mensaje := SQLCODE || ' -ERROR.CLONAR(P_CO_SOLICITUD_EXT:' ||
                   p_co_solicitud_ext_nuevo || ')- ' || SQLERRM;
  END clonar_solicitud;

  PROCEDURE actualizar_vinculo(p_co_solicitud_ext_nuevo    VARCHAR2,
                               p_co_solicitud_ext_original VARCHAR2,
                               o_result                    OUT INT,
                               o_mensaje                   OUT VARCHAR2) IS

    v_id_solicitud_orig det_solicitud.id_solicitud%TYPE;
    v_id_solicitud_modi det_solicitud.id_solicitud%TYPE;
    v_id_aux            VARCHAR2(64);
    v_id_nuevo          VARCHAR2(640);

    CURSOR c_cat_garantia IS
      SELECT cg.rowid, cg.co_sub_producto, cp.id_fase
        FROM cat_garantia cg, cat_persona cp
       WHERE cg.id_persona = cp.id_persona
         AND cp.id_solicitud = v_id_solicitud_modi;

  BEGIN

    SELECT id_solicitud
      INTO v_id_solicitud_orig
      FROM det_solicitud
     WHERE co_solicitud_ext = p_co_solicitud_ext_original;

    SELECT id_solicitud
      INTO v_id_solicitud_modi
      FROM det_solicitud
     WHERE co_solicitud_ext = p_co_solicitud_ext_nuevo;

    -- Recorrer cada garantía para revisar la vinculación
    FOR r_cat_garantia IN c_cat_garantia
    LOOP

      IF r_cat_garantia.co_sub_producto IS NULL
      THEN
        -- Si la garantía no cuenta con subproductos, continuar
        CONTINUE;
      ELSE
        v_id_nuevo := '';

        -- Si la garantía cuenta con subproductos seleccionados, recorrer cada subproducto
        FOR r_split IN (SELECT regexp_substr(r_cat_garantia.co_sub_producto,
                                              '[^_]+', 1, rownum) co_sub_producto
                          FROM dual
                        CONNECT BY LEVEL <=
                                   length(regexp_replace(r_cat_garantia.co_sub_producto,
                                                         '[^_]+')) + 1)
        LOOP

          -- Se obteiene el correlativo FU del producto seleccionado
          SELECT de_correlativo_fu
            INTO v_id_aux
            FROM cat_producto
           WHERE id_producto = r_split.co_sub_producto;

          SELECT v_id_nuevo || '_' || id_producto
            INTO v_id_nuevo
            FROM cat_producto
           WHERE id_solicitud = v_id_solicitud_modi
             AND de_correlativo_fu = v_id_aux
             AND id_fase = r_cat_garantia.id_fase;

        END LOOP;
        v_id_nuevo := substr(v_id_nuevo, 2);

        -- Se actualiza las garantías con las nuevos produtos vinculados
        UPDATE cat_garantia
           SET co_sub_producto = v_id_nuevo
         WHERE ROWID = r_cat_garantia.rowid;

      END IF;
    END LOOP;

    o_result  := 1;
    o_mensaje := 'ok';

  EXCEPTION
    WHEN OTHERS THEN
      o_result  := 99;
      o_mensaje := SQLCODE || ' -ERROR.ACTUALIZAR_VINCULO(P_CO_SOLICITUD_EXT:' ||
                   p_co_solicitud_ext_nuevo || '.- ' || SQLERRM;

  END actualizar_vinculo;

  PROCEDURE registrar_flujo(p_id_solicitud_nuevo    NUMBER,
                            p_id_solicitud_original NUMBER,
                            p_id_tipo_flujo_nuevo   NUMBER) IS

    v_id_solicitud_actual       det_solicitud.id_solicitud%TYPE;
    v_id_solicitud_padre        det_solicitud.id_solicitud%TYPE;
    v_id_solicitud_original     det_solicitud.id_solicitud%TYPE;
    v_co_solicitud_ext_actual   det_solicitud.co_solicitud_ext%TYPE;
    v_co_solicitud_ext_padre    det_solicitud.co_solicitud_ext%TYPE;
    v_co_solicitud_ext_original det_solicitud.co_solicitud_ext%TYPE;
    v_id_tipo_flujo_actual      det_flujo.id_tipo_flujo_actual%TYPE;
    v_id_tipo_flujo_padre       det_flujo.id_tipo_flujo_padre%TYPE;
    v_numero_iteracion          det_flujo.numero_iteracion%TYPE;
    v_existe_flujo              NUMBER;

  BEGIN

    v_id_solicitud_actual  := p_id_solicitud_nuevo;
    v_id_solicitud_padre   := p_id_solicitud_original;
    v_id_tipo_flujo_actual := p_id_tipo_flujo_nuevo;

    -- Se verifica si existe el flujo
    SELECT COUNT(*)
      INTO v_existe_flujo
      FROM det_flujo
     WHERE id_solicitud_actual = v_id_solicitud_actual;

    IF v_existe_flujo > 0
    THEN
      --o_result  := 50;
      --o_mensaje := 'Error: El id solicitud: ' || v_id_solicitud_actual || ' ya existe.';
      RETURN;
    END IF;

    SELECT co_solicitud_ext
      INTO v_co_solicitud_ext_actual
      FROM det_solicitud
     WHERE id_solicitud = v_id_solicitud_actual;

    BEGIN
      SELECT co_solicitud_ext
        INTO v_co_solicitud_ext_padre
        FROM det_solicitud
       WHERE id_solicitud = v_id_solicitud_padre;
    EXCEPTION
      WHEN no_data_found THEN
        v_co_solicitud_ext_padre := NULL;
    END;

    BEGIN
      SELECT id_solicitud_original, co_solicitud_ext_original,
             id_tipo_flujo_actual
        INTO v_id_solicitud_original, v_co_solicitud_ext_original,
             v_id_tipo_flujo_padre
        FROM det_flujo
       WHERE id_solicitud_actual = v_id_solicitud_padre;
    EXCEPTION
      WHEN no_data_found THEN
        v_id_solicitud_original     := v_id_solicitud_actual;
        v_co_solicitud_ext_original := v_co_solicitud_ext_actual;
        v_id_tipo_flujo_padre       := NULL;
    END;

    SELECT COUNT(*) + 1
      INTO v_numero_iteracion
      FROM det_flujo
     WHERE id_solicitud_original = v_id_solicitud_original
       AND id_tipo_flujo_actual = v_id_tipo_flujo_actual;

    INSERT INTO det_flujo
      (id_flujo, id_solicitud_actual, id_solicitud_padre, id_solicitud_original,
       co_solicitud_ext_actual, co_solicitud_ext_padre,
       co_solicitud_ext_original, id_tipo_flujo_actual, id_tipo_flujo_padre,
       numero_iteracion)
    VALUES
      (sq_det_flujo.nextval, v_id_solicitud_actual, v_id_solicitud_padre,
       v_id_solicitud_original, v_co_solicitud_ext_actual,
       v_co_solicitud_ext_padre, v_co_solicitud_ext_original,
       v_id_tipo_flujo_actual, v_id_tipo_flujo_padre, v_numero_iteracion);

  END registrar_flujo;

  PROCEDURE registrar_flujo(p_id_solicitud_nuevo NUMBER) IS
    v_id_tipo_flujo det_flujo.id_tipo_flujo_actual%TYPE;
  BEGIN

    SELECT to_number(no_desc_valor)
      INTO v_id_tipo_flujo
      FROM rel_multitabla
     WHERE id_tabla = c_tipo_flujo_tabla
       AND no_desc_aux1 = c_tipo_flujo_normal;

    registrar_flujo(p_id_solicitud_nuevo, NULL, v_id_tipo_flujo);

  END registrar_flujo;

  PROCEDURE restaurar_solicitud(p_co_solicitud_ext VARCHAR2) IS
    v_id_solicitud     det_solicitud.id_solicitud%TYPE;
    v_co_solicitud_ext det_solicitud.co_solicitud_ext%TYPE;
    v_co_solicitud_ext_padre det_solicitud.co_solicitud_ext%TYPE;
    v_id_tipo_flujo_actual  det_flujo.id_tipo_flujo_actual%TYPE;
    c_tipo_flujo_reingreso CONSTANT NUMBER := 3;
  BEGIN
    -- obtiene el identificador de la solicitud a restaurar
    SELECT id_solicitud
      INTO v_id_solicitud
      FROM det_solicitud s
     WHERE s.co_solicitud_ext = p_co_solicitud_ext;

    -- obtiene el tipo de flujo actual
    SELECT id_tipo_flujo_actual
        INTO v_id_tipo_flujo_actual
    FROM det_flujo
    WHERE det_flujo.id_solicitud_actual = v_id_solicitud;

    -- verifica si el flujo actual es "reingresos"
    IF v_id_tipo_flujo_actual = c_tipo_flujo_reingreso THEN

      -- obtiene el código de la solicitud padre
      SELECT co_solicitud_ext_padre
          INTO v_co_solicitud_ext_padre
      FROM det_flujo
      WHERE det_flujo.id_solicitud_actual = v_id_solicitud;

      -- actualiza el estado de la solicitud de retorno
      UPDATE det_solicitud_retorno
      SET det_solicitud_retorno.in_finalizado     = '0',
          det_solicitud_retorno.id_comentario_ofi = null
      WHERE EXISTS(
              SELECT *
              FROM det_solicitud
              WHERE det_solicitud.id_solicitud = det_solicitud_retorno.id_solicitud
                AND det_solicitud.co_solicitud_ext = v_co_solicitud_ext_padre
                );

    END IF;

    -- elimina el cat_indicador_riesgo
    DELETE FROM cat_indicador_riesgo
     WHERE id_solicitud = v_id_solicitud;

    DELETE FROM cat_pdt_sunat
     WHERE id_no_extractivo IN
           (SELECT id_no_extractivo
              FROM mae_no_extractivo
             WHERE id_solicitud = v_id_solicitud);

    DELETE FROM mae_no_extractivo
     WHERE id_solicitud = v_id_solicitud;

    DELETE FROM det_navegabilidad
     WHERE id_solicitud = v_id_solicitud;

    DELETE FROM cat_solicitud_info
     WHERE id_solicitud = v_id_solicitud;

    DELETE FROM cat_visita_vigente
     WHERE id_solicitud = v_id_solicitud;

    DELETE FROM cat_info_adic_cliente
     WHERE id_solicitud = v_id_solicitud;

    DELETE FROM DET_MOTIVO
          WHERE id_solicitud_retorno IN (SELECT id_solicitud_retorno
                                           FROM DET_SOLICITUD_RETORNO
                                          WHERE id_solicitud = v_id_solicitud);

    DELETE FROM DET_SOLICITUD_RETORNO
     where id_solicitud = v_id_solicitud;

    DELETE FROM cat_comentario
     WHERE id_solicitud = v_id_solicitud;

    DELETE FROM cat_ingresos_prod_represent
     WHERE id_balance IN (SELECT id_balance
                            FROM cat_balance
                           WHERE id_solicitud = v_id_solicitud);

    DELETE FROM cat_ingresos_prod_no_represent
     WHERE id_balance IN (SELECT id_balance
                            FROM cat_balance
                           WHERE id_solicitud = v_id_solicitud);

    DELETE FROM cat_balance_serv_terc
     WHERE id_balance IN (SELECT id_balance
                            FROM cat_balance
                           WHERE id_solicitud = v_id_solicitud);

    DELETE FROM cat_balance_insumo_princ
     WHERE id_balance IN (SELECT id_balance
                            FROM cat_balance
                           WHERE id_solicitud = v_id_solicitud);

    DELETE FROM cat_balance_gasto_planilla
     WHERE id_balance IN (SELECT id_balance
                            FROM cat_balance
                           WHERE id_solicitud = v_id_solicitud);

    DELETE FROM cat_balance_gasto_personal
     WHERE id_balance IN (SELECT id_balance
                            FROM cat_balance
                           WHERE id_solicitud = v_id_solicitud);

    DELETE FROM cat_balance_gasto_operativo
     WHERE id_balance IN (SELECT id_balance
                            FROM cat_balance
                           WHERE id_solicitud = v_id_solicitud);

    DELETE FROM cat_balance_eeff_mueble_enser
     WHERE id_balance_eeff IN
           (SELECT id_balance_eeff
              FROM cat_balance_eeff
             WHERE id_balance IN
                   (SELECT id_balance
                      FROM cat_balance
                     WHERE id_solicitud = v_id_solicitud));

    DELETE FROM cat_balance_eeff_maqu_equ
     WHERE id_balance_eeff IN
           (SELECT id_balance_eeff
              FROM cat_balance_eeff
             WHERE id_balance IN
                   (SELECT id_balance
                      FROM cat_balance
                     WHERE id_solicitud = v_id_solicitud));

    DELETE FROM cat_balance_eeff_inmueble
     WHERE id_balance_eeff IN
           (SELECT id_balance_eeff
              FROM cat_balance_eeff
             WHERE id_balance IN
                   (SELECT id_balance
                      FROM cat_balance
                     WHERE id_solicitud = v_id_solicitud));

    DELETE FROM cat_balance_eeff
     WHERE id_balance IN (SELECT id_balance
                            FROM cat_balance
                           WHERE id_solicitud = v_id_solicitud);

    DELETE FROM cat_balance_costo_venta
     WHERE id_balance IN (SELECT id_balance
                            FROM cat_balance
                           WHERE id_solicitud = v_id_solicitud);

    DELETE FROM cat_balance
     WHERE id_solicitud = v_id_solicitud;

    DELETE FROM cal_transaccion_deuda
     WHERE id_solicitud = v_id_solicitud;

    DELETE FROM cal_periodo_deuda
     WHERE id_solicitud = v_id_solicitud;

    DELETE FROM cat_garantia
     WHERE id_persona IN (SELECT id_persona
                            FROM cat_persona
                           WHERE id_solicitud = v_id_solicitud);

    DELETE FROM cat_cp_contrato
     WHERE co_solicitud_ext = v_co_solicitud_ext;

    DELETE FROM cat_cp_producto
     WHERE id_persona IN (SELECT id_persona
                            FROM cat_persona
                           WHERE id_solicitud = v_id_solicitud);

    DELETE FROM cal_familia_deuda
     WHERE id_solicitud = v_id_solicitud;

    DELETE FROM cat_persona
     WHERE id_solicitud = v_id_solicitud;

    DELETE FROM cat_documento
     WHERE id_solicitud = v_id_solicitud;

    DELETE FROM cat_condicion_producto
     WHERE id_condicion IN
           (SELECT id_condicion
              FROM cat_condicion
             WHERE id_solicitud = v_id_solicitud);

    DELETE FROM cat_condicion
     WHERE id_solicitud = v_id_solicitud;

    DELETE FROM cat_producto
     WHERE id_solicitud = v_id_solicitud;

    DELETE FROM cat_campania
     WHERE id_info_cuali IN
           (SELECT id_info_cuali
              FROM cat_info_cuali_noextractivo
             WHERE id_solicitud = v_id_solicitud);

    DELETE FROM cat_direccion
     WHERE id_info_cuali IN
           (SELECT id_info_cuali
              FROM cat_info_cuali_noextractivo
             WHERE id_solicitud = v_id_solicitud);

    DELETE FROM cat_info_cuali_noextractivo
     WHERE id_solicitud = v_id_solicitud;

    DELETE FROM det_solicitud_rol_deta
     WHERE id_solicitud = v_id_solicitud;

    DELETE FROM det_flujo
     WHERE id_solicitud_actual = v_id_solicitud;

    DELETE FROM DET_DOCU_OBSE
     where id_solicitud = v_id_solicitud;

    DELETE FROM det_solicitud
     WHERE id_solicitud = v_id_solicitud;

  END restaurar_solicitud;

END ppym_navegabilidad;
/

-- Equivalencia entre fases
update REL_MULTITABLA set NO_DESC_AUX1 = 'Equivalencia' where  ID_TABLA = '051' and NO_DESC_VALOR is null;
update REL_MULTITABLA set NO_DESC_AUX1 = '2' where  ID_TABLA = '051' and NO_DESC_VALOR = '2';
update REL_MULTITABLA set NO_DESC_AUX1 = '3' where  ID_TABLA = '051' and NO_DESC_VALOR = '3';
update REL_MULTITABLA set NO_DESC_AUX1 = '4' where  ID_TABLA = '051' and NO_DESC_VALOR = '4';
update REL_MULTITABLA set NO_DESC_AUX1 = '3' where  ID_TABLA = '051' and NO_DESC_VALOR = '11';
update REL_MULTITABLA set NO_DESC_AUX1 = '3' where  ID_TABLA = '051' and NO_DESC_VALOR = '12';
update REL_MULTITABLA set NO_DESC_AUX1 = '3' where  ID_TABLA = '051' and NO_DESC_VALOR = '13';

INSERT INTO WPYMES.REL_MULTITABLA (ID_CODIGO, ID_TABLA, ID_ITEM, DE_DESCRIPCION, NO_DESC_VALOR, NO_DESC_AUX1, NO_DESC_AUX2, NO_DESC_AUX3, NO_DESC_AUX4, NO_DESC_AUX5, NO_DESC_AUX6, NO_DESC_AUX7, NO_DESC_AUX8, NO_DESC_AUX9, NO_DESC_AUX10, NO_DESC_AUX11, NO_DESC_AUX12, NO_DESC_AUX13, NO_DESC_AUX14, NO_DESC_AUX15, NO_DESC_AUX16, TX_INFORMATIVO, NO_OBSERVACION, DE_AREA, NO_IND_ESTADO, FE_INICIO_VIG, FE_FIN_VIG, ID_USUA_CREA, FE_USUA_CREA, DE_TERM_CREA, ID_USUA_MODI, FE_USUA_MODI, DE_TERM_MODI, NO_DESC_AUX17, NO_DESC_AUX18, NO_DESC_AUX19)
       VALUES (SQ_MULTITABLA.nextval, '150', '14', 'Servicio RIG - Producción', 'http://118.180.54.185:7817', 'Servicio Rating', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'DOMINIO_RIG', 'PRODUCCION', 'NEG', '1', sysdate, null, USER, sysdate, sys_context('userenv', 'IP_ADDRESS'), null, null, null, null, null, null);

INSERT INTO WPYMES.REL_MULTITABLA (ID_CODIGO, ID_TABLA, ID_ITEM, DE_DESCRIPCION, NO_DESC_VALOR, NO_DESC_AUX1, NO_DESC_AUX2, NO_DESC_AUX3, NO_DESC_AUX4, NO_DESC_AUX5, NO_DESC_AUX6, NO_DESC_AUX7, NO_DESC_AUX8, NO_DESC_AUX9, NO_DESC_AUX10, NO_DESC_AUX11, NO_DESC_AUX12, NO_DESC_AUX13, NO_DESC_AUX14, NO_DESC_AUX15, NO_DESC_AUX16, TX_INFORMATIVO, NO_OBSERVACION, DE_AREA, NO_IND_ESTADO, FE_INICIO_VIG, FE_FIN_VIG, ID_USUA_CREA, FE_USUA_CREA, DE_TERM_CREA, ID_USUA_MODI, FE_USUA_MODI, DE_TERM_MODI, NO_DESC_AUX17, NO_DESC_AUX18, NO_DESC_AUX19)
       VALUES (SQ_MULTITABLA.nextval, '151', '205', 'RIG8', '/ri/rig8/', 'Rig8', 'DOMINIO_RIG', 'SOA', 'http://bbva.com/ri/rig8/', 'RI_RIG8_Service', null, null, null, null, null, null, null, null, null, null, null, 'RIG8', 'LOCAL', 'NEG', '1', sysdate, null, USER, sysdate, sys_context('userenv', 'IP_ADDRESS'), null, null, null, null, null, null);

commit;