CREATE DATABASE SilesWeb
USE SilesWeb

CREATE TABLE TL_ADM_BAUT_ClasesAutorizaciones(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodAut VARCHAR (40) NOT NULL,
    sNomAut VARCHAR (40) NOT NULL,
    bRegAci BIT
);

CREATE TABLE TL_ADM_BCLC_ClaseCuentaContable(
    sClsCta	Texto VARCHAR ,
    sNomClsCta VARCHAR,
);

CREATE TABLE TL_ADM_BCLD_ClaseDocumento(
    sClsDoc VARCHAR (5),
    sNomClsDoc VARCHAR (30)
);

CREATE TABLE TL_ADM_BEOC_EstadoOrdenCompra(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodEstODC VARCHAR ,
    sNomEstODC  VARCHAR (10),
    bEstSel BIT,
    bRegAci BIT,
    nNroOrd FLOAT (10)
);

CREATE TABLE TL_ADM_BEOP_EstadoOrdenProduccion(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodEstODP VARCHAR ,
    sNomEstODP VARCHAR(20),
    bEstSel BIT,
    bRegAci BIT,
    nNroOrd FLOAT,
    bRegAct BIT
);

CREATE TABLE TL_ADM_BEPC_EstadoPeriodoContable(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodEstPdoCbe VARCHAR,
    sDesEstPdoCbe VARCHAR ,
    bRegAci BIT
);

CREATE TABLE TL_ADM_ERR_EstadoError(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodErr VARCHAR,
    sDesErr VARCHAR,
    sCodClr VARCHAR,
    sTipDes VARCHAR,
    bRegAci BIT
);

CREATE TABLE TL_ADM_BESD_EstadoDocumentos(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sEstDoc VARCHAR,
    sNomEstDoc VARCHAR,
    bEsdSel BIT,
    bRegAci BIT
);

CREATE TABLE TL_ADM_FMT_FormatoFecha(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sFmtHH VARCHAR,
    sFmtFec VARCHAR
);

CREATE TABLE TL_ADM_BLIM_ListaMateriales(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodLst VARCHAR,
    sDesLst VARCHAR,
    bRegAci BIT
);

CREATE TABLE TL_ADM_BODP_TiposOrdenesProduccion(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodDoc VARCHAR,
    sDesDoc VARCHAR,
    bOdpSel BIT,
    bRegAci BIT
);

CREATE TABLE TL_ADM_BROP_TiposRegistrosProduccion(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sTipMov VARCHAR,
    sNomMov VARCHAR,
    bSelxDef BIT,
    bRegAci BIT
);

CREATE TABLE TL_ADM_BTGE_TipoGestion(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sTipGes VARCHAR,
    bRegAci BIT
);

CREATE TABLE TL_ADM_BTID_TipoDocumentoCompra(
    sTipDoc VARCHAR,
    sNomTipDoc VARCHAR,
    bSelxDef BIT
);

CREATE TABLE TL_ADM_BTIR_TipoRevalorización(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sTipRev VARCHAR,
    sNomTipRev VARCHAR,
    bRegAci BIT
);

CREATE TABLE TL_ADM_BTIT_GruposTerceros(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodGruTer VARCHAR,
    sNomGruTer VARCHAR,
    bRegAci BIT
);

CREATE TABLE TL_ADM_BTIV_TipoVenta (
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sTipVen VARCHAR,
    sNomTipVen VARCHAR,
    bRegAci BIT
);

CREATE TABLE TL_ADM_BTRT_TipoRegistro_Tiempo(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodTipRegTie VARCHAR,
    sNomTipRegTie VARCHAR,
    bRegAci BIT
);

CREATE TABLE TL_ADM_BTUS_TipoUsuarios(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sNomUsr VARCHAR,
    bRegAci BIT
);

CREATE TABLE TL_ADM_CCLR_ConfiguracionColor(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodClr VARCHAR,
    sNomClr VARCHAR
);

CREATE TABLE TL_ADM_CDEM_ConfiguracionDatosEmpresa(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sNomCia VARCHAR,
    sDirCia VARCHAR,
    sCiuCia VARCHAR,
    sDepCia VARCHAR,
    sPaiCia VARCHAR,
    sRepLeg VARCHAR,
    sEmlCia VARCHAR,
    sTel1Cia VARCHAR,
    sTel2Cia VARCHAR,
    sFaxCia VARCHAR,
    sNitCia VARCHAR,
    sDigVer VARCHAR,
    nAnoSdoIniInv INT,
    bInvPte BIT,
    sTipInv VARCHAR,
    bCosXBod BIT,
    bMovSinCos BIT,
    sCodCia VARCHAR,
    bRegAci BIT
);

CREATE TABLE TL_ADM_CPAG_ParametrizacionesGenerales(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodCia VARCHAR,
    sCodUsr VARCHAR,
    bLmtCre BIT,
    sCndPagxDefCli VARCHAR,
    sMetPagxDefCli VARCHAR,
    sCndPagxDefPro VARCHAR,
    sMetPagxDefPro VARCHAR,
    sClrFrm VARCHAR,
    sTipFont VARCHAR,
    nTamFont FLOAT,
    sForFec VARCHAR,
    sForHor VARCHAR,
    nNroDecPre FLOAT,
    nNroDecCan FLOAT,
    nNroDecPor FLOAT,
    sCodAlmXDef VARCHAR,
    sCriCtaCtb VARCHAR,
    bVisItmIna BIT,
    sRutXls VARCHAR,
    sTipRegTie VARCHAR,
    sCodAlmCom VARCHAR,
    bPrnODPPla BIT,
    nPorGto FLOAT,
    nPorIto FLOAT,
    bRegAci BIT
);

CREATE TABLE TL_ADM_CUNI_ConfiguracionUnidad(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodUni VARCHAR,
    sNomUni VARCHAR,
    sCodUniBas VARCHAR,
    nUniBas FLOAT,
    bSelxDef BIT,
    bRegAci BIT
);

CREATE TABLE TL_ADM_FCOT_CodigosTrasacciones(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodTra VARCHAR,
    sNomTra VARCHAR
);

CREATE TABLE TL_ADM_PDGV_ParametrizacionDataGridView(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodFrm VARCHAR,
    sCodDgv VARCHAR,
    nColOri FLOAT,
    nNroCol FLOAT,
    sTitCol VARCHAR,
    sTipCol VARCHAR,
    bColxDef BIT,
    bVisible BIT,
    bReadOnly BIT,
    sNomCmp VARCHAR,
    nTamCmp FLOAT

);

CREATE TABLE TL_ADM_PEND_EncabezadoNumeracionDocumentos(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodDoc VARCHAR,
    sCodSer VARCHAR,
    sNomDoc VARCHAR,
    sTipMov VARCHAR,
    nNroIni FLOAT,
    nNroSig FLOAT,
    nNroFin FLOAT,
    sClsDoc VARCHAR,
    sCodTra VARCHAR,
    bRegAci BIT
);

CREATE TABLE TL_ADM_PFRM_FormulariosPrograma(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodFrm VARCHAR,
    sNomFrm VARCHAR,
    bFrmAut BIT,
    bFrmDGV BIT
);

CREATE TABLE TL_ADM_PGQLst_Consultas(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodStr VARCHAR,
    sNomStr VARCHAR
);

CREATE TABLE TL_ADM_PLND1_DetalleNumeracionDocumentos(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodDoc VARCHAR,
    sCodSer VARCHAR,
    nNroIni FLOAT,
    nNroSig FLOAT,
    nNroFin FLOAT,
    sCodTra VARCHAR,
    bRegAci BIT
);

CREATE TABLE TL_ADM_PQDG_EstructurasDataGridViewConsultas(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodStr VARCHAR,
    nColOri FLOAT,
    nNroCol FLOAT,
    sTitCol VARCHAR,
    sTipCol VARCHAR,
    bColxDef BIT,
    bVisible BIT,
    bReadOnly BIT,
    sNomCmp VARCHAR,
    nTamCmp FLOAT
);

CREATE TABLE TL_ADM_PRDG_EstructuraReportes(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodRpt VARCHAR,
    nColOri FLOAT,
    nNroCol FLOAT,
    sTitCol VARCHAR,
    sTipCol VARCHAR,
    bVisible BIT,
    sNomCmp VARCHAR,
    nTamCmp FLOAT
);

CREATE TABLE TL_ADM_TALM_Almacenes(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodAlm VARCHAR,
    sNomAlm VARCHAR,
    sUbiAlm VARCHAR,
    sCtaInv VARCHAR,
    sCtaCosVta VARCHAR,
    sCtaTrs VARCHAR,
    sCtaIng VARCHAR,
    sCtaDevVta VARCHAR,
    sCtaVrc VARCHAR,
    sCtaGto VARCHAR,
    sCtaDot VARCHAR,
    sCtaDifPre VARCHAR,
    sCtaRev VARCHAR,
    sCtaAumInv VARCHAR,
    sCtaRedInv VARCHAR,
    sCtaCom VARCHAR,
    sCtaDevCom VARCHAR,
    sCtaWIP VARCHAR,
    bSelxDef BIT,
    bRegAci BIT
);

