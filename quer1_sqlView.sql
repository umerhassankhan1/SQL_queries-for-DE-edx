/* Write and execute a SQL statement to create a view 
showing the columns listed in the following table,
 with new column names as shown in the second column. */

CREATE OR REPLACE VIEW cps_view
AS
SELECT NAME_OF_SCHOOL AS School_Name, Safety_Icon AS Safety_Rating, Family_Involvement_Icon AS Family_Rating, 
Environment_Icon AS Environment_Rating, Instruction_Icon AS Instruction_Rating, Leaders_Icon AS Leaders_Rating, Teachers_Icon AS Teachers_Rating
FROM chicago_public_schools;

/* query results from VIEW */
SELECT * FROM cps_view;

/* query school name and leaders rating from VIEW */
SELECT School_Name, Leaders_Rating FROM cps_view;