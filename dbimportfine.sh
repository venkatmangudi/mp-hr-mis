#! /bin/bash

# Here define the destination database name
_destination_db="DEMOhrmis"

# Here define the Source database name
# Note: please check with your source table columns, exist or not!
_source_db="hrmisinnodb"

_db_user="root"
_db_password="root"

# Here define source table names
_semp_primary_detail="EmpPrimaryDetails"
_sdistrict="DistList"
_sdesignation="TblDesignations"
_squalification_name="tblDegree"
_squalification_type="QualificationType"
_sspecialization="MedicalStreams"
_suniversities="Universities"
_srelations="DependantType"
_smarital_status="MarriageStatus"
_sreligions="ReligionStatus"
_scategories="CategoryStatus"
_semp_status="EmpStatus"

# Here define destination table names
_demp_primary_detail="employees"
_ddistrict="districts"
_ddesignation="designations"
_dqualification_name="qualification_names"
_dqualification_type="qualification_types"
_dspecialization="specialisations"
_duniversities="universities"
_drelations="relations"
_dmarital_status="martial_stats"
_dreligions="religions"
_dcategories="categories"
_demp_status="statuses"


mysql -u $_db_user -p$_db_password << eof

DELETE FROM $_source_db.$_semp_primary_detail WHERE EmpNo="EmpNo";
INSERT INTO $_destination_db.$_demp_primary_detail(emp_no,emp_full_name,emp_fathername) SELECT EmpNo,EMPFullNameEng,EmpFathernameEng FROM $_source_db.$_semp_primary_detail;

DELETE FROM $_source_db.$_sdistrict WHERE DIST_NAME1="DIST_NAME1";
INSERT INTO $_destination_db.$_ddistrict(district_name) SELECT DIST_NAME1 FROM $_source_db.$_sdistrict;

DELETE FROM $_source_db.$_sdesignation WHERE DesigPostEnglish="DesigPostEnglish";
INSERT INTO $_destination_db.$_ddesignation(Designation_Hindi) SELECT DesigPostEnglish FROM $_source_db.$_sdesignation;

DELETE FROM $_source_db.$_squalification_name WHERE Degree="Degree";
INSERT INTO $_destination_db.$_dqualification_name(Qualification_name) SELECT Degree FROM $_source_db.$_squalification_name;

DELETE FROM $_source_db.$_squalification_type WHERE QType="QType";
INSERT INTO $_destination_db.$_dqualification_type(Qualification_type) SELECT QType FROM $_source_db.$_squalification_type;

DELETE FROM $_source_db.$_sspecialization WHERE Specialisation="Specialisation";
INSERT INTO $_destination_db.$_dspecialization(Specialisation_name) SELECT Specialisation FROM $_source_db.$_sspecialization;

DELETE FROM $_source_db.$_suniversities WHERE UNIVERSITY="UNIVERSITY";
INSERT INTO $_destination_db.$_duniversities(University_name) SELECT UNIVERSITY FROM $_source_db.$_suniversities;

DELETE FROM $_source_db.$_srelations WHERE English="English";
INSERT INTO $_destination_db.$_drelations(Relation_name) SELECT English FROM $_source_db.$_srelations;

DELETE FROM $_source_db.$_smarital_status WHERE English="English";
INSERT INTO $_destination_db.$_dmarital_status(martial_status_type) SELECT English FROM $_source_db.$_smarital_status;

DELETE FROM $_source_db.$_sreligions WHERE English="English";
INSERT INTO $_destination_db.$_dreligions(religion_name) SELECT English FROM $_source_db.$_sreligions;

DELETE FROM $_source_db.$_scategories WHERE English="English";
INSERT INTO $_destination_db.$_dcategories(category_name) SELECT English FROM $_source_db.$_scategories;

DELETE FROM $_source_db.$_semp_status WHERE English="English";
INSERT INTO $_destination_db.$_demp_status(Status_name) SELECT English FROM $_source_db.$_semp_status;

eof
