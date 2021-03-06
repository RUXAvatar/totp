
2020-10-20T06:20:36.909807Z	   21 Query	INSERT INTO UM_USER (UM_USER_ID, UM_USER_NAME, UM_USER_PASSWORD, UM_SALT_VALUE, UM_REQUIRE_CHANGE, UM_CHANGED_TIME, UM_TENANT_ID) VALUES ('1ad4a0e0-fa06-4f9e-baf7-91ce102d3255', 'M.OZZETI', 'ZF8a0aeikXjmjybKg4CfUsgJt2niiMcVyNKM1Um2hrw=', 'XqMZaDqBXKylenfwyv/ubQ==', 0, '2020-10-20 03:20:36.909', -1234)
2020-10-20T06:20:36.912208Z	   21 Query	SELECT @@session.transaction_read_only
2020-10-20T06:20:36.912533Z	   21 Query	INSERT INTO UM_USER_ATTRIBUTE (UM_USER_ID, UM_ATTR_NAME, UM_ATTR_VALUE, UM_PROFILE_ID, UM_TENANT_ID) VALUES ((SELECT UM_ID FROM UM_USER WHERE UM_USER_ID='1ad4a0e0-fa06-4f9e-baf7-91ce102d3255' AND UM_TENANT_ID=-1234), 'uid', 'M.OZZETI', 'default', -1234)
2020-10-20T06:20:36.913022Z	   21 Query	INSERT INTO UM_USER_ATTRIBUTE (UM_USER_ID, UM_ATTR_NAME, UM_ATTR_VALUE, UM_PROFILE_ID, UM_TENANT_ID) VALUES ((SELECT UM_ID FROM UM_USER WHERE UM_USER_ID='1ad4a0e0-fa06-4f9e-baf7-91ce102d3255' AND UM_TENANT_ID=-1234), 'createdDate', '2020-10-20T06:20:36.838Z', 'default', -1234)
2020-10-20T06:20:36.913335Z	   21 Query	INSERT INTO UM_USER_ATTRIBUTE (UM_USER_ID, UM_ATTR_NAME, UM_ATTR_VALUE, UM_PROFILE_ID, UM_TENANT_ID) VALUES ((SELECT UM_ID FROM UM_USER WHERE UM_USER_ID='1ad4a0e0-fa06-4f9e-baf7-91ce102d3255' AND UM_TENANT_ID=-1234), 'lastModifiedDate', '2020-10-20T06:20:36.838Z', 'default', -1234)
2020-10-20T06:20:36.913687Z	   21 Query	INSERT INTO UM_USER_ATTRIBUTE (UM_USER_ID, UM_ATTR_NAME, UM_ATTR_VALUE, UM_PROFILE_ID, UM_TENANT_ID) VALUES ((SELECT UM_ID FROM UM_USER WHERE UM_USER_ID='1ad4a0e0-fa06-4f9e-baf7-91ce102d3255' AND UM_TENANT_ID=-1234), 'scimId', '1ad4a0e0-fa06-4f9e-baf7-91ce102d3255', 'default', -1234)
2020-10-20T06:20:36.917453Z	   21 Query	INSERT INTO UM_USER_ATTRIBUTE (UM_USER_ID, UM_ATTR_NAME, UM_ATTR_VALUE, UM_PROFILE_ID, UM_TENANT_ID) VALUES ((SELECT UM_ID FROM UM_USER WHERE UM_USER_ID='1ad4a0e0-fa06-4f9e-baf7-91ce102d3255' AND UM_TENANT_ID=-1234), 'resourceType', 'User', 'default', -1234)

2020-10-20T06:21:12.191324Z	    6 Query	SET autocommit=0
2020-10-20T06:21:12.191567Z	    6 Query	SELECT @@session.transaction_isolation

---------------------------------------------------------------------
2020-10-20T06:21:12.191888Z	    6 Query	  SELECT UM_ID FROM UM_USER WHERE UM_USER_NAME='M.OZZETI' AND UM_TENANT_ID=-1234

<Property name="GetUserIDFromUserNameSQL">SELECT UM_ID FROM UM_USER WHERE UM_USER_NAME=?          AND UM_TENANT_ID=?</Property>
<Property name="IsUserExistingSQL">       SELECT UM_ID FROM UM_USER WHERE UM_USER_NAME=?          AND UM_TENANT_ID=?</Property>
<Property name="IsUserNameExistingSQL">   SELECT UM_ID FROM UM_USER WHERE UM_USER_NAME=?          AND UM_TENANT_ID=?</Property>

