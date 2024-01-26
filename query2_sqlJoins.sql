/* Write and execute a SQL query to list all crimes 
that took place at a school. Include case number, crime type and community name.*/

SELECT cc.CASE_NUMBER, csd.COMMUNITY_AREA_NAME, cc.PRIMARY_TYPE
FROM chicago_crime cc
LEFT JOIN chicago_socioeconomic_data csd
ON cc.COMMUNITY_AREA_NUMBER=csd.COMMUNITY_AREA_NUMBER
WHERE cc.LOCATION_DESCRIPTION LIKE '%School%';