CREATE TABLE TL_ADM_TANA_Analisis(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodAna VARCHAR,
    sNomAna VARCHAR,
    sCodTipAna VARCHAR,
    bRegAci BIT
);

CREATE TABLE TL_ADM_TANA_Analisis(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodAna VARCHAR,
    sNomAna VARCHAR,
    sCodTipAna VARCHAR,
    bRegAci BIT
);

CREATE TABLE TL_ADM_TASI_SaldosInicialesAno(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    nAnoSdoIni FLOAT,
    sNomTblEnc VARCHAR,
    sNomTblDet VARCHAR,
    sNomTblEncSdoIni VARCHAR,
    sNomTblDetSdoIni VARCHAR,
    dFecIniAno DATETIME,
    sEstPdo VARCHAR,
    bRegAci BIT
);

CREATE TABLE TL_ADM_TAUT_Autorizacion(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodUsr VARCHAR,
    sCodFrm VARCHAR,
    sCodAut VARCHAR
);
CREATE TABLE TL_ADM_TBCO_Bancos(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodBco VARCHAR,
    sDesBco VARCHAR
);

CREATE TABLE TL_ADM_TCCC_CriteriosCuentasContables(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCriCtaCbe VARCHAR,
    bRegAci BIT
);

CREATE TABLE TL_ADM_TCCO_CentroCostos(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodCco VARCHAR,
    sNomCco VARCHAR,
    bRegAci BIT
);

CREATE TABLE TL_ADM_TCIF_CostosIndirectosFabricacion(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodCIF VARCHAR,
    sNomCIF VARCHAR,
    sCodCtr VARCHAR,
    nTasCIF FLOAT,
    nVlrCIF FLOAT,
    nVlrCIFPpo FLOAT,
    nBasCIFPpo FLOAT,
    nVlrCIFRea FLOAT,
    bRegAci BIT,
    dFecIniPdo DATETIME,
    dFecFinPdo DATETIME
);

CREATE TABLE TL_ADM_TCLI_ClaseItems(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sClsItm VARCHAR,
    sDesItm VARCHAR,
    bRegAci BIT
);

CREATE TABLE TL_ADM_TCOP_CondicionesPago(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCndPag VARCHAR,
    sCanDia VARCHAR,
    sCodFecVto VARCHAR,
    bRegAci BIT
);

CREATE TABLE TL_ADM_TCTC_CodigoTramsaccionesContables(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL;
    sCodTraCtb VARCHAR;
    sDesTraCtb VARCHAR;
    bRegAci BIT
);

CREATE TABLE TL_ADM_TCTR_CentrosTrabajo(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodCtr VARCHAR,
    sNomCtr VARCHAR,
    sCodCco VARCHAR,
    nCosMODFij FLOAT,
    nCosMODVar FLOAT,
    nCosHorCpr FLOAT,
    nScoVar FLOAT,
    nCosHorVar FLOAT,
    nCosTotMOD FLOAT,
    nUniTieOpe FLOAT,
    nPreUni FLOAT,
    bRegAci BIT,
    dFecIniPdo DATETIME,
    dFecFinPdo DATETIME
);

CREATE TABLE TL_ADM_TECO_EjercicioContable(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodEco VARCHAR,
    sDesPdo VARCHAR,
    dFecini DATETIME,
    dFecFin DATETIME
);

CREATE TABLE TL_ADM_TGRI_GruposInventarios(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodGrp VARCHAR,
    sNomGrp VARCHAR,
    sCtaInv VARCHAR,
    sCtaCosVta VARCHAR,
    sCtaTrs VARCHAR,
    sCtaIng VARCHAR,
    sCtaDevVta VARCHAR,
    sCtaVrc VARCHAR,
    sCtaGto VARCHAR,
    sCtaDot VARCHAR,
    sCtaDifPre VARCHAR,
    sCtaRev VARCHAR,
    sCtaAumInv VARCHAR,
    sCtaRedInv VARCHAR,
    sCtaCom VARCHAR,
    sCtaDevCom VARCHAR,
    sCtaWIP VARCHAR,
    sSysInv VARCHAR,
    sMetAba VARCHAR,
    sMetVlz VARCHAR,
    bRegAci BIT
);

CREATE TABLE TL_ADM_TGRV_GrupoVenta(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodGrpVta VARCHAR,
    sNomGrpVta VARCHAR,
    bRegAci BIT
);

CREATE TABLE TL_ADM_TIVA_CodigosIva(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL;
    sCodIVA VARCHAR,
    sNomIVA VARCHAR,
    nPorIVA FLOAT,
    bVdoVta BIT,
    sCtaCbeVta VARCHAR,
    bVdoCom BIT,
    sCtaCbeCom VARCHAR,
    sClsDoc VARCHAR,
    bRegAci BIT
);

CREATE TABLE TL_ADM_TMEP_MetodosPago(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodMetPag VARCHAR,
    sNomMetPag VARCHAR,
    sClsPag VARCHAR,
    sMedPag VARCHAR,
    bRegAci BIT
);

CREATE TABLE TL_ADM_TMEV_MetodosValorizacion(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sMetVlz VARCHAR,
    bRegAci BIT
);

CREATE TABLE TL_ADM_TMON_Monedas(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL;
    sCodMon VARCHAR,
    sNomMon VARCHAR,
    sCodIntMon VARCHAR,
    bRegAci BIT
);

CREATE TABLE TL_ADM_TOPE_Operaciones(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodOpe VARCHAR,
    sNomOpe VARCHAR,
    sCodCtr VARCHAR,
    nTieOpe FLOAT,
    nUniTieOpe FLOAT,
    bRegAci BIT
);

CREATE TABLE TL_ADM_TPAC_ParametrizacionContable(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodEco VARCHAR,
    sComCta1 VARCHAR, 
    sVtaCta1 VARCHAR,
    sGrlCta1 VARCHAR,
    sInvCta1 VARCHAR
);

CREATE TABLE TL_ADM_TPCO_PeriodosContables(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodPdo VARCHAR,
    sNomPdo VARCHAR,
    sEstPdo VARCHAR,
    dFecIni DATETIME,
    dFecFin DATETIME,
    sCodAno VARCHAR,
    bRegAci BIT
);

CREATE TABLE TL_ADM_TPOP_Operarios(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodTer VARCHAR,
    sNomTer VARCHAR,
    sTipTer VARCHAR,
    sNitTer VARCHAR,
    sDigVer VARCHAR,
    sDirTer VARCHAR,
    sTel1Ter VARCHAR,
    sTel2Ter VARCHAR,
    sTelClr VARCHAR,
    sFax VARCHAR,
    sNomAlt VARCHAR,
    sCodGrpTer VARCHAR,
    sEmlTer VARCHAR,
    sNomCtc VARCHAR,
    sTipCtaCtb VARCHAR,
    sCodCtaCtb VARCHAR,
    sCndPag VARCHAR,
    sCodLstPre VARCHAR,
    nPorDto FLOAT,
    nLmtCre FLOAT,
    bAct BIT,
    bIna BIT,
    sCmn VARCHAR,
    nSlrTer FLOAT,
    nCosTotMOD FLOAT
    nUniTieOpe FLOAT,
    nPreUni FLOAT,
    bRegAci BIT
);

CREATE TABLE TL_ADM_TPUS_PasswordUsuarios(
    nId BIGINT NOT NULL,
    sCodUsr VARCHAR,
    sPwdUsr VARCHAR
);

CREATE TABLE TL_ADM_TRCH_CodigosRechazosInventario(
    nId BIGINT NOT NULL,
    sCodRch VARCHAR,
    sNomRch VARCHAR,
    bRegAci BIT
);

CREATE TABLE TL_ADM_TRET_CodigosRetefuente(
    nId BIGINT NOT NULL,
    sCodRet VARCHAR,
    sDesRet VARCHAR,
    sTipRet VARCHAR,
    sCatApl VARCHAR,
    nPorIto FLOAT,
    sTipBas VARCHAR,
    sCodCtaCbe VARCHAR,
    nBasMin FLOAT,
    bRegAci BIT
);

CREATE TABLE TL_ADM_TSGI_SubgruposInventarios(
    sCodSgr VARCHAR,
    sDesSgr VARCHAR,
    bRegAci BIT
);

CREATE TABLE TL_ADM_TTAC_TasaCambio(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    dFecTasUsd DATETIME,
    dTasCamUsd DATETIME,
    nTasCamEur FLOAT
);

CREATE TABLE TL_ADM_TTCM_TiposComponentes(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodTipCmt VARCHAR,
    sNomTipCmt VARCHAR,
    bRegAci BIT
);

CREATE TABLE TL_ADM_TTCO_TransaccionesContables(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodTra VARCHAR,
    sDesTra VARCHAR
);

CREATE TABLE TL_ADM_TTGC_GrupoContable(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodTra VARCHAR,
    sCodGrp VARCHAR,
    sCtaDeb VARCHAR,
    sCtaCre VARCHAR,
    bRegAci BIT 
);

CREATE TABLE TL_ADM_TTIA_TipoAnalisis(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodTipAna VARCHAR,
    sNomTipAna VARCHAR,
    bRegAci BIT
);

CREATE TABLE TL_ADM_TTIN_TransaccionesInventarios(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodTra VARCHAR,
    sNomTra VARCHAR,
    sTipMov VARCHAR,
    bRegAci BIT
);

