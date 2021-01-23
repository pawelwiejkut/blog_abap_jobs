*&---------------------------------------------------------------------*
*& Report zpwi_insert_data_job
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zpwi_insert_data_job.

DATA: ls_insert_data_job TYPE zpwi_tab_job_ex.

PARAMETERS: pa_temp TYPE int4.

GET TIME STAMP FIELD DATA(lv_curr_timestamp).

ls_insert_data_job-timestamp = lv_curr_timestamp.
ls_insert_data_job-temperature = pa_temp.

MODIFY zpwi_tab_job_ex FROM ls_insert_data_job.

IF sy-subrc = 0.
  MESSAGE 'Success' TYPE 'I'.
ENDIF.
