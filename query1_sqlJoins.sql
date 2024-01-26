/*Write and execute a SQL query to list the school names, 
community names and average attendance for communities with a hardship index of 98.*/

SELECT cps.NAME_OF_SCHOOL, csd.COMMUNITY_AREA_NAME, cps.AVERAGE_STUDENT_ATTENDANCE
FROM chicago_public_schools cps
LEFT JOIN chicago_socioeconomic_data csd
ON cps.COMMUNITY_AREA_NUMBER=csd.COMMUNITY_AREA_NUMBER
WHERE csd.HARDSHIP_INDEX=98;