CREATE TABLE TL_ADM_TUME_UnidadesMedida(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sUniMed VARCHAR,
    sNomMed VARCHAR,
    sCodVol VARCHAR,
    nVlrUme FLOAT,
    bRegAci BIT
);

CREATE TABLE TL_ADM_TUPE_UnidadesPeso(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sUniMed VARCHAR,
    sDesMed VARCHAR,
    nVlrMed FLOAT,
    bRegAci BIT
);

CREATE TABLE TL_ADM_TUSR_Usuario(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodUsr VARCHAR,
    sPwdUsr VARCHAR,
    sNomUsr VARCHAR,
    sTipUsr VARCHAR,
    sEmlUsr VARCHAR,
    sTel1Usr VARCHAR,
    sTel2Usr VARCHAR,
    bUsrBlq BIT,
    bRegAci BIT
);

CREATE TABLE TL_ADM_TVEN_Vendedores(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodVen VARCHAR,
    sNomVen VARCHAR,
    sCodZon VARCHAR,
    sTipVen VARCHAR,
    bRegAci BIT
);

CREATE TABLE TL_ADM_TZON_Zonas(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodZon VARCHAR,
    sNomZon VARCHAR,
    bRegAci BIT
);

CREATE TABLE TL_COM_ENOC_EncabezadoNotaCreditoCompras(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodDoc VARCHAR,
    nNroDoc FLOAT,
    sCodSer VARCHAR,
    sCodTra VARCHAR,
    sEstDoc VARCHAR,
    sTipMov VARCHAR,
    dFecCtb DATETIME,
    dFecDoc DATETIME,
    dFecVto DATETIME,
    dFecSys DATETIME,
    sCodTer VARCHAR,
    sNomTer VARCHAR,
    nPorDto FLOAT,
    sAlmOri VARCHAR,
    sDocRef VARCHAR,
    nTotBas FLOAT,
    nTotDto FLOAT,
    nTotGtoAdi FLOAT,
    nTotIvaCom FLOAT,
    nTotIvaVta FLOAT,
    nVlrRdd FLOAT,
    nTotDoc FLOAT,
    sCodDocBas VARCHAR,
    nNroDocBas FLOAT,
    sCndPag VARCHAR,
    sClsDoc VARCHAR,
    sTipDoc VARCHAR,
    sCodVen VARCHAR,
    sDirter VARCHAR,
    sCiuTer VARCHAR,
    sDepTer VARCHAR,
    sPaiTer VARCHAR,
    sCmn VARCHAR,
    sCodCteCtb VARCHAR,
    nNroCteCtb FLOAT,
    nIdFECCT FLOAT,
    sNitTer VARCHAR,
    sCodMon VARCHAR,
    sCodUsr VARCHAR,
    sCodAut VARCHAR,
    bPrp01 BIT,
    bPrp02 BIT,
    bPrp03 BIT,
);

CREATE TABLE TL_COM_ENOD_EncabezadoNotaDebitoCompras(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodDoc VARCHAR,
    nNroDoc FLOAT,
    sCodSer VARCHAR,
    sCodTra VARCHAR,
    sEstDoc VARCHAR,
    sTipMov VARCHAR,
    dFecCtb DATETIME,
    dFecDoc DATETIME,
    dFecVto DATETIME,
    dFecSys DATETIME,
    sCodTer VARCHAR,
    sNomTer VARCHAR,
    nPorDto FLOAT,
    sAlmOri VARCHAR,
    sDocRef VARCHAR,
    nTotBas FLOAT,
    nTotDto FLOAT,
    nTotGtoAdi FLOAT,
    nTotIvaCom FLOAT,
    nTotIvaVta FLOAT,
    nVlrRdd FLOAT,
    nTotDoc FLOAT,
    sCodDocBas VARCHAR,
    nNroDocBas FLOAT,
    sCndPag VARCHAR,
    sClsDoc VARCHAR,
    sTipDoc VARCHAR,
    sCodVen VARCHAR,
    sDirter VARCHAR,
    sCiuTer VARCHAR,
    sDepTer VARCHAR,
    sPaiTer VARCHAR,
    sCmn VARCHAR,
    sCodCteCtb VARCHAR,
    nNroCteCtb FLOAT,
    nIdFECCT FLOAT,
    sNitTer VARCHAR,
    sCodMon VARCHAR,
    sCodUsr VARCHAR,
    sCodAut VARCHAR,
    bPrp01 BIT,
    bPrp02 BIT,
    bPrp03 BIT
);

CREATE TABLE TL_COM_EODC_EncabezadoOrdenCompra(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodDoc VARCHAR,
    nNroDoc FLOAT,
    sCodSer VARCHAR,
    sCodTra VARCHAR,
    sEstDoc VARCHAR,
    sTipMov VARCHAR,
    dFecCtb DATETIME,
    dFecDoc DATETIME,
    dFecVto DATETIME,
    dFecSys DATETIME,
    sCodTer VARCHAR,
    sNomTer VARCHAR,
    nPorDto FLOAT,
    sAlmOri VARCHAR,
    sDocRef VARCHAR,
    nTotBas FLOAT,
    nTotDto FLOAT,
    nTotGtoAdi FLOAT,
    nTotIvaCom FLOAT,
    nTotIvaVta FLOAT, 
    nVlrRdd FLOAT,
    nTotDoc FLOAT,
    sCodDocBas VARCHAR,
    nNroDocBas FLOAT,
    sCndPag VARCHAR,
    sClsDoc VARCHAR,
    sTipDoc VARCHAR,
    sCodVen VARCHAR,
    sDirter VARCHAR,
    sCiuTer VARCHAR,
    sDepTer VARCHAR,
    sPaiTer VARCHAR,
    sCmn VARCHAR,
    sCodCteCtb VARCHAR,
    nNroCteCtb FLOAT,
    nIdFECCT BIGINT,
    sNitTer VARCHAR,
    sCodMon VARCHAR,
    sCodUsr VARCHAR,
    sCodAut VARCHAR,
    bPrp01 BIT,
    bPrp02 BIT,
    bPrp03 BIT
);
CREATE TABLE TL_COM_LFAP1_DetalleFacturaProveedores(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodDoc VARCHAR,
    nNroDoc FLOAT,
    sCodSer VARCHAR,
    sTipMov VARCHAR,
    sCodDocBas VARCHAR,
    nNroDocBas FLOAT,
    sCodSerBas VARCHAR,
    sCodItm VARCHAR,
    sNomItm VARCHAR,
    sNomAlt VARCHAR,
    sCodAlm VARCHAR,
    nCanItm FLOAT,
    sUniMedInv VARCHAR,
    nPreUni FLOAT,
    nVlrBas FLOAT,
    nPorDto FLOAT,
    nVlrDto FLOAT,
    nPreDto FLOAT,
    nVlrDtoLin FLOAT,
    sCodIva VARCHAR,
    nPorIva FLOAT,
    nVlrIva FLOAT,
    nVlrIvaLin FLOAT,
    nPreBru FLOAT,
    nTotLin FLOAT,
    nPorCms FLOAT,
    sCodCco VARCHAR,
    sTipLIM VARCHAR,
    sCodVen VARCHAR,
    nLinBas FLOAT,
    sCodPdo VARCHAR,
    sCodCta VARCHAR,
    bSolIto BIT,
    sCtaCosVta VARCHAR,
    bItmBlq BIT,
    sClsDoc VARCHAR,
    nTasCamUsd FLOAT,
    nPreUniUsd FLOAT,
    nVlrBasUsd FLOAT,
    sCodRch VARCHAR,
    sNroLot VARCHAR,
    nSdoCanLin FLOAT,
    nPreProm FLOAT
);
CREATE TABLE TL_COM_LNOC1_DetalleNotaCreditoCompras(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY  NOT NULL,
    sCodDoc VARCHAR,
    nNroDoc FLOAT,
    sCodSer VARCHAR,
    sTipMov VARCHAR,
    sCodDocBas VARCHAR,
    nNroDocBas FLOAT,
    sCodSerBas VARCHAR,
    sCodItm VARCHAR,
    sNomItm VARCHAR,
    sNomAlt VARCHAR,
    sCodAlm VARCHAR,
    nCanItm FLOAT,
    sUniMedInv VARCHAR,
    nPreUni FLOAT,
    nVlrBas FLOAT,
    nPorDto FLOAT,
    nVlrDto FLOAT,
    nPreDto FLOAT,
    nVlrDtoLin FLOAT,
    sCodIva VARCHAR,
    nPorIva FLOAT,
    nVlrIva FLOAT,
    nVlrIvaLin FLOAT,
    nPreBru FLOAT,
    nTotLin FLOAT,
    nPorCms FLOAT,
    sCodCco VARCHAR,
    sTipLIM VARCHAR,
    sCodVen VARCHAR,
    nLinBas FLOAT,
    sCodPdo VARCHAR,
    sCodCta VARCHAR,
    bSolIto BIT,
    sCtaCosVta VARCHAR,
    bItmBlq BIT,
    sClsDoc VARCHAR,
    nTasCamUsd FLOAT,
    nPreUniUsd FLOAT,
    nVlrBasUsd FLOAT,
    sCodRch VARCHAR,
    sNroLot VARCHAR,
    nSdoCanLin FLOAT,
    nPesProm FLOAT
);
CREATE TABLE TL_COM_LNOD1_DetalleNotaDebitoCompras(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodDoc VARCHAR,
    nNroDoc FLOAT,
    sCodSer VARCHAR,
    sTipMov VARCHAR,
    sCodDocBas VARCHAR,
    nNroDocBas FLOAT,
    sCodSerBas VARCHAR,
    sCodItm VARCHAR,
    sNomItm VARCHAR,
    sNomAlt VARCHAR,
    sCodAlm VARCHAR,
    nCanItm FLOAT,
    sUniMedInv VARCHAR,
    nPreUni FLOAT,
    nVlrBas FLOAT,
    nPorDto FLOAT,
    nVlrDto FLOAT,
    nPreDto FLOAT,
    nVlrDtoLin FLOAT,
    sCodIva VARCHAR,
    nPorIva FLOAT,
    nVlrIva FLOAT,
    nVlrIvaLin FLOAT,
    nPreBru FLOAT,
    nTotLin FLOAT,
    nPorCms FLOAT,
    sCodCco VARCHAR,
    sTipLIM VARCHAR,
    sCodVen VARCHAR,
    nLinBas FLOAT,
    sCodPdo VARCHAR,
    sCodCta VARCHAR,
    bSolIto BIT,
    sCtaCosVta VARCHAR,
    bItmBlq BIT,
    sClsDoc VARCHAR,
    nTasCamUsd FLOAT,
    nPreUniUsd FLOAT,
    nVlrBasUsd FLOAT,
    sCodRch VARCHAR,
    sNroLot VARCHAR,
    nSdoCanLin FLOAT,
    nPreProm FLOAT
);
CREATE TABLE TL_COM_LODC1_DetalleOrdenCompra(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    nIdCEODC BIGINT,
    sCodDoc VARCHAR,
    nNroDoc FLOAT,
    sCodSer VARCHAR,
    sTipMov VARCHAR,
    sCodDocBas VARCHAR,
    nNroDocBas FLOAT,
    sCodSerBas VARCHAR,
    sCodItm VARCHAR,
    sNomItm VARCHAR,
    sNomAlt VARCHAR,
    sCodAlm VARCHAR,
    nCanItm FLOAT,
    sUniMedInv VARCHAR,
    nPreUni FLOAT,
    nVlrBas FLOAT,
    nPorDto FLOAT,
    nVlrDto FLOAT,
    nPreDto FLOAT,
    nVlrDtoLin FLOAT,
    sCodIva VARCHAR,
    nPorIva FLOAT,
    nVlrIva FLOAT,
    nVlrIvaLin FLOAT,
    nPreBru FLOAT,
    nTotLin FLOAT,
    nPorCms FLOAT,
    sCodCco VARCHAR,
    sTipLIM VARCHAR,
    sCodVen VARCHAR,
    nLinBas FLOAT,
    sCodPdo VARCHAR,
    sCodCta VARCHAR,
    bSolIto BIT,
    sCtaCosVta VARCHAR,
    bItmBlq BIT,
    sClsDoc VARCHAR,
    nTasCamUsd FLOAT,
    nPreUniUsd FLOAT,
    nVlrBasUsd FLOAT,
    sCodRch VARCHAR,
    sNroLot VARCHAR,
    nSdoCanLin FLOAT,
    nPesProm FLOAT,
    sCodMon VARCHAR
);

