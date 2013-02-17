class HospitalReport < ActiveRecord::Base
  attr_accessible :hospital_id, :AnesAvl, :AnesGap, :AnesSan, :AnesUA, :DenSpeGap, :DenSpeSan, :DenSpeUA, :DenspeAvl, :DentAvl, :DentGap, :DentSan, :DentUA, :ENTAvl, :ENTGap, :ENTSan, :ENTUA, :GenlAvl, :GenlGap, :GenlSan, :GenlUA, :GynAvl, :GynGap, :GynSan, :GynUA, :MOAvl, :MOGap, :MOSan, :MOUA, :NewReports, :OpthAvl, :OpthGap, :OpthSan, :OpthUA, :OrthAvl, :OrthGap, :OrthSan, :OrthUA, :Other, :OtherUA, :PaedAvl, :PaedGap, :PaedSan, :PaedUA, :PathAvl, :PathGap, :PathSan, :PathUA, :RadiAvl, :RadiGap, :RadiSan, :RadiUA, :SurgAvl, :SurgGap, :SurgSan, :SurgUA, :TBAvl, :TBGap, :TBSan, :TBUA, :Total, :TotalUA, :Total_Spec_Avl, :Total_Spec_San
  
  belongs_to :hospital

end
