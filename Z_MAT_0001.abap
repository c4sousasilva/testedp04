FUNCTION z_mat_0001.
*"----------------------------------------------------------------------
*"*"Interface local:
*"  IMPORTING
*"     REFERENCE(IV_MATNR) TYPE  MATNR
*"  EXPORTING
*"     REFERENCE(EV_MATKL) TYPE  MATKL
*"----------------------------------------------------------------------

  "(Dados gerais de material)
  SELECT SINGLE matnr
    FROM mara
    INTO ev_matkl
    WHERE matnr EQ iv_matnr.

ENDFUNCTION.