CREATE TABLE TL_FIN_EMOC_EncabezadoModeloContable(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY  NOT NULL,
    sCodDoc VARCHAR,
    sCodSer VARCHAR,
    sTipMov VARCHAR,
    sClsDoc VARCHAR,
    sCodDocCtb VARCHAR,
    sCodSerCtb VARCHAR,
    sCodTra VARCHAR
);

CREATE TABLE TL_FIN_TNPU_PlanUnicoCuentasNiif(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodNIIF VARCHAR,
    sNomNIIF VARCHAR,
    sTipCta VARCHAR,
    sNivCta VARCHAR,
    sCodNIIFSup VARCHAR
);

CREATE TABLE TL_FIN_TNSA_NiifSaldosIniciales(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodNIIF VARCHAR,
    nSdoIni FLOAT,
    nSdoAct FLOAT
);

CREATE TABLE TL_FIN_TNSA_NiifSaldosTerceros(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodNIIF VARCHAR,
    sCodTer VARCHAR,
    sNitTer VARCHAR,
    nSdoIniTer FLOAT,
    nSdoTer FLOAT
);

CREATE TABLE TL_FIN_TPUC_PlanUnicoCuentas(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodCta VARCHAR,
    sNomCta VARCHAR,
    sCodCtaAlt VARCHAR,
    sNomAlt VARCHAR,
    sCodNIIF VARCHAR,
    bCtaFluCaj BIT,
    bCtaPpo BIT,
    sClsCta VARCHAR,
    nSdoIniCta FLOAT,
    nSdoFinCta FLOAT,
    sNivCta VARCHAR,
    sCodCtaSup VARCHAR,
    bCtaRcc BIT,
    sCodCtaRcc VARCHAR,
    bCtaCfd BIT,
    bCtaTer BIT,
    bCtaBlq BIT,
    bCtaMov BIT,
    bRegAci BIT
);
CREATE TABLE TL_FIN_TSAC_SaldosInicialesContables(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodCta VARCHAR,
    nSdoIniCta FLOAT,
    nSdoCta FLOAT,
);
CREATE TABLE TL_FIN_TSAC_SaldosInicialesTerceros(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodCta VARCHAR,
    sCodTer VARCHAR,
    sNitTer VARCHAR,
    nSdoIniTer FLOAT,
    nSdoTer FLOAT
);
CREATE TABLE TL_INV_EDMI_DatosMaestrosInventarios(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodItm VARCHAR,
    sCodBar VARCHAR,
    sNomItm VARCHAR,
    sNomAlt VARCHAR,
    sClsItm VARCHAR,
    sCodGrp VARCHAR,
    sCodSgr VARCHAR,
    bItmInv BIT,
    bItmVta BIT,
    bItmCom BIT,
    bIndIVA BIT,
    sCodAlt VARCHAR,
    sTipGes VARCHAR,
    bItmAct BIT,
    bItmIna VARCHAR,
    sCodTerPrv VARCHAR,
    sCodTerFte VARCHAR,
    sCodItmFte VARCHAR,
    sUniMedCom VARCHAR,
    nCanUniCom FLOAT,
    sUniEmpCom VARCHAR,
    nCanUniECom FLOAT,
    sCodItoCom VARCHAR,
    sUniMedVta VARCHAR,
    nCanUniVta FLOAT,
    sUniEmpVta VARCHAR,
    nCanUniEVta FLOAT,
    sCodItoVta VARCHAR,
    sCriCtaCbe VARCHAR,
    sUniMedInv VARCHAR,
    sMetVlz VARCHAR,
    nCosItm FLOAT,
    sCodAlm VARCHAR,
    nSdoInv FLOAT,
    sIvaCom VARCHAR,
    sIvaVta VARCHAR,
    sCodCco VARCHAR,
    sUbiAlm VARCHAR,
    bIndCan BIT,
    bIndCos BIT,
    bIndLibODP BIT,
    nUltPreEnt FLOAT,
    sCodAlmCom VARCHAR,
    sCodGrpVta VARCHAR,
    bIndCanRes BIT,
    bIndCanPry BIT,
    nSdoIni FLOAT,
    nSdoIniAno INT,
    nCanResODP FLOAT,
    nSdoFinDis FLOAT,
    nCanPedODC FLOAT,
    nSdoFinPry FLOAT,
    nLeadTime FLOAT
);

CREATE TABLE TL_INV_ELIP_ListaPrecios(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodLstPre VARCHAR,
    sDesLstPre VARCHAR
);