ACCENTURE
<Property name="GetUserIDFromUserNameSQL"/>
<Property name="IsUserExistingSQL">       SELECT (ID_USUARIO) UM_ID FROM SEG_USUARIO WHERE CD_USUARIO=? and NVL(FG_BLOQUEADO, 'N') = 'N' AND NVL(FG_CANCELADO, 'N') = 'N'</Property>
<Property name="IsUserNameExistingSQL"/>


---------------------------------------------------------------------
2020-10-20T06:21:12.192792Z	    6 Query	                       SELECT UM_ATTR_NAME, UM_ATTR_VALUE FROM UM_USER_ATTRIBUTE, UM_USER WHERE UM_USER.UM_ID = UM_USER_ATTRIBUTE.UM_USER_ID AND UM_USER.UM_USER_NAME='M.OZZETI'      AND UM_PROFILE_ID='default' AND UM_USER_ATTRIBUTE.UM_TENANT_ID=-1234 AND UM_USER.UM_TENANT_ID=-1234
<Property name="GetUserPropertiesForProfileSQL">               SELECT UM_ATTR_NAME, UM_ATTR_VALUE FROM UM_USER_ATTRIBUTE, UM_USER WHERE UM_USER.UM_ID = UM_USER_ATTRIBUTE.UM_USER_ID AND UM_USER.UM_USER_NAME=?               AND UM_PROFILE_ID=?         AND UM_USER_ATTRIBUTE.UM_TENANT_ID=?     AND UM_USER.UM_TENANT_ID=?</Property>
<Property name="GetUserPropertiesForProfileWithIDSQL">         SELECT UM_ATTR_NAME, UM_ATTR_VALUE FROM UM_USER_ATTRIBUTE, UM_USER WHERE UM_USER.UM_ID = UM_USER_ATTRIBUTE.UM_USER_ID AND UM_USER.UM_USER_ID=?                 AND UM_PROFILE_ID=?         AND UM_USER_ATTRIBUTE.UM_TENANT_ID=?     AND UM_USER.UM_TENANT_ID=?</Property>
<Property name="GetUserPropertiesForProfileSQLCaseInsensitive">SELECT UM_ATTR_NAME, UM_ATTR_VALUE FROM UM_USER_ATTRIBUTE, UM_USER WHERE UM_USER.UM_ID = UM_USER_ATTRIBUTE.UM_USER_ID AND LOWER(UM_USER.UM_USER_NAME)=LOWER(?) AND UM_PROFILE_ID=?         AND UM_USER_ATTRIBUTE.UM_TENANT_ID=?     AND UM_USER.UM_TENANT_ID=?</Property>

ACCENTURE
<Property name="GetUserPropertiesForProfileSQL">               SELECT (CD_USUARIO) UM_ATTR_NAME, 
                                                                      (CD_SENHA) UM_ATTR_VALUE    FROM SEG_USUARIO                WHERE ID_USUARIO = -1                              AND CD_USUARIO=?                         AND NM_USUARIO=?</Property>
<Property name="GetUserPropertiesForProfileWithIDSQL"/>

<Property name="GetUserPropertiesForProfileSQLCaseInsensitive">SELECT (CD_USUARIO) UM_ATTR_NAME, 
                                                                      (CD_SENHA) UM_ATTR_VALUE    FROM SEG_USUARIO                WHERE ID_USUARIO = -1                              AND CD_USUARIO=?                         AND NM_USUARIO=?</Property>


---------------------------------------------------------------------
2020-10-20T06:21:12.211233Z	    6 Query	UPDATE UM_USER_ATTRIBUTE SET UM_ATTR_VALUE='2020-10-20T06:21:12.201Z' WHERE UM_USER_ID=(SELECT UM_ID FROM UM_USER WHERE UM_USER_NAME='M.OZZETI' AND UM_TENANT_ID=-1234) AND UM_ATTR_NAME='lastModifiedDate' AND UM_PROFILE_ID='default' AND UM_TENANT_ID=-1234
<Property name="UpdateUserPropertySQL"> UPDATE UM_USER_ATTRIBUTE SET UM_ATTR_VALUE=?                          WHERE UM_USER_ID=(SELECT UM_ID FROM UM_USER WHERE UM_USER_NAME=? AND UM_TENANT_ID=?) AND UM_ATTR_NAME=? AND UM_PROFILE_ID=? AND UM_TENANT_ID=?</Property>

ACCENTURE
<Property name="UpdateUserPropertySQL"/>