# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Role.delete_all
roles = Role.create(role_name: 'admin')
roles = Role.create(role_name: 'user')

BloodGroup.delete_all
blood_groups = BloodGroup.create(blood_group_type: 'A+')
blood_groups = BloodGroup.create(blood_group_type: 'A-')
blood_groups = BloodGroup.create(blood_group_type: 'B+')
blood_groups = BloodGroup.create(blood_group_type: 'B-')
blood_groups = BloodGroup.create(blood_group_type: 'O+')
blood_groups = BloodGroup.create(blood_group_type: 'O-')
blood_groups = BloodGroup.create(blood_group_type: 'AB+')
blood_groups = BloodGroup.create(blood_group_type: 'AB-')

Gender.delete_all
genders = Gender.create(gender_name: "Male")
genders = Gender.create(gender_name: "Female")


Category.delete_all
categories = Category.create(category_name: "Others")

InstitutionType.delete_all
institution_types = InstitutionType.create(Institution_type: "CEmONC")
institution_types = InstitutionType.create(Institution_type: "BEmONC")
institution_types = InstitutionType.create(Institution_type: "SNCU")

SpecialCadre.delete_all
special_cadres = SpecialCadre.create(Special_Cadre_Type: "Administrative Cadre")
special_cadres = SpecialCadre.create(Special_Cadre_Type: "General Cadre")
special_cadres = SpecialCadre.create(Special_Cadre_Type: "Speciality Cadre")
special_cadres = SpecialCadre.create(Special_Cadre_Type: "Public Health Laboratory Cadre")