CREATE TABLE TL_INV_EMOV_EncabezadoMovimientoInventarios(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodDoc VARCHAR,
    nNroDoc FLOAT,
    sCodSer VARCHAR,
    sCodTra VARCHAR,
    sEstDoc VARCHAR,
    sTipMov VARCHAR,
    dFecCtb DATETIME,
    dFecDoc DATETIME,
    dFecVto DATETIME,
    dFecSys DATETIME,
    sCodTer VARCHAR,
    sNomTer VARCHAR,
    nPorDto FLOAT,
    sAlmOri VARCHAR,
    sDocRef VARCHAR,
    nTotBas FLOAT,
    nTotDto FLOAT,
    nTotGtoAdi FLOAT,
    nTotIvaCom FLOAT,
    nTotIvaVta FLOAT,
    nVlrRdd FLOAT,
    nTotDoc FLOAT,
    sCodDocBas VARCHAR,
    nNroDocBas FLOAT,
    sCndPag VARCHAR,
    sClsDoc VARCHAR,
    sTipDoc VARCHAR,
    sCodVen VARCHAR,
    sDirter VARCHAR,
    sCiuTer VARCHAR,
    sDepTer VARCHAR,
    sPaiTer VARCHAR,
    sCmn VARCHAR,
    sCodCteCtb VARCHAR,
    nNroCteCtb FLOAT,
    nIdFECCT FLOAT,
    sNitTer VARCHAR,
    sCodMon VARCHAR,
    sCodUsr VARCHAR,
    sCodAut VARCHAR,
    bPrp01 BIT,
    bPrp02 BIT,
    bPrp03 BIT,
    nIdATPCO FLOAT
);
CREATE TABLE TL_INV_EREV_EncabezadoRevalorizacionInventarios(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodDoc VARCHAR,
    nNroDoc FLOAT,
    sCodSer VARCHAR,
    sCodTra VARCHAR,
    sEstDoc VARCHAR,
    sTipRev VARCHAR,
    dFecCtb DATETIME,
    dFecDoc DATETIME,
    dFecVto DATETIME,
    dFecSys DATETIME,
    sDocRef VARCHAR,
    nTotDoc FLOAT,
    sClsDoc VARCHAR,
    sCmn VARCHAR,
    sCodCteCtb VARCHAR,
    nNroCteCtb FLOAT,
    nIdFECCT BIGINT,
    sCodMon VARCHAR,
    sCodUsr VARCHAR,
    sCodAut VARCHAR
);
CREATE TABLE TL_INV_LDMI1_DetalleItemsAlmacen(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    nIdIEDMI BIGINT,
    sCodItm VARCHAR,
    sCodAlm VARCHAR,
    nCanMin FLOAT,
    nCanMax FLOAT,
    nOrdMin FLOAT,
    nSdoAlm FLOAT,
    nPreUni FLOAT,
    nVlrTot FLOAT,
    nUltPreEnt FLOAT,
    sCtaInv VARCHAR,
    sCtaCosVta VARCHAR,
    sCtaTrs VARCHAR,
    sCtaIng VARCHAR,
    sCtaDevVta VARCHAR,
    sCtaVrc VARCHAR,
    sCtaGto VARCHAR,
    sCtaDot VARCHAR,
    sCtaDifPre VARCHAR,
    sCtaRev VARCHAR,
    sCtaAumInv VARCHAR,
    sCtaRedInv VARCHAR,
    sCtaCom VARCHAR,
    sCtaDevCom VARCHAR,
    sCtaWIP VARCHAR,
    nSdoIniAlm FLOAT,
    nSdoIniAnoAlm FLOAT,
    nCanResODPAlm FLOAT,
    nSdoFinDisAlm FLOAT
);
CREATE TABLE TL_INV_LDMI2_ProveedorItem(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodItm VARCHAR,
    sCodTer VARCHAR,
    sCodLstPre VARCHAR,
    nUltPreCom FLOAT,
    bTerDfl BIT
);
CREATE TABLE TL_INV_LLIP1_DetalleListaPrecios(
    sCodLstPre VARCHAR,
    sCodItm VARCHAR,
    sPreUni VARCHAR
);
CREATE TABLE TL_INV_LMOV1_DetalleMovimientoInventarios(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    nIdIEMOV BIGINT,
    sCodDoc VARCHAR,
    nNroDoc FLOAT,
    sCodSer VARCHAR,
    sTipMov VARCHAR,
    sCodDocBas VARCHAR,
    nNroDocBas FLOAT,
    sCodSerBas VARCHAR,
    sCodItm VARCHAR,
    sNomItm VARCHAR,
    sNomAlt VARCHAR,
    sCodAlm VARCHAR,
    nCanItm FLOAT,
    sUniMedInv VARCHAR,
    nPreUni FLOAT,
    nVlrBas FLOAT,
    nPorDto FLOAT,
    nVlrDto FLOAT,
    nPreDto FLOAT,
    nVlrDtoLin FLOAT,
    sCodIva VARCHAR,
    nPorIva FLOAT,
    nVlrIva FLOAT,
    nVlrIvaLin FLOAT,
    nPreBru FLOAT,
    nTotLin FLOAT,
    nPorCms FLOAT,
    sCodCco VARCHAR,
    sTipLIM VARCHAR,
    sCodVen VARCHAR,
    nLinBas FLOAT,
    sCodPdo VARCHAR,
    sCodCta VARCHAR,
    bSolIto BIT,
    sCtaCosVta VARCHAR,
    bItmBlq BIT,
    sClsDoc VARCHAR,
    nTasCamUsd FLOAT,
    nPreUniUsd FLOAT,
    nVlrBasUsd FLOAT,
    sCodRch VARCHAR,
    sNroLot VARCHAR,
    nSdoCanLin FLOAT,
    nPesProm FLOAT,
    sCodMon VARCHAR
);

CREATE TABLE TL_INV_LREV1_DetalleRevalorizacionInventario(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodDoc VARCHAR,
    nNroDoc FLOAT,
    sCodSer VARCHAR,
    sTipRev VARCHAR,
    sCodItm VARCHAR,
    sNomItm VARCHAR,
    sNomAlt VARCHAR,
    sCodAlm VARCHAR,
    nCanItm FLOAT,
    sUniMedInv VARCHAR,
    nPreUni FLOAT,
    nPreAnt FLOAT,
    nDifPre FLOAT,
    nTotLin FLOAT,
    sCodPdo VARCHAR,
    sCodCta VARCHAR,
    sCtaCosVta VARCHAR,
    sCtaAumInv VARCHAR,
    sCtaRedInv VARCHAR,
    sClsDoc VARCHAR
);

CREATE TABLE TL_PRD_EFOM_ListadoFormulasMaestras(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodItm VARCHAR,
    sNomItm VARCHAR,
    nCanLotStn FLOAT,
    sUniMedStn VARCHAR,
    nCanUniStn FLOAT,
    sUniMedInv VARCHAR,
    sTipLIM VARCHAR,
    sCodAlm VARCHAR,
    nPesItm FLOAT,
    nPorItm FLOAT,
    nTieItm FLOAT,
    nCIFItm FLOAT,
    nVlrItm FLOAT,
    bRegAci BIT,
    sRegSan VARCHAR,
    nPreVta FLOAT
);
CREATE TABLE TL_PRD_ELIM_ListadoMateriales(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodItm VARCHAR,
    sNomItm VARCHAR,
    nCanLotStn FLOAT,
    sUniMedStn VARCHAR,
    nCanUniStn FLOAT,
    sUniMedInv VARCHAR,
    sTipLIM VARCHAR,
    sCodAlm VARCHAR,
    nPesItm FLOAT,
    nPorItm FLOAT,
    nTieItm FLOAT,
    nCIFItm FLOAT,
    nVlrItm FLOAT,
    bRegAci BIT,
    sRegSan VARCHAR,
    nPreVta FLOAT,
    bIndCanRes BIT,
    bIndCanPry BIT
);
CREATE TABLE TL_PRD_EODP_EncabezadoOrdenProduccion(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodDoc VARCHAR,
    nNroDoc FLOAT,
    sCodSer VARCHAR,
    sNroLot VARCHAR,
    sEstOdp VARCHAR,
    sCodItm VARCHAR,
    sNomItm VARCHAR,
    nCanLotStn FLOAT,
    sUniMedStn VARCHAR,
    nCanUniStn FLOAT,
    nCanOdp FLOAT,
    nCanUniOdp FLOAT,
    sUniMedOdp VARCHAR,
    sUniMedInv VARCHAR,
    nCanUniEdp FLOAT,
    nTieItm FLOAT,
    nTotTieOdp FLOAT,
    nTotTieEdp FLOAT,
    sCodAlm VARCHAR,
    dFecEmi DATETIME,
    dFecIni DATETIME,
    dFecFin DATETIME,
    dFecSys DATETIME,
    sClsDoc VARCHAR,
    sCodUsr VARCHAR,
    sRegSan VARCHAR,
    sCmn VARCHAR,
    sCodItm1 VARCHAR,
    nCanOdp1 FLOAT,
    sCodItm2 VARCHAR,
    nCanOdp2 FLOAT,
    sCodItm3 VARCHAR,
    nCanOdp3 FLOAT,
    sCodItm4 VARCHAR,
    nCanOdp4 FLOAT,
    bIndCanRes BIT,
    bIndCanPry BIT
);
CREATE TABLE TL_PRD_ERCI_RegistroCif(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodDoc VARCHAR,
    nNroDoc FLOAT,
    sCodSer VARCHAR,
    sTipMov VARCHAR,
    sEstDoc VARCHAR,
    dFecCtb DATETIME,
    dFecDoc DATETIME,
    dFecVto DATETIME,
    dFecSys DATETIME,
    sCodTer VARCHAR,
    sNomTer VARCHAR,
    sDocRef VARCHAR,
    nTotHHCIF FLOAT,
    nTotMMCIF FLOAT,
    nTotTieCIF FLOAT,
    nTotDoc FLOAT,
    sCodCte VARCHAR,
    nNroCte FLOAT,
    sClsDoc VARCHAR,
    sCmn VARCHAR,
    sCodCteCtb VARCHAR,
    nNroCteCtb FLOAT,
    nIdFECCT BIGINT,
    sNitTer VARCHAR,
    sTipDoc VARCHAR,
    sCodUsr VARCHAR
    );
