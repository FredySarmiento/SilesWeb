CREATE DATABASE SilesWeb
USE SilesWeb

CREATE TABLE TL_ADM_BAUT_ClasesAutorizaciones(
    nId BIGINT NOT NULL,
    sCodAut VARCHAR (40) NOT NULL,
    sNomAut VARCHAR (40) NOT NULL,
    bRegAci BIT
);  

CREATE TABLE TL_ADM_BCLC_ClaseCuentaContable(
    sClsCta	Texto VARCHAR,
    sNomClsCta VARCHAR,
);

CREATE TABLE TL_ADM_BCLD_ClaseDocumento(
    sClsDoc VARCHAR,
    sNomClsDoc VARCHAR
);

CREATE TABLE TL_ADM_BEOC_EstadoOrdenCompra(
    nId BIGINT NOT NULL,
    sCodEstODC VARCHAR,
    sNomEstODC  VARCHAR,
    bEstSel BIT,
    bRegAci BIT,
    nNroOrd FLOAT
);

CREATE TABLE TL_ADM_BEOP_EstadoOrdenProduccion(
    nId BIGINT NOT NULL,
    sCodEstODP VARCHAR,
    sNomEstODP VARCHAR,
    bEstSel BIT,
    bRegAci BIT,
    nNroOrd FLOAT,
    bRegAct BIT
);

CREATE TABLE TL_ADM_BEPC_EstadoPeriodoContable(
    nId BIGINT NOT NULL,
    sCodEstPdoCbe VARCHAR,
    sDesEstPdoCbe VARCHAR,
    bRegAci BIT
);

CREATE TABLE TL_ADM_ERR_EstadoError(
    nId BIGINT NOT NULL,
    sCodErr VARCHAR,
    sDesErr VARCHAR,
    sCodClr VARCHAR,
    sTipDes VARCHAR,
    bRegAci BIT
);

CREATE TABLE TL_ADM_BESD_EstadoDocumentos(
    nId BIGINT NOT NULL,
    sEstDoc VARCHAR,
    sNomEstDoc VARCHAR,
    bEsdSel BIT,
    bRegAci BIT
);

CREATE TABLE TL_ADM_FMT_FormatoFecha(
    nId BIGINT NOT NULL,
    sFmtHH VARCHAR,
    sFmtFec VARCHAR
);

CREATE TABLE TL_ADM_BLIM_ListaMateriales(
    nId BIGINT NOT NULL,
    sCodLst VARCHAR,
    sDesLst VARCHAR,
    bRegAci BIT
);

CREATE TABLE TL_ADM_BODP_TiposOrdenesProduccion(
    nId BIGINT NOT NULL,
    sCodDoc VARCHAR,
    sDesDoc VARCHAR,
    bOdpSel BIT,
    bRegAci BIT
);

CREATE TABLE TL_ADM_BROP_TiposRegistrosProduccion(
    nId BIGINT NOT NULL,
    sTipMov VARCHAR,
    sNomMov VARCHAR,
    bSelxDef BIT,
    bRegAci BIT
);

CREATE TABLE TL_ADM_BTGE_TipoGestion(
    nId BIGINT NOT NULL,
    sTipGes VARCHAR,
    bRegAci BIT
);

CREATE TABLE TL_ADM_BTID_TipoDocumentoCompra(
    sTipDoc VARCHAR,
    sNomTipDoc VARCHAR,
    bSelxDef BIT
);

CREATE TABLE TL_ADM_BTIR_TipoRevalorización(
    nId BIGINT NOT NULL,
    sTipRev VARCHAR,
    sNomTipRev VARCHAR,
    bRegAci BIT
);

CREATE TABLE TL_ADM_BTIT_GruposTerceros(
    nId BIGINT NOT NULL,
    sCodGruTer VARCHAR,
    sNomGruTer VARCHAR,
    bRegAci BIT
);

CREATE TABLE TL_ADM_BTIV_TipoVenta (
    nId BIGINT NOT NULL,
    sTipVen VARCHAR,
    sNomTipVen VARCHAR,
    bRegAci BIT
);

CREATE TABLE TL_ADM_BTRT_TipoRegistro_Tiempo(
    nId BIGINT NOT NULL,
    sCodTipRegTie VARCHAR,
    sNomTipRegTie VARCHAR,
    bRegAci BIT
);

CREATE TABLE TL_ADM_BTUS_TipoUsuarios(
    nId BIGINT NOT NULL,
    sNomUsr VARCHAR,
    bRegAci BIT
);

CREATE TABLE TL_ADM_CCLR_ConfiguracionColor(
    nId BIGINT NOT NULL,
    sCodClr VARCHAR,
    sNomClr VARCHAR
);

