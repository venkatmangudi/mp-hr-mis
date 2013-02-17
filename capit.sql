DROP FUNCTION IF EXISTS cap1;
CREATE FUNCTION cap1(oldWord VARCHAR(255)) RETURNS VARCHAR(255)
  RETURN CONCAT(UCASE(SUBSTRING(oldWord, 1, 1)),LCASE(SUBSTRING(oldWord, 2)));

DROP FUNCTION IF EXISTS cap2;
DELIMITER //
CREATE FUNCTION cap2(oldName VARCHAR(255), delim VARCHAR(1), trimSpaces BOOL) RETURNS VARCHAR(255)
BEGIN
  SET @oldString := oldName;
  SET @newString := "";
 
  tokenLoop: LOOP
    IF trimSpaces THEN SET @oldString := TRIM(BOTH " " FROM @oldString); END IF;
 
    SET @splitPoint := LOCATE(delim, @oldString);
 
    IF @splitPoint = 0 THEN
      SET @newString := CONCAT(@newString, UC_FIRST(@oldString));
      LEAVE tokenLoop;
    END IF;
 
    SET @newString := CONCAT(@newString, UC_FIRST(SUBSTRING(@oldString, 1, @splitPoint)));
    SET @oldString := SUBSTRING(@oldString, @splitPoint+1);
  END LOOP tokenLoop;
 
  RETURN @newString;
END//
DELIMITER ;