CREATE TABLE TL_PRD_EROP_RegistroOperaciones(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodDoc VARCHAR,
    nNroDoc FLOAT,
    sCodSer VARCHAR,
    sTipMov VARCHAR,
    sEstDoc VARCHAR,
    dFecCtb DATETIME,
    dFecDoc DATETIME,
    dFecVto DATETIME,
    dFecSys DATETIME,
    sCodTer VARCHAR,
    nIdATPOP BIGINT,
    sNomTer VARCHAR,
    sDocRef VARCHAR,
    nTotHHCns FLOAT,
    nTotMMCns FLOAT,
    nTotTieCns FLOAT,
    nTotDoc FLOAT,
    sCodCte VARCHAR,
    nNroCte FLOAT,
    sClsDoc VARCHAR,
    sCmn VARCHAR,
    sCodCteCtb VARCHAR,
    nNroCteCtb FLOAT,
    nIdFECCT BIGINT,
    sNitTer VARCHAR,
    sTipDoc VARCHAR,
    sCodUsr VARCHAR,
    bPrp01 BIT,
    bPrp02 BIT,
    bPrp03 BIT,
    nTotHHOpe FLOAT,
    nTotMMOpe FLOAT,
    nTotTieOpe FLOAT,
    nTotHHAlz FLOAT,
    nTotMMAlz FLOAT,
    nTotTieAlz FLOAT,
    nTotHHCaf FLOAT,
    nTotMMCaf FLOAT,
    nTotTieCaf FLOAT
);

CREATE TABLE TL_PRD_LFOM1_DetalleComponentesFormulasMaestras(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    nIdPEFOM BIGINT,
    sCodItm VARCHAR,
    sCodCmt VARCHAR,
    nCanCmt FLOAT,
    nPesCmt FLOAT,
    nPorCmt FLOAT,
    nPreUni FLOAT,
    sCodAlmCns VARCHAR,
    sUniMedInv VARCHAR,
    sTipCmt VARCHAR,
    sCodCmtAlt VARCHAR,
    bItmAct BIT
);

CREATE TABLE TL_PRD_LFOM2_DetalleComponentesFormulasMaestras(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    nIdPEFOM BIGINT,
    sCodItm VARCHAR,
    nPosOpe FLOAT,
    sCodOpe VARCHAR,
    sCodCtr VARCHAR,
    nTieOpe FLOAT,
    nPorOpe FLOAT,
    nPreUni FLOAT,
    nCanBasPro FLOAT,
    nTotTieOpe FLOAT,
    bItmAct BIT
);

CREATE TABLE TL_PRD_LFOM3_DetalleCostosIndirectosFabricacionFormulasMaestras(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    nIdPEFOM BIGINT,
    sCodItm VARCHAR,
    sCodCIF VARCHAR,
    sCodCtr VARCHAR,
    nVlrCIFRea FLOAT,
    nTasCIF FLOAT,
    bItmAct BIT
);

CREATE TABLE TL_PRD_LFOM5_DetalleAnalisis(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    nIdPEFOM BIGINT,
    sCodItm VARCHAR,
    sCodAna VARCHAR,
    sDesAna VARCHAR,
    sCodTipAna VARCHAR,
    bItmAct BIT
);

CREATE TABLE TL_PRD_LLIM1_DetalleListadoFormulaMaestra(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    nIdPELIM BIGINT,
    sCodItm VARCHAR,
    sCodCmt VARCHAR,
    nCanCmt FLOAT,
    nPesCmt FLOAT,
    nPorCmt FLOAT,
    nPreUni FLOAT,
    sCodAlmCns VARCHAR,
    sUniMedInv VARCHAR,
    sTipCmt VARCHAR,
    sCodCmtAlt VARCHAR,
    bItmAct BIT
);

CREATE TABLE TL_PRD_LLIM2_DetalleListadoMateriales(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    nIdPELIM BIGINT,
    sCodItm VARCHAR,
    nPosOpe FLOAT,
    sCodOpe VARCHAR,
    sCodCtr VARCHAR,
    nTieOpe FLOAT,
    nPorOpe FLOAT,
    nPreUni FLOAT,
    nCanBasPro FLOAT,
    nTotTieOpe FLOAT,
    bItmAct BIT
);

CREATE TABLE TL_PRD_LLIM3_DetalleListadoMaterialesOperaciones(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    nIdPELIM BIGINT,
    sCodItm VARCHAR,
    sCodCIF VARCHAR,
    sCodCtr VARCHAR,
    nVlrCIFRea FLOAT,
    nTasCIF FLOAT,
    bItmAct BIT
);

CREATE TABLE TL_PRD_LLIM4_DetalleListadoMaterialesCIF(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    nIdPELIM BIGINT,
    sCodItm VARCHAR,
    sCodCmt VARCHAR,
    nCanCmt FLOAT,
    nPesCmt FLOAT,
    nPorCmt FLOAT,
    nPreUni FLOAT,
    sCodAlmCns VARCHAR,
    sUniMedInv VARCHAR,
    sTipCmt VARCHAR,
    sCodCmtAlt VARCHAR,
    bItmAct BIT
);

CREATE TABLE TL_PRD_LODP1_DetalleOrdenProduccion(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    nIdPEODP BIGINT,
    sCodDoc VARCHAR,
    nNroDoc FLOAT,
    sCodSer VARCHAR,
    sCodItm VARCHAR,
    sCodCmt VARCHAR,
    sUniMedInv VARCHAR,
    nCanCmt FLOAT,
    nCanReq FLOAT,
    nCanCns FLOAT,
    nPreUni FLOAT,
    nVlrTotReq FLOAT,
    nVlrTotCns FLOAT,
    sCodAlmCns VARCHAR,
    sCodCmtAlt VARCHAR,
    nVrcCan FLOAT,
    nPorVrnCan FLOAT,
    nVlrVrcCan FLOAT,
    bRegAci BIT
);

CREATE TABLE TL_PRD_LODP2_DetalleOrdenOperacion(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    nIdPEODP BIGINT,
    sCodDoc VARCHAR,
    nNroDoc FLOAT,
    sCodSer VARCHAR,
    sCodItm VARCHAR,
    nPosOpe FLOAT,
    sCodOpe VARCHAR,
    sCodCtr VARCHAR,
    nTieOpe FLOAT,
    nTieReq FLOAT,
    nTieCns FLOAT,
    nPreUni FLOAT,
    nVlrTotReq FLOAT,
    nVlrTotCns FLOAT,
    nPorOpeReq FLOAT,
    nPorOpeCns FLOAT,
    nVrcPorOpe FLOAT
);

CREATE TABLE TL_PRD_LODP3_DetalleCIF(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    nIdPEODP BIGINT,
    sCodDoc VARCHAR,
    nNroDoc FLOAT,
    sCodSer VARCHAR,
    sCodItm VARCHAR,
    sCodCIF VARCHAR,
    sCodCtr VARCHAR,
    nVlrCIFRea FLOAT,
    nVlrReq FLOAT,
    nVlrCns FLOAT,
    nTasCIF FLOAT,
    nVlrTotReq FLOAT,
    nVlrTotCns FLOAT,
    nVrcCIF FLOAT,
    nPorVrcCIF FLOAT,
    nVlrVrcCIF FLOAT
);
CREATE TABLE TL_PRD_LODP4_ResumenOP(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    nIdPEODP BIGINT,
    sCodDoc VARCHAR,
    nNroDoc FLOAT,
    sCodSer VARCHAR,
    sCodItm VARCHAR,
    nCanOdp FLOAT,
    nCanUniOdp FLOAT,
    nCanUniEdp FLOAT,
    nVrcCan FLOAT,
    nVlrTotReqMPD FLOAT,
    nVlrTotCnsMPD FLOAT,
    nVrcTotMPD FLOAT,
    nTotTieReqMOD FLOAT,
    nTotTieCnsMOD FLOAT,
    nVrcTieMOD FLOAT,
    nVlrTotReqMOD FLOAT,
    nVlrTotCnsMOD FLOAT,
    nVrcTotMOD FLOAT,
    nTotTasReqCIF FLOAT,
    nTotTasCnsCIF FLOAT,
    nVrcTasCIF FLOAT,
    nVlrTotReqCIF FLOAT,
    nVlrTotCnsCIF FLOAT,
    nVrcTotCIF FLOAT,
    nCosTotReq FLOAT,
    nCosTotCns FLOAT,
    nVrcCosTot FLOAT,
    nTotUniReq FLOAT,
    nTotUniCns FLOAT,
    nVrcUni FLOAT,
    nCosUniReq FLOAT,
    nCosUniCns FLOAT,
    nVrcCosUni FLOAT,
    nPreVta FLOAT,
    nPorGto FLOAT,
    nPorIto FLOAT,
);
CREATE TABLE TL_PRD_LODP5_DetalleAnalisis(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    nIdPEODP BIGINT,
    sCodDoc VARCHAR,
    nNroDoc FLOAT,
    sCodSer VARCHAR,
    sCodItm VARCHAR,
    sCodCmt VARCHAR,
    sCodAna VARCHAR,
    sCodTipAna VARCHAR
);
CREATE TABLE TL_PRD_LRCI1_DetalleRegistroCIF(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodDoc VARCHAR,
    nNroDoc FLOAT,
    sCodSer VARCHAR,
    sTipMov VARCHAR,
    sCodDocBas VARCHAR,
    nNroDocBas FLOAT,
    sCodItm VARCHAR,
    nCanItm FLOAT,
    sCodCIF VARCHAR,
    sNomCIF VARCHAR,
    nHHIni INT,
    nMMIni INT,
    nHHFin INT,
    nMMFin INT,
    nHHCns INT,
    nMMCns INT,
    nTieCns FLOAT,
    nTieReq FLOAT,
    nPreUni FLOAT,
    nTotLin FLOAT,
    sCodCco VARCHAR,
    nLinBas FLOAT,
    sCodPdo VARCHAR,
    sCodCta VARCHAR,
    sCtaCosVta VARCHAR,
    bItmBlq BIT,
    sClsDoc VARCHAR,
    nCanOpeTer FLOAT,
    sCodCtr VARCHAR
);

