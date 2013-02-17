require 'test_helper'

class HospitalReportsControllerTest < ActionController::TestCase
  setup do
    @hospital_report = hospital_reports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hospital_reports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hospital_report" do
    assert_difference('HospitalReport.count') do
      post :create, hospital_report: { AnesAvl: @hospital_report.AnesAvl, AnesGap: @hospital_report.AnesGap, AnesSan: @hospital_report.AnesSan, AnesUA: @hospital_report.AnesUA, DenSpeGap: @hospital_report.DenSpeGap, DenSpeSan: @hospital_report.DenSpeSan, DenSpeUA: @hospital_report.DenSpeUA, DenspeAvl: @hospital_report.DenspeAvl, DentAvl: @hospital_report.DentAvl, DentGap: @hospital_report.DentGap, DentSan: @hospital_report.DentSan, DentUA: @hospital_report.DentUA, ENTAvl: @hospital_report.ENTAvl, ENTGap: @hospital_report.ENTGap, ENTSan: @hospital_report.ENTSan, ENTUA: @hospital_report.ENTUA, GenlAvl: @hospital_report.GenlAvl, GenlGap: @hospital_report.GenlGap, GenlSan: @hospital_report.GenlSan, GenlUA: @hospital_report.GenlUA, GynAvl: @hospital_report.GynAvl, GynGap: @hospital_report.GynGap, GynSan: @hospital_report.GynSan, GynUA: @hospital_report.GynUA, MOAvl: @hospital_report.MOAvl, MOGap: @hospital_report.MOGap, MOSan: @hospital_report.MOSan, MOUA: @hospital_report.MOUA, NewReports: @hospital_report.NewReports, OpthAvl: @hospital_report.OpthAvl, OpthGap: @hospital_report.OpthGap, OpthSan: @hospital_report.OpthSan, OpthUA: @hospital_report.OpthUA, OrthAvl: @hospital_report.OrthAvl, OrthGap: @hospital_report.OrthGap, OrthSan: @hospital_report.OrthSan, OrthUA: @hospital_report.OrthUA, Other: @hospital_report.Other, OtherUA: @hospital_report.OtherUA, PaedAvl: @hospital_report.PaedAvl, PaedGap: @hospital_report.PaedGap, PaedSan: @hospital_report.PaedSan, PaedUA: @hospital_report.PaedUA, PathAvl: @hospital_report.PathAvl, PathGap: @hospital_report.PathGap, PathSan: @hospital_report.PathSan, PathUA: @hospital_report.PathUA, RadiAvl: @hospital_report.RadiAvl, RadiGap: @hospital_report.RadiGap, RadiSan: @hospital_report.RadiSan, RadiUA: @hospital_report.RadiUA, SurgAvl: @hospital_report.SurgAvl, SurgGap: @hospital_report.SurgGap, SurgSan: @hospital_report.SurgSan, SurgUA: @hospital_report.SurgUA, TBAvl: @hospital_report.TBAvl, TBGap: @hospital_report.TBGap, TBSan: @hospital_report.TBSan, TBUA: @hospital_report.TBUA, Total: @hospital_report.Total, TotalUA: @hospital_report.TotalUA, Total_Spec_Avl: @hospital_report.Total_Spec_Avl, Total_Spec_San: @hospital_report.Total_Spec_San }
    end

    assert_redirected_to hospital_report_path(assigns(:hospital_report))
  end

  test "should show hospital_report" do
    get :show, id: @hospital_report
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hospital_report
    assert_response :success
  end

  test "should update hospital_report" do
    put :update, id: @hospital_report, hospital_report: { AnesAvl: @hospital_report.AnesAvl, AnesGap: @hospital_report.AnesGap, AnesSan: @hospital_report.AnesSan, AnesUA: @hospital_report.AnesUA, DenSpeGap: @hospital_report.DenSpeGap, DenSpeSan: @hospital_report.DenSpeSan, DenSpeUA: @hospital_report.DenSpeUA, DenspeAvl: @hospital_report.DenspeAvl, DentAvl: @hospital_report.DentAvl, DentGap: @hospital_report.DentGap, DentSan: @hospital_report.DentSan, DentUA: @hospital_report.DentUA, ENTAvl: @hospital_report.ENTAvl, ENTGap: @hospital_report.ENTGap, ENTSan: @hospital_report.ENTSan, ENTUA: @hospital_report.ENTUA, GenlAvl: @hospital_report.GenlAvl, GenlGap: @hospital_report.GenlGap, GenlSan: @hospital_report.GenlSan, GenlUA: @hospital_report.GenlUA, GynAvl: @hospital_report.GynAvl, GynGap: @hospital_report.GynGap, GynSan: @hospital_report.GynSan, GynUA: @hospital_report.GynUA, MOAvl: @hospital_report.MOAvl, MOGap: @hospital_report.MOGap, MOSan: @hospital_report.MOSan, MOUA: @hospital_report.MOUA, NewReports: @hospital_report.NewReports, OpthAvl: @hospital_report.OpthAvl, OpthGap: @hospital_report.OpthGap, OpthSan: @hospital_report.OpthSan, OpthUA: @hospital_report.OpthUA, OrthAvl: @hospital_report.OrthAvl, OrthGap: @hospital_report.OrthGap, OrthSan: @hospital_report.OrthSan, OrthUA: @hospital_report.OrthUA, Other: @hospital_report.Other, OtherUA: @hospital_report.OtherUA, PaedAvl: @hospital_report.PaedAvl, PaedGap: @hospital_report.PaedGap, PaedSan: @hospital_report.PaedSan, PaedUA: @hospital_report.PaedUA, PathAvl: @hospital_report.PathAvl, PathGap: @hospital_report.PathGap, PathSan: @hospital_report.PathSan, PathUA: @hospital_report.PathUA, RadiAvl: @hospital_report.RadiAvl, RadiGap: @hospital_report.RadiGap, RadiSan: @hospital_report.RadiSan, RadiUA: @hospital_report.RadiUA, SurgAvl: @hospital_report.SurgAvl, SurgGap: @hospital_report.SurgGap, SurgSan: @hospital_report.SurgSan, SurgUA: @hospital_report.SurgUA, TBAvl: @hospital_report.TBAvl, TBGap: @hospital_report.TBGap, TBSan: @hospital_report.TBSan, TBUA: @hospital_report.TBUA, Total: @hospital_report.Total, TotalUA: @hospital_report.TotalUA, Total_Spec_Avl: @hospital_report.Total_Spec_Avl, Total_Spec_San: @hospital_report.Total_Spec_San }
    assert_redirected_to hospital_report_path(assigns(:hospital_report))
  end

  test "should destroy hospital_report" do
    assert_difference('HospitalReport.count', -1) do
      delete :destroy, id: @hospital_report
    end

    assert_redirected_to hospital_reports_path
  end
end
