FUNCTION z_mat_0001.
*"----------------------------------------------------------------------
*"*"Interface local:
*"  IMPORTING
*"     REFERENCE(IV_MATNR) TYPE  CHAR18
*"  EXPORTING
*"     REFERENCE(EV_MATKL) TYPE  MATKL
*"     REFERENCE(EV_MAKTX) TYPE  MAKTX
*"----------------------------------------------------------------------

  "(Dados gerais de material)
  SELECT SINGLE matnr
    FROM mara
    INTO ev_matkl
    WHERE matnr EQ iv_matnr.

  "(Textos breves de material)
  SELECT SINGLE maktx
    FROM makt
    INTO ev_maktx
    WHERE matnr EQ iv_matnr
      AND spras EQ sy-langu.

ENDFUNCTION.