CREATE TABLE TL_PRD_LROP1_DetalleRegistroOperacionesProduccion(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    nIdPEROP BIGINT,
    sCodDoc VARCHAR,
    nNroDoc FLOAT,
    sCodSer VARCHAR,
    sTipMov VARCHAR,
    sCodDocBas VARCHAR,
    sCodSerBas VARCHAR,
    nNroDocBas FLOAT,
    sCodItm VARCHAR,
    nCanItm FLOAT,
    sCodOpe VARCHAR,
    sNomOpe VARCHAR,
    nHHIniOpe INT,
    nMMIniOpe INT,
    nHHFinOpe INT,
    nMMFinOpe INT,
    nHHCnsOpe INT,
    nMMCnsOpe INT,
    nTieCnsOpe FLOAT,
    nHHCns INT,
    nMMCns FLOAT,
    nTieCns FLOAT,
    nTieReq FLOAT,
    nPreUni FLOAT,
    nTotLin FLOAT,
    sCodCco VARCHAR,
    nLinBas FLOAT,
    sCodPdo VARCHAR,
    sCodCta VARCHAR,
    sCtaCosVta VARCHAR,
    bItmBlq BIT,
    sClsDoc VARCHAR,
    nCanOpeTer FLOAT,
    sCodCtr VARCHAR,
    nHHIniAlz FLOAT,
    nMMIniAlz FLOAT,
    nHHFinAlz FLOAT,
    nMMFinAlz FLOAT,
    nHHCnsAlz FLOAT,
    nMMCnsAlz FLOAT,
    nTieCnsAlz FLOAT,
    nHHIniCaf FLOAT,
    nMMIniCaf FLOAT,
    nHHFinCaf INT,
    nMMFinCaf INT,
    nHHCnsCaf INT,
    nMMCnsCaf INT,
    nTieCnsCaf FLOAT
);