CREATE TABLE TL_ADM_CDEM_ConfiguracionDatosEmpresa(
    nId BIGINT NOT NULL,
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
    nId BIGINT NOT NULL,
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
    nId BIGINT NOT NULL,
    sCodUni VARCHAR,
    sNomUni VARCHAR,
    sCodUniBas VARCHAR,
    nUniBas FLOAT,
    bSelxDef BIT,
    bRegAci BIT
);

CREATE TABLE TL_ADM_FCOT_CodigosTrasacciones(
    nId BIGINT NOT NULL,
    sCodTra VARCHAR,
    sNomTra VARCHAR
);

CREATE TABLE TL_ADM_PDGV_ParametrizacionDataGridView(
    nId BIGINT NOT NULL,
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
    nId BIGINT NOT NULL,
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
    nId BIGINT NOT NULL,
    sCodFrm VARCHAR,
    sNomFrm VARCHAR,
    bFrmAut BIT,
    bFrmDGV BIT
);

CREATE TABLE TL_ADM_PGQLst_Consultas(
    nId BIGINT NOT NULL,
    sCodStr VARCHAR,
    sNomStr VARCHAR
);

CREATE TABLE TL_ADM_PLND1_DetalleNumeracionDocumentos(
    nId BIGINT NOT NULL,
    sCodDoc VARCHAR,
    sCodSer VARCHAR,
    nNroIni FLOAT,
    nNroSig FLOAT,
    nNroFin FLOAT,
    sCodTra VARCHAR,
    bRegAci BIT
);

CREATE TABLE TL_ADM_PQDG_EstructurasDataGridViewConsultas(
    nId BIGINT NOT NULL,
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
    nId BIGINT NOT NULL,
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
    nId BIGINT NOT NULL,
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
    nId BIGINT NOT NULL,
    sCodAna VARCHAR,
    sNomAna VARCHAR,
    sCodTipAna VARCHAR,
    bRegAci BIT
);

CREATE TABLE TL_ADM_TANA_Analisis(
    nId BIGINT NOT NULL,
    sCodAna VARCHAR,
    sNomAna VARCHAR,
    sCodTipAna VARCHAR,
    bRegAci BIT
);

CREATE TABLE TL_ADM_TASI_SaldosInicialesAno(
    nId BIGINT NOT NULL,
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
    nId BIGINT NOT NULL,
    sCodUsr VARCHAR,
    sCodFrm VARCHAR,
    sCodAut VARCHAR
);
CREATE TABLE TL_ADM_TBCO_Bancos(
    nId BIGINT NOT NULL,
    sCodBco VARCHAR,
    sDesBco VARCHAR
);

CREATE TABLE TL_ADM_TCCC_CriteriosCuentasContables(
    nId BIGINT NOT NULL,
    sCriCtaCbe VARCHAR,
    bRegAci BIT
);

CREATE TABLE TL_ADM_TCCO_CentroCostos(
    nId BIGINT NOT NULL,
    sCodCco VARCHAR,
    sNomCco VARCHAR,
    bRegAci BIT
);

CREATE TABLE TL_ADM_TCIF_CostosIndirectosFabricacion(
    nId BIGINT NOT NULL,
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
    nId BIGINT NOT NULL,
    sClsItm VARCHAR,
    sDesItm VARCHAR,
    bRegAci BIT
);

CREATE TABLE TL_ADM_TCOP_CondicionesPago(
    nId BIGINT NOT NULL,
    sCndPag VARCHAR,
    sCanDia VARCHAR,
    sCodFecVto VARCHAR,
    bRegAci BIT
);

CREATE TABLE TL_ADM_TCTC_CodigoTramsaccionesContables(
    nId BIGINT NOT NULL;
    sCodTraCtb VARCHAR;
    sDesTraCtb VARCHAR;
    bRegAci BIT
);

CREATE TABLE TL_ADM_TCTR_CentrosTrabajo(
    nId BIGINT NOT NULL,
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
    nId BIGINT NOT NULL,
    sCodEco VARCHAR,
    sDesPdo VARCHAR,
    dFecini DATETIME,
    dFecFin DATETIME
);

CREATE TABLE TL_ADM_TGRI_GruposInventarios(
    nId BIGINT NOT NULL,
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
    nId BIGINT NOT NULL,
    sCodGrpVta VARCHAR,
    sNomGrpVta VARCHAR,
    bRegAci BIT
);

CREATE TABLE TL_ADM_TIVA_CodigosIva(
    nId BIGINT NOT NULL;
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
    nId BIGINT NOT NULL,
    sCodMetPag VARCHAR,
    sNomMetPag VARCHAR,
    sClsPag VARCHAR,
    sMedPag VARCHAR,
    bRegAci BIT
);

CREATE TABLE TL_ADM_TMEV_MetodosValorizacion(
    nId BIGINT NOT NULL,
    sMetVlz VARCHAR,
    bRegAci BIT
);

CREATE TABLE TL_ADM_TMON_Monedas(
    nId BIGINT NOT NULL;
    sCodMon VARCHAR,
    sNomMon VARCHAR,
    sCodIntMon VARCHAR,
    bRegAci BIT
);

CREATE TABLE TL_ADM_TOPE_Operaciones(
    nId BIGINT NOT NULL,
    sCodOpe VARCHAR,
    sNomOpe VARCHAR,
    sCodCtr VARCHAR,
    nTieOpe FLOAT,
    nUniTieOpe FLOAT,
    bRegAci BIT
);

CREATE TABLE TL_ADM_TPAC_ParametrizacionContable(
    nId BIGINT NOT NULL,
    sCodEco VARCHAR,
    sComCta1 VARCHAR, 
    sVtaCta1 VARCHAR,
    sGrlCta1 VARCHAR,
    sInvCta1 VARCHAR
);

CREATE TABLE TL_ADM_TPCO_PeriodosContables(
    nId BIGINT NOT NULL,
    sCodPdo VARCHAR,
    sNomPdo VARCHAR,
    sEstPdo VARCHAR,
    dFecIni DATETIME,
    dFecFin DATETIME,
    sCodAno VARCHAR,
    bRegAci BIT
);

CREATE TABLE TL_ADM_TPOP_Operarios(
    nId BIGINT NOT NULL,
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
    nId BIGINT NOT NULL,
    dFecTasUsd DATETIME,
    dTasCamUsd DATETIME,
    nTasCamEur FLOAT
);

CREATE TABLE TL_ADM_TTCM_TiposComponentes(
    nId BIGINT NOT NULL,
    sCodTipCmt VARCHAR,
    sNomTipCmt VARCHAR,
    bRegAci BIT
);

CREATE TABLE TL_ADM_TTCO_TransaccionesContables(
    nId BIGINT NOT NULL,
    sCodTra VARCHAR,
    sDesTra VARCHAR
);
 
CREATE TABLE TL_ADM_TTGC_GrupoContable(
    nId BIGINT NOT NULL,
    sCodTra VARCHAR,
    sCodGrp VARCHAR, 
    sCtaDeb VARCHAR,
    sCtaCre VARCHAR,
    bRegAci BIT 
);

CREATE TABLE TL_ADM_TTIA_TipoAnalisis(
    nId BIGINT NOT NULL,
    sCodTipAna VARCHAR, 
    sNomTipAna VARCHAR,
    bRegAci BIT
);

CREATE TABLE TL_ADM_TTIN_TransaccionesInventarios(
    nId BIGINT NOT NULL,
    sCodTra VARCHAR,
    sNomTra VARCHAR,
    sTipMov VARCHAR,
    bRegAci BIT
);

CREATE TABLE TL_ADM_TUME_UnidadesMedida(
    nId BIGINT NOT NULL,
    sUniMed VARCHAR,
    sNomMed VARCHAR,
    sCodVol VARCHAR,
    nVlrUme FLOAT,
    bRegAci BIT
);

CREATE TABLE TL_ADM_TUPE_UnidadesPeso(
    nId BIGINT NOT NULL,
    sUniMed VARCHAR,
    sDesMed VARCHAR,
    nVlrMed FLOAT,
    bRegAci BIT
);

CREATE TABLE TL_ADM_TUSR_Usuario(
    nId BIGINT NOT NULL,
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
    nId BIGINT NOT NULL,
    sCodVen VARCHAR,
    sNomVen VARCHAR,
    sCodZon VARCHAR,
    sTipVen VARCHAR,
    bRegAci BIT
);

CREATE TABLE TL_ADM_TZON_Zonas(
    nId BIGINT NOT NULL,
    sCodZon VARCHAR,
    sNomZon VARCHAR,
    bRegAci BIT 
);

CREATE TABLE TL_COM_ENOC_EncabezadoNotaCreditoCompras(
    nId BIGINT NOT NULL,
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
    nId BIGINT NOT NULL,
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
    nId BIGINT NOT NULL,
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
    nTotBas 
    nTotDto
    nTotGtoAdi
    nTotIvaCom
    nTotIvaVta
    nVlrRdd
    nTotDoc
    sCodDocBas
    nNroDocBas
    sCndPag
    sClsDoc
    sTipDoc
    sCodVen
    sDirter
    sCiuTer
    sDepTer
    sPaiTer
    sCmn
    sCodCteCtb
    nNroCteCtb
    nIdFECCT
    sNitTer
    sCodMon
    sCodUsr
    sCodAut
    bPrp01
    bPrp02
    bPrp03
);