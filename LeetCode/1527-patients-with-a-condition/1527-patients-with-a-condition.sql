/*
print: patient_id, patient_name, conditions
condition:
 - have type 1 diabetes that starts with DIAB1
*/
SELECT
    PATIENT_ID,
    PATIENT_NAME,
    CONDITIONS
FROM
    PATIENTS
WHERE
    CONDITIONS REGEXP '\\bDIAB1';