CREATE TABLE TL_TER_EDMT_DatosMaestrosTerceros(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodTer VARCHAR,
    sNomTer VARCHAR,
    sTipTer VARCHAR,
    sNitTer VARCHAR,
    sDigVer VARCHAR,
    sDirTer VARCHAR,
    sTel1Ter VARCHAR,
    sTel2Ter VARCHAR,
    sTelCll VARCHAR,
    sFax VARCHAR,
    sNomAlt VARCHAR,
    sCodGrpTer VARCHAR,
    sEmlTer VARCHAR,
    sNomCtc VARCHAR,
    sTipCtaCtb VARCHAR,
    sCodCtaCtb VARCHAR,
    sCndPag VARCHAR,
    sCodLstPre VARCHAR,
    nPorDto FLOAT,
    nLmtCre FLOAT,
    bAct BIT,
    bIna BIT,
    sCmn VARCHAR,
);
CREATE TABLE TL_TER_LDMT1_DireccionTerceros(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodTer VARCHAR,
    sDirTer VARCHAR,
    sCiuTer VARCHAR,
    sDepTer VARCHAR,
    sPaiTer VARCHAR,
    bDirDfl BIT
);
CREATE TABLE TL_TER_LDMT2_RetefuenteTerceros(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodTer VARCHAR,
    sCodRet VARCHAR,
    bAct BIT
);
CREATE TABLE TL_TER_LDMT3_IvaTerceros(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodTer VARCHAR,
    sCodIVA VARCHAR,
    bAct BIT
);
CREATE TABLE TL_TER_LDMT4_DatosMediosManeticos(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodTer VARCHAR,
    sMMTipDoc VARCHAR,
    sMMNomTer VARCHAR,
    sMMPriNom VARCHAR,
    sMMSegNom VARCHAR,
    sMMPriApe VARCHAR,
    sMMSegApe VARCHAR,
    sMMDirTer VARCHAR,
    sMMCodDep VARCHAR,
    sMMCodCiu VARCHAR,
    sMMCodPai VARCHAR,
    dMMFecRUT DATETIME,
    sMMCodAcvPpl VARCHAR,
    sMMCodAcvAlt VARCHAR
);
CREATE TABLE TL_VEN_EFAC_EncabezadoFacturaClientes(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodDoc VARCHAR,
    nNroDoc FLOAT,
    sCodSer VARCHAR,
    sCodTra VARCHAR,
    sEstDoc VARCHAR,
    sTipMov VARCHAR,
    dFecCtb DATETIME,
    dFecDoc DATETIME,
    dFecVto DATETIME,
    dFecSys DATETIME,
    sCodTer VARCHAR,
    sNomTer VARCHAR,
    nPorDto FLOAT,
    sAlmOri VARCHAR,
    sDocRef VARCHAR,
    nTotBas FLOAT,
    nTotDto FLOAT,
    nTotGtoAdi FLOAT,
    nTotIvaCom FLOAT,
    nTotIvaVta FLOAT,
    nVlrRdd FLOAT,
    nTotDoc FLOAT,
    sCodDocBas VARCHAR,
    nNroDocBas FLOAT,
    sCndPag VARCHAR,
    sClsDoc VARCHAR,
    sTipDoc VARCHAR,
    sCodVen VARCHAR,
    sDirter VARCHAR,
    sCiuTer VARCHAR,
    sDepTer VARCHAR,
    sPaiTer VARCHAR,
    sCmn VARCHAR,
    sCodCteCtb VARCHAR,
    nNroCteCtb FLOAT,
    nIdFECCT BIGINT,
    sNitTer VARCHAR,
    sCodMon VARCHAR,
    sCodUsr VARCHAR,
    sCodAut VARCHAR,
    bPrp01 BIT,
    bPrp02 BIT,
    bPrp03 BIT
);
CREATE TABLE TL_VEN_ENOC_EncabezadoNotaCreditoClientes(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodDoc VARCHAR,
    nNroDoc FLOAT,
    sCodSer VARCHAR,
    sCodTra VARCHAR,
    sEstDoc VARCHAR,
    sTipMov VARCHAR,
    dFecCtb DATETIME,
    dFecDoc DATETIME,
    dFecVto DATETIME.
    dFecSys DATETIME,
    sCodTer VARCHAR,
    sNomTer VARCHAR,
    nPorDto FLOAT,
    sAlmOri VARCHAR,
    sDocRef VARCHAR,
    nTotBas FLOAT,
    nTotDto FLOAT,
    nTotGtoAdi FLOAT,
    nTotIvaCom FLOAT,
    nTotIvaVta FLOAT,
    nVlrRdd FLOAT,
    nTotDoc FLOAT,
    sCodDocBas VARCHAR,
    nNroDocBas FLOAT,
    sCndPag VARCHAR,
    sClsDoc VARCHAR,
    sTipDoc VARCHAR,
    sCodVen VARCHAR,
    sDirter VARCHAR,
    sCiuTer VARCHAR,
    sDepTer VARCHAR,
    sPaiTer VARCHAR,
    sCmn VARCHAR,
    sCodCteCtb VARCHAR,
    nNroCteCtb FLOAT,
    nIdFECCT BIGINT,
    sNitTer VARCHAR,
    sCodMon VARCHAR,
    sCodUsr VARCHAR,
    sCodAut VARCHAR,
    bPrp01 BIT,
    bPrp02 BIT,
    bPrp03 BIT
);
CREATE TABLE TL_VEN_ENOD_EncabezadoNotaDebitoClientes(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodDoc VARCHAR,
    nNroDoc FLOAT,
    sCodSer VARCHAR,
    sCodTra VARCHAR,
    sEstDoc VARCHAR,
    sTipMov VARCHAR,
    dFecCtb DATETIME,
    dFecDoc DATETIME,
    dFecVto DATETIME,
    dFecSys DATETIME,
    sCodTer VARCHAR,
    sNomTer VARCHAR,
    nPorDto FLOAT,
    sAlmOri VARCHAR,
    sDocRef VARCHAR,
    nTotBas FLOAT,
    nTotDto FLOAT,
    nTotGtoAdi FLOAT,
    nTotIvaCom FLOAT,
    nTotIvaVta FLOAT,
    nVlrRdd FLOAT,
    nTotDoc FLOAT,
    sCodDocBas VARCHAR,
    nNroDocBas FLOAT,
    sCndPag VARCHAR,
    sClsDoc VARCHAR,
    sTipDoc VARCHAR,
    sCodVen VARCHAR,
    sDirter VARCHAR,
    sCiuTer VARCHAR,
    sDepTer VARCHAR,
    sPaiTer VARCHAR,
    sCmn VARCHAR,
    sCodCteCtb VARCHAR,
    nNroCteCtb FLOAT,
    nIdFECCT FLOAT,
    sNitTer VARCHAR,
    sCodMon VARCHAR,
    sCodUsr VARCHAR,
    sCodAut VARCHAR,
    bPrp01 BIT,
    bPrp02 BIT,
    bPrp03 BIT
);
CREATE TABLE TL_VEN_EPED_EncabezadoPedidos(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodDoc VARCHAR,
    nNroDoc FLOAT,
    sCodSer VARCHAR,
    sCodTra VARCHAR,
    sEstDoc VARCHAR,
    sTipMov VARCHAR,
    dFecCtb DATETIME,
    dFecDoc DATETIME,
    dFecVto DATETIME,
    dFecSys DATETIME,
    sCodTer VARCHAR,
    sNomTer VARCHAR,
    nPorDto FLOAT,
    sAlmOri VARCHAR,
    sDocRef VARCHAR,
    nTotBas FLOAT,
    nTotDto FLOAT,
    nTotGtoAdi FLOAT,
    nTotIvaCom FLOAT,
    nTotIvaVta FLOAT,
    nVlrRdd FLOAT,
    nTotDoc FLOAT,
    sCodDocBas VARCHAR,
    nNroDocBas FLOAT,
    sCndPag VARCHAR,
    sClsDoc VARCHAR,
    sTipDoc VARCHAR,
    sCodVen VARCHAR,
    sDirter VARCHAR,
    sCiuTer VARCHAR,
    sDepTer VARCHAR,
    sPaiTer VARCHAR,
    sCmn VARCHAR,
    sCodCteCtb VARCHAR,
    nNroCteCtb FLOAT,
    nIdFECCT FLOAT,
    sNitTer VARCHAR,
    sCodMon VARCHAR,
    sCodUsr VARCHAR,
    sCodAut VARCHAR,
    bPrp01 BIT,
    bPrp02 BIT,
    bPrp03 BIT
);
CREATE TABLE TL_VEN_LFAC1_DetalleFacturaClientes(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodDoc VARCHAR,
    nNroDoc FLOAT,
    sCodSer VARCHAR,
    sTipMov VARCHAR,
    sCodDocBas VARCHAR,
    nNroDocBas FLOAT,
    sCodSerBas VARCHAR,
    sCodItm VARCHAR,
    sNomItm VARCHAR,
    sNomAlt VARCHAR,
    sCodAlm VARCHAR,
    nCanItm FLOAT,
    sUniMedInv VARCHAR,
    nPreUni FLOAT,
    nVlrBas FLOAT,
    nPorDto FLOAT,
    nVlrDto FLOAT,
    nPreDto FLOAT,
    nVlrDtoLin FLOAT,
    sCodIva VARCHAR,
    nPorIva FLOAT,
    nVlrIva FLOAT,
    nVlrIvaLin FLOAT,
    nPreBru FLOAT,
    nTotLin FLOAT,
    nPorCms FLOAT,
    sCodCco VARCHAR,
    sTipLIM VARCHAR,
    sCodVen VARCHAR,
    nLinBas FLOAT,
    sCodPdo VARCHAR,
    sCodCta VARCHAR,
    bSolIto BIT,
    sCtaCosVta VARCHAR,
    bItmBlq BIT,
    sClsDoc VARCHAR,
    nTasCamUsd FLOAT,
    nPreUniUsd FLOAT,
    nVlrBasUsd FLOAT,
    sCodRch VARCHAR,
    sNroLot VARCHAR,
    nSdoCanLin FLOAT,
    nPesProm FLOAT
);
CREATE TABLE TL_VEN_LNOC1_DetalleNotasCreditoClientes(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodDoc VARCHAR,
    nNroDoc FLOAT,
    sCodSer VARCHAR,
    sTipMov VARCHAR,
    sCodDocBas VARCHAR,
    nNroDocBas FLOAT,
    sCodSerBas VARCHAR,
    sCodItm VARCHAR,
    sNomItm VARCHAR,
    sNomAlt VARCHAR,
    sCodAlm VARCHAR,
    nCanItm FLOAT,
    sUniMedInv VARCHAR,
    nPreUni FLOAT,
    nVlrBas FLOAT,
    nPorDto FLOAT,
    nVlrDto FLOAT,
    nPreDto FLOAT,
    nVlrDtoLin FLOAT,
    sCodIva VARCHAR,
    nPorIva FLOAT,
    nVlrIva FLOAT,
    nVlrIvaLin FLOAT,
    nPreBru FLOAT,
    nTotLin FLOAT,
    nPorCms FLOAT,
    sCodCco VARCHAR,
    sTipLIM VARCHAR,
    sCodVen VARCHAR,
    nLinBas FLOAT,
    sCodPdo VARCHAR,
    sCodCta VARCHAR,
    bSolIto BIT,
    sCtaCosVta VARCHAR,
    bItmBlq BIT,
    sClsDoc VARCHAR,
    nTasCamUsd FLOAT,
    nPreUniUsd FLOAT,
    nVlrBasUsd FLOAT,
    sCodRch VARCHAR,
    sNroLot VARCHAR,
    nSdoCanLin FLOAT,
    nPesProm FLOAT
);
 CREATE TABLE TL_VEN_LNOD1_DetalleNotasDebitoClientes(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodDoc VARCHAR,
    nNroDoc FLOAT,
    sCodSer VARCHAR,
    sTipMov VARCHAR,
    sCodDocBas VARCHAR,
    nNroDocBas FLOAT,
    sCodSerBas VARCHAR,
    sCodItm VARCHAR,
    sNomItm VARCHAR,
    sNomAlt VARCHAR,
    sCodAlm VARCHAR,
    nCanItm FLOAT,
    sUniMedInv VARCHAR,
    nPreUni FLOAT,
    nVlrBas FLOAT,
    nPorDto FLOAT,
    nVlrDto FLOAT,
    nPreDto FLOAT,
    nVlrDtoLin FLOAT,
    sCodIva VARCHAR,
    nPorIva FLOAT,
    nVlrIva FLOAT,
    nVlrIvaLin FLOAT,
    nPreBru FLOAT,
    nTotLin FLOAT,
    nPorCms FLOAT,
    sCodCco VARCHAR,
    sTipLIM VARCHAR,
    sCodVen VARCHAR,
    nLinBas FLOAT,
    sCodPdo VARCHAR,
    sCodCta VARCHAR,
    bSolIto BIT,
    sCtaCosVta VARCHAR,
    bItmBlq BIT,
    sClsDoc VARCHAR,
    nTasCamUsd FLOAT,
    nPreUniUsd FLOAT,
    nVlrBasUsd FLOAT,
    sCodRch VARCHAR,
    sNroLot VARCHAR,
    nSdoCanLin FLOAT,
    nPesProm FLOAT
 );
CREATE TABLE TL_VEN_LPED1_DetallePedidosClientes(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodDoc VARCHAR,
    nNroDoc FLOAT,
    sCodSer VARCHAR,
    sTipMov VARCHAR,
    sCodDocBas VARCHAR,
    nNroDocBas FLOAT,
    sCodSerBas VARCHAR,
    sCodItm VARCHAR,
    sNomItm VARCHAR,
    sNomAlt VARCHAR,
    sCodAlm VARCHAR,
    nCanItm FLOAT,
    sUniMedInv VARCHAR,
    nPreUni FLOAT,
    nVlrBas FLOAT,
    nPorDto FLOAT,
    nVlrDto FLOAT,
    nPreDto FLOAT,
    nVlrDtoLin FLOAT,
    sCodIva VARCHAR,
    nPorIva FLOAT,
    nVlrIva FLOAT,
    nVlrIvaLin FLOAT,
    nPreBru FLOAT,
    nTotLin FLOAT,
    nPorCms FLOAT,
    sCodCco VARCHAR,
    sTipLIM VARCHAR,
    sCodVen VARCHAR,
    nLinBas FLOAT,
    sCodPdo VARCHAR,
    sCodCta VARCHAR,
    bSolIto BIT,
    sCtaCosVta VARCHAR,
    bItmBlq BIT,
    sClsDoc VARCHAR,
    nTasCamUsd VARCHAR,
    nPreUniUsd FLOAT,
    nVlrBasUsd FLOAT,
    sCodRch VARCHAR,
    sNroLot VARCHAR,
    nSdoCanLin FLOAT,
    nPesProm FLOAT
);
CREATE TABLE TL_MMG_TCAE_CodigoActividadEconomica(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodAce VARCHAR,
    sNomAce VARCHAR
);

CREATE TABLE TL_MMG_TCIU_Ciudades(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sMMCodDep VARCHAR,
    sMMCodCiu VARCHAR,
    sMMNomCiu VARCHAR
);
CREATE TABLE TL_MMG_TDEP_Departamentos(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sMMCodDep VARCHAR,
    sMMNomDep VARCHAR
);
CREATE TABLE TL_MMG_TPAI_Paises(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sMMCodPai VARCHAR,
    sMMNomPai VARCHAR
);
CREATE TABLE TL_MMG_TTID_TipoDocumento(
    nId BIGINT IDENTITY (1, 1)  PRIMARY KEY NOT NULL,
    sCodTipDoc VARCHAR,
    sNomDoc VARCHAR
);





