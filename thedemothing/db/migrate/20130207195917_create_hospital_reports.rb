class CreateHospitalReports < ActiveRecord::Migration
  def change
    create_table :hospital_reports do |t|
      t.integer :hospital_id
      t.integer :NewReports
      t.integer :AnesSan
      t.integer :AnesAvl
      t.integer :AnesGap
      t.integer :AnesUA
      t.integer :GynSan
      t.integer :GynAvl
      t.integer :GynGap
      t.integer :GynUA
      t.integer :PaedSan
      t.integer :PaedAvl
      t.integer :PaedGap
      t.integer :PaedUA
      t.integer :OpthSan
      t.integer :OpthAvl
      t.integer :OpthGap
      t.integer :OpthUA
      t.integer :OrthSan
      t.integer :OrthAvl
      t.integer :OrthGap
      t.integer :OrthUA
      t.integer :ENTSan
      t.integer :ENTAvl
      t.integer :ENTGap
      t.integer :ENTUA
      t.integer :RadiSan
      t.integer :RadiAvl
      t.integer :RadiGap
      t.integer :RadiUA
      t.integer :PathSan
      t.integer :PathAvl
      t.integer :PathGap
      t.integer :PathUA
      t.integer :SurgSan
      t.integer :SurgAvl
      t.integer :SurgGap
      t.integer :SurgUA
      t.integer :GenlSan
      t.integer :GenlAvl
      t.integer :GenlGap
      t.integer :GenlUA
      t.integer :TBSan
      t.integer :TBAvl
      t.integer :TBGap
      t.integer :TBUA
      t.integer :DenSpeSan
      t.integer :DenspeAvl
      t.integer :DenSpeGap
      t.integer :DenSpeUA
      t.integer :MOSan
      t.integer :MOAvl
      t.integer :MOGap
      t.integer :MOUA
      t.integer :DentSan
      t.integer :DentAvl
      t.integer :DentGap
      t.integer :DentUA
      t.integer :Total
      t.integer :TotalUA
      t.integer :Other
      t.integer :OtherUA
      t.integer :Total_Spec_San
      t.integer :Total_Spec_Avl

      t.timestamps
    end
  end
end
