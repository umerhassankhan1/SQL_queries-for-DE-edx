/* 
Question 1
Update your stored procedure definition. 
Add a generic ELSE clause to the IF statement that rolls back the current work 
if the score did not fit any of the preceding categories.

Question 2
Update your stored procedure definition again. 
Add a statement to commit the current unit of work at the end of the procedure.
*/

DELIMITER //

CREATE PROCEDURE UPDATE_LEADER_SCORE (in_School_ID INT, in_Leader_Score INT)
BEGIN 
    UPDATE chicago_public_schools
    SET Leaders_Score = in_Leader_Score
    WHERE School_ID = in_School_ID;

    IF in_Leader_Score >= 80 AND in_Leader_Score <= 99 THEN
        UPDATE chicago_public_schools
        SET Leaders_Icon = 'Very strong'
        WHERE School_ID = in_School_ID;

    ELSEIF in_Leader_Score >= 60 AND in_Leader_Score <= 79 THEN
        UPDATE chicago_public_schools
        SET Leaders_Icon = 'Strong'
        WHERE School_ID = in_School_ID;

    ELSEIF in_Leader_Score >= 40 AND in_Leader_Score <= 59 THEN
        UPDATE chicago_public_schools
        SET Leaders_Icon = 'Average'
        WHERE School_ID = in_School_ID;

    ELSEIF in_Leader_Score >= 20 AND in_Leader_Score <= 39 THEN
        UPDATE chicago_public_schools
        SET Leaders_Icon = 'Weak'
        WHERE School_ID = in_School_ID;

    ELSEIF in_Leader_Score >= 0 AND in_Leader_Score <= 19 THEN
        UPDATE chicago_public_schools
        SET Leaders_Icon = 'Very Weak'
        WHERE School_ID = in_School_ID;

    ELSE
        ROLLBACK;

    END IF
    COMMIT;
END //