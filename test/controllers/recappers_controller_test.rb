require 'test_helper'

class RecappersControllerTest < ActionController::TestCase
  setup do
    @recapper = recappers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:recappers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create recapper" do
    assert_difference('Recapper.count') do
      post :create, recapper: { a3ptp: @recapper.a3ptp, a_initials: @recapper.a_initials, a_nick: @recapper.a_nick, aastt: @recapper.aastt, ablkt: @recapper.ablkt, afgp: @recapper.afgp, afname: @recapper.afname, aftp: @recapper.aftp, ap10_3pma: @recapper.ap10_3pma, ap10_ast: @recapper.ap10_ast, ap10_blk: @recapper.ap10_blk, ap10_dreb: @recapper.ap10_dreb, ap10_fgma: @recapper.ap10_fgma, ap10_ftma: @recapper.ap10_ftma, ap10_min: @recapper.ap10_min, ap10_name: @recapper.ap10_name, ap10_oreb: @recapper.ap10_oreb, ap10_pf: @recapper.ap10_pf, ap10_pts: @recapper.ap10_pts, ap10_reb: @recapper.ap10_reb, ap10_starter: @recapper.ap10_starter, ap10_stl: @recapper.ap10_stl, ap10_to: @recapper.ap10_to, ap11_3pma: @recapper.ap11_3pma, ap11_ast: @recapper.ap11_ast, ap11_blk: @recapper.ap11_blk, ap11_dreb: @recapper.ap11_dreb, ap11_fgma: @recapper.ap11_fgma, ap11_ftma: @recapper.ap11_ftma, ap11_min: @recapper.ap11_min, ap11_name: @recapper.ap11_name, ap11_oreb: @recapper.ap11_oreb, ap11_pf: @recapper.ap11_pf, ap11_pts: @recapper.ap11_pts, ap11_reb: @recapper.ap11_reb, ap11_starter: @recapper.ap11_starter, ap11_stl: @recapper.ap11_stl, ap11_to: @recapper.ap11_to, ap12_3pma: @recapper.ap12_3pma, ap12_ast: @recapper.ap12_ast, ap12_blk: @recapper.ap12_blk, ap12_dreb: @recapper.ap12_dreb, ap12_fgma: @recapper.ap12_fgma, ap12_ftma: @recapper.ap12_ftma, ap12_min: @recapper.ap12_min, ap12_name: @recapper.ap12_name, ap12_oreb: @recapper.ap12_oreb, ap12_pf: @recapper.ap12_pf, ap12_pts: @recapper.ap12_pts, ap12_reb: @recapper.ap12_reb, ap12_starter: @recapper.ap12_starter, ap12_stl: @recapper.ap12_stl, ap12_to: @recapper.ap12_to, ap13_3pma: @recapper.ap13_3pma, ap13_ast: @recapper.ap13_ast, ap13_blk: @recapper.ap13_blk, ap13_dreb: @recapper.ap13_dreb, ap13_fgma: @recapper.ap13_fgma, ap13_ftma: @recapper.ap13_ftma, ap13_min: @recapper.ap13_min, ap13_name: @recapper.ap13_name, ap13_oreb: @recapper.ap13_oreb, ap13_pf: @recapper.ap13_pf, ap13_pts: @recapper.ap13_pts, ap13_reb: @recapper.ap13_reb, ap13_starter: @recapper.ap13_starter, ap13_stl: @recapper.ap13_stl, ap13_to: @recapper.ap13_to, ap1_3pma: @recapper.ap1_3pma, ap1_ast: @recapper.ap1_ast, ap1_blk: @recapper.ap1_blk, ap1_dreb: @recapper.ap1_dreb, ap1_fgma: @recapper.ap1_fgma, ap1_ftma: @recapper.ap1_ftma, ap1_min: @recapper.ap1_min, ap1_name: @recapper.ap1_name, ap1_oreb: @recapper.ap1_oreb, ap1_pf: @recapper.ap1_pf, ap1_pts: @recapper.ap1_pts, ap1_reb: @recapper.ap1_reb, ap1_starter: @recapper.ap1_starter, ap1_stl: @recapper.ap1_stl, ap1_to: @recapper.ap1_to, ap2_3pma: @recapper.ap2_3pma, ap2_ast: @recapper.ap2_ast, ap2_blk: @recapper.ap2_blk, ap2_dreb: @recapper.ap2_dreb, ap2_fgma: @recapper.ap2_fgma, ap2_ftma: @recapper.ap2_ftma, ap2_min: @recapper.ap2_min, ap2_name: @recapper.ap2_name, ap2_oreb: @recapper.ap2_oreb, ap2_pf: @recapper.ap2_pf, ap2_pts: @recapper.ap2_pts, ap2_reb: @recapper.ap2_reb, ap2_starter: @recapper.ap2_starter, ap2_stl: @recapper.ap2_stl, ap2_to: @recapper.ap2_to, ap3_3pma: @recapper.ap3_3pma, ap3_ast: @recapper.ap3_ast, ap3_blk: @recapper.ap3_blk, ap3_dreb: @recapper.ap3_dreb, ap3_fgma: @recapper.ap3_fgma, ap3_ftma: @recapper.ap3_ftma, ap3_min: @recapper.ap3_min, ap3_name: @recapper.ap3_name, ap3_oreb: @recapper.ap3_oreb, ap3_pf: @recapper.ap3_pf, ap3_pts: @recapper.ap3_pts, ap3_reb: @recapper.ap3_reb, ap3_starter: @recapper.ap3_starter, ap3_stl: @recapper.ap3_stl, ap3_to: @recapper.ap3_to, ap4_3pma: @recapper.ap4_3pma, ap4_ast: @recapper.ap4_ast, ap4_blk: @recapper.ap4_blk, ap4_dreb: @recapper.ap4_dreb, ap4_fgma: @recapper.ap4_fgma, ap4_ftma: @recapper.ap4_ftma, ap4_min: @recapper.ap4_min, ap4_name: @recapper.ap4_name, ap4_oreb: @recapper.ap4_oreb, ap4_pf: @recapper.ap4_pf, ap4_pts: @recapper.ap4_pts, ap4_reb: @recapper.ap4_reb, ap4_starter: @recapper.ap4_starter, ap4_stl: @recapper.ap4_stl, ap4_to: @recapper.ap4_to, ap5_3pma: @recapper.ap5_3pma, ap5_ast: @recapper.ap5_ast, ap5_blk: @recapper.ap5_blk, ap5_dreb: @recapper.ap5_dreb, ap5_fgma: @recapper.ap5_fgma, ap5_ftma: @recapper.ap5_ftma, ap5_min: @recapper.ap5_min, ap5_name: @recapper.ap5_name, ap5_oreb: @recapper.ap5_oreb, ap5_pf: @recapper.ap5_pf, ap5_pts: @recapper.ap5_pts, ap5_reb: @recapper.ap5_reb, ap5_starter: @recapper.ap5_starter, ap5_stl: @recapper.ap5_stl, ap5_to: @recapper.ap5_to, ap6_3pma: @recapper.ap6_3pma, ap6_ast: @recapper.ap6_ast, ap6_blk: @recapper.ap6_blk, ap6_dreb: @recapper.ap6_dreb, ap6_fgma: @recapper.ap6_fgma, ap6_ftma: @recapper.ap6_ftma, ap6_min: @recapper.ap6_min, ap6_name: @recapper.ap6_name, ap6_oreb: @recapper.ap6_oreb, ap6_pf: @recapper.ap6_pf, ap6_pts: @recapper.ap6_pts, ap6_reb: @recapper.ap6_reb, ap6_starter: @recapper.ap6_starter, ap6_stl: @recapper.ap6_stl, ap6_to: @recapper.ap6_to, ap7_3pma: @recapper.ap7_3pma, ap7_ast: @recapper.ap7_ast, ap7_blk: @recapper.ap7_blk, ap7_dreb: @recapper.ap7_dreb, ap7_fgma: @recapper.ap7_fgma, ap7_ftma: @recapper.ap7_ftma, ap7_min: @recapper.ap7_min, ap7_name: @recapper.ap7_name, ap7_oreb: @recapper.ap7_oreb, ap7_pf: @recapper.ap7_pf, ap7_pts: @recapper.ap7_pts, ap7_reb: @recapper.ap7_reb, ap7_starter: @recapper.ap7_starter, ap7_stl: @recapper.ap7_stl, ap7_to: @recapper.ap7_to, ap8_3pma: @recapper.ap8_3pma, ap8_ast: @recapper.ap8_ast, ap8_blk: @recapper.ap8_blk, ap8_dreb: @recapper.ap8_dreb, ap8_fgma: @recapper.ap8_fgma, ap8_ftma: @recapper.ap8_ftma, ap8_min: @recapper.ap8_min, ap8_name: @recapper.ap8_name, ap8_oreb: @recapper.ap8_oreb, ap8_pf: @recapper.ap8_pf, ap8_pts: @recapper.ap8_pts, ap8_reb: @recapper.ap8_reb, ap8_starter: @recapper.ap8_starter, ap8_stl: @recapper.ap8_stl, ap8_to: @recapper.ap8_to, ap9_3pma: @recapper.ap9_3pma, ap9_ast: @recapper.ap9_ast, ap9_blk: @recapper.ap9_blk, ap9_dreb: @recapper.ap9_dreb, ap9_fgma: @recapper.ap9_fgma, ap9_ftma: @recapper.ap9_ftma, ap9_min: @recapper.ap9_min, ap9_name: @recapper.ap9_name, ap9_oreb: @recapper.ap9_oreb, ap9_pf: @recapper.ap9_pf, ap9_pts: @recapper.ap9_pts, ap9_reb: @recapper.ap9_reb, ap9_starter: @recapper.ap9_starter, ap9_stl: @recapper.ap9_stl, ap9_to: @recapper.ap9_to, aq1: @recapper.aq1, aq2: @recapper.aq2, aq3: @recapper.aq3, aq4: @recapper.aq4, arebt: @recapper.arebt, arena: @recapper.arena, astlt: @recapper.astlt, atotal: @recapper.atotal, attendance: @recapper.attendance, awayt3fgma: @recapper.awayt3fgma, awaytdreb: @recapper.awaytdreb, awaytfgma: @recapper.awaytfgma, awaytftma: @recapper.awaytftma, awaytoreb: @recapper.awaytoreb, awaytpf: @recapper.awaytpf, awaytto: @recapper.awaytto, capacity: @recapper.capacity, dashy_date: @recapper.dashy_date, datey: @recapper.datey, game_string: @recapper.game_string, h3ptp: @recapper.h3ptp, h_initials: @recapper.h_initials, h_nick: @recapper.h_nick, hastt: @recapper.hastt, hblkt: @recapper.hblkt, hfgp: @recapper.hfgp, hfname: @recapper.hfname, hftp: @recapper.hftp, homet3fgma: @recapper.homet3fgma, hometdreb: @recapper.hometdreb, hometfgma: @recapper.hometfgma, hometftma: @recapper.hometftma, hometoreb: @recapper.hometoreb, hometpf: @recapper.hometpf, hometto: @recapper.hometto, hp10_3pma: @recapper.hp10_3pma, hp10_ast: @recapper.hp10_ast, hp10_blk: @recapper.hp10_blk, hp10_dreb: @recapper.hp10_dreb, hp10_fgma: @recapper.hp10_fgma, hp10_ftma: @recapper.hp10_ftma, hp10_min: @recapper.hp10_min, hp10_name: @recapper.hp10_name, hp10_oreb: @recapper.hp10_oreb, hp10_pf: @recapper.hp10_pf, hp10_pts: @recapper.hp10_pts, hp10_reb: @recapper.hp10_reb, hp10_starter: @recapper.hp10_starter, hp10_stl: @recapper.hp10_stl, hp10_to: @recapper.hp10_to, hp11_3pma: @recapper.hp11_3pma, hp11_ast: @recapper.hp11_ast, hp11_blk: @recapper.hp11_blk, hp11_dreb: @recapper.hp11_dreb, hp11_fgma: @recapper.hp11_fgma, hp11_ftma: @recapper.hp11_ftma, hp11_min: @recapper.hp11_min, hp11_name: @recapper.hp11_name, hp11_oreb: @recapper.hp11_oreb, hp11_pf: @recapper.hp11_pf, hp11_pts: @recapper.hp11_pts, hp11_reb: @recapper.hp11_reb, hp11_starter: @recapper.hp11_starter, hp11_stl: @recapper.hp11_stl, hp11_to: @recapper.hp11_to, hp12_3pma: @recapper.hp12_3pma, hp12_ast: @recapper.hp12_ast, hp12_blk: @recapper.hp12_blk, hp12_dreb: @recapper.hp12_dreb, hp12_fgma: @recapper.hp12_fgma, hp12_ftma: @recapper.hp12_ftma, hp12_min: @recapper.hp12_min, hp12_name: @recapper.hp12_name, hp12_oreb: @recapper.hp12_oreb, hp12_pf: @recapper.hp12_pf, hp12_pts: @recapper.hp12_pts, hp12_reb: @recapper.hp12_reb, hp12_starter: @recapper.hp12_starter, hp12_stl: @recapper.hp12_stl, hp12_to: @recapper.hp12_to, hp13_3pma: @recapper.hp13_3pma, hp13_ast: @recapper.hp13_ast, hp13_blk: @recapper.hp13_blk, hp13_dreb: @recapper.hp13_dreb, hp13_fgma: @recapper.hp13_fgma, hp13_ftma: @recapper.hp13_ftma, hp13_min: @recapper.hp13_min, hp13_name: @recapper.hp13_name, hp13_oreb: @recapper.hp13_oreb, hp13_pf: @recapper.hp13_pf, hp13_pts: @recapper.hp13_pts, hp13_reb: @recapper.hp13_reb, hp13_starter: @recapper.hp13_starter, hp13_stl: @recapper.hp13_stl, hp13_to: @recapper.hp13_to, hp1_3pma: @recapper.hp1_3pma, hp1_ast: @recapper.hp1_ast, hp1_blk: @recapper.hp1_blk, hp1_dreb: @recapper.hp1_dreb, hp1_fgma: @recapper.hp1_fgma, hp1_ftma: @recapper.hp1_ftma, hp1_min: @recapper.hp1_min, hp1_name: @recapper.hp1_name, hp1_oreb: @recapper.hp1_oreb, hp1_pf: @recapper.hp1_pf, hp1_pts: @recapper.hp1_pts, hp1_reb: @recapper.hp1_reb, hp1_starter: @recapper.hp1_starter, hp1_stl: @recapper.hp1_stl, hp1_to: @recapper.hp1_to, hp2_3pma: @recapper.hp2_3pma, hp2_ast: @recapper.hp2_ast, hp2_blk: @recapper.hp2_blk, hp2_dreb: @recapper.hp2_dreb, hp2_fgma: @recapper.hp2_fgma, hp2_ftma: @recapper.hp2_ftma, hp2_min: @recapper.hp2_min, hp2_name: @recapper.hp2_name, hp2_oreb: @recapper.hp2_oreb, hp2_pf: @recapper.hp2_pf, hp2_pts: @recapper.hp2_pts, hp2_reb: @recapper.hp2_reb, hp2_starter: @recapper.hp2_starter, hp2_stl: @recapper.hp2_stl, hp2_to: @recapper.hp2_to, hp3_3pma: @recapper.hp3_3pma, hp3_ast: @recapper.hp3_ast, hp3_blk: @recapper.hp3_blk, hp3_dreb: @recapper.hp3_dreb, hp3_fgma: @recapper.hp3_fgma, hp3_ftma: @recapper.hp3_ftma, hp3_min: @recapper.hp3_min, hp3_name: @recapper.hp3_name, hp3_oreb: @recapper.hp3_oreb, hp3_pf: @recapper.hp3_pf, hp3_pts: @recapper.hp3_pts, hp3_reb: @recapper.hp3_reb, hp3_starter: @recapper.hp3_starter, hp3_stl: @recapper.hp3_stl, hp3_to: @recapper.hp3_to, hp4_3pma: @recapper.hp4_3pma, hp4_ast: @recapper.hp4_ast, hp4_blk: @recapper.hp4_blk, hp4_dreb: @recapper.hp4_dreb, hp4_fgma: @recapper.hp4_fgma, hp4_ftma: @recapper.hp4_ftma, hp4_min: @recapper.hp4_min, hp4_name: @recapper.hp4_name, hp4_oreb: @recapper.hp4_oreb, hp4_pf: @recapper.hp4_pf, hp4_pts: @recapper.hp4_pts, hp4_reb: @recapper.hp4_reb, hp4_starter: @recapper.hp4_starter, hp4_stl: @recapper.hp4_stl, hp4_to: @recapper.hp4_to, hp5_3pma: @recapper.hp5_3pma, hp5_ast: @recapper.hp5_ast, hp5_blk: @recapper.hp5_blk, hp5_dreb: @recapper.hp5_dreb, hp5_fgma: @recapper.hp5_fgma, hp5_ftma: @recapper.hp5_ftma, hp5_min: @recapper.hp5_min, hp5_name: @recapper.hp5_name, hp5_oreb: @recapper.hp5_oreb, hp5_pf: @recapper.hp5_pf, hp5_pts: @recapper.hp5_pts, hp5_reb: @recapper.hp5_reb, hp5_starter: @recapper.hp5_starter, hp5_stl: @recapper.hp5_stl, hp5_to: @recapper.hp5_to, hp6_3pma: @recapper.hp6_3pma, hp6_ast: @recapper.hp6_ast, hp6_blk: @recapper.hp6_blk, hp6_dreb: @recapper.hp6_dreb, hp6_fgma: @recapper.hp6_fgma, hp6_ftma: @recapper.hp6_ftma, hp6_min: @recapper.hp6_min, hp6_name: @recapper.hp6_name, hp6_oreb: @recapper.hp6_oreb, hp6_pf: @recapper.hp6_pf, hp6_pts: @recapper.hp6_pts, hp6_reb: @recapper.hp6_reb, hp6_starter: @recapper.hp6_starter, hp6_stl: @recapper.hp6_stl, hp6_to: @recapper.hp6_to, hp7_3pma: @recapper.hp7_3pma, hp7_ast: @recapper.hp7_ast, hp7_blk: @recapper.hp7_blk, hp7_dreb: @recapper.hp7_dreb, hp7_fgma: @recapper.hp7_fgma, hp7_ftma: @recapper.hp7_ftma, hp7_min: @recapper.hp7_min, hp7_name: @recapper.hp7_name, hp7_oreb: @recapper.hp7_oreb, hp7_pf: @recapper.hp7_pf, hp7_pts: @recapper.hp7_pts, hp7_reb: @recapper.hp7_reb, hp7_starter: @recapper.hp7_starter, hp7_stl: @recapper.hp7_stl, hp7_to: @recapper.hp7_to, hp8_3pma: @recapper.hp8_3pma, hp8_ast: @recapper.hp8_ast, hp8_blk: @recapper.hp8_blk, hp8_dreb: @recapper.hp8_dreb, hp8_fgma: @recapper.hp8_fgma, hp8_ftma: @recapper.hp8_ftma, hp8_min: @recapper.hp8_min, hp8_name: @recapper.hp8_name, hp8_oreb: @recapper.hp8_oreb, hp8_pf: @recapper.hp8_pf, hp8_pts: @recapper.hp8_pts, hp8_reb: @recapper.hp8_reb, hp8_starter: @recapper.hp8_starter, hp8_stl: @recapper.hp8_stl, hp8_to: @recapper.hp8_to, hp9_3pma: @recapper.hp9_3pma, hp9_ast: @recapper.hp9_ast, hp9_blk: @recapper.hp9_blk, hp9_dreb: @recapper.hp9_dreb, hp9_fgma: @recapper.hp9_fgma, hp9_ftma: @recapper.hp9_ftma, hp9_min: @recapper.hp9_min, hp9_name: @recapper.hp9_name, hp9_oreb: @recapper.hp9_oreb, hp9_pf: @recapper.hp9_pf, hp9_pts: @recapper.hp9_pts, hp9_reb: @recapper.hp9_reb, hp9_starter: @recapper.hp9_starter, hp9_stl: @recapper.hp9_stl, hp9_to: @recapper.hp9_to, hq1: @recapper.hq1, hq2: @recapper.hq2, hq3: @recapper.hq3, hq4: @recapper.hq4, hrebt: @recapper.hrebt, hstlt: @recapper.hstlt, htotal: @recapper.htotal, id: @recapper.id, ref1: @recapper.ref1, ref2: @recapper.ref2, ref3: @recapper.ref3 }
    end

    assert_redirected_to recapper_path(assigns(:recapper))
  end

  test "should show recapper" do
    get :show, id: @recapper
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @recapper
    assert_response :success
  end

  test "should update recapper" do
    patch :update, id: @recapper, recapper: { a3ptp: @recapper.a3ptp, a_initials: @recapper.a_initials, a_nick: @recapper.a_nick, aastt: @recapper.aastt, ablkt: @recapper.ablkt, afgp: @recapper.afgp, afname: @recapper.afname, aftp: @recapper.aftp, ap10_3pma: @recapper.ap10_3pma, ap10_ast: @recapper.ap10_ast, ap10_blk: @recapper.ap10_blk, ap10_dreb: @recapper.ap10_dreb, ap10_fgma: @recapper.ap10_fgma, ap10_ftma: @recapper.ap10_ftma, ap10_min: @recapper.ap10_min, ap10_name: @recapper.ap10_name, ap10_oreb: @recapper.ap10_oreb, ap10_pf: @recapper.ap10_pf, ap10_pts: @recapper.ap10_pts, ap10_reb: @recapper.ap10_reb, ap10_starter: @recapper.ap10_starter, ap10_stl: @recapper.ap10_stl, ap10_to: @recapper.ap10_to, ap11_3pma: @recapper.ap11_3pma, ap11_ast: @recapper.ap11_ast, ap11_blk: @recapper.ap11_blk, ap11_dreb: @recapper.ap11_dreb, ap11_fgma: @recapper.ap11_fgma, ap11_ftma: @recapper.ap11_ftma, ap11_min: @recapper.ap11_min, ap11_name: @recapper.ap11_name, ap11_oreb: @recapper.ap11_oreb, ap11_pf: @recapper.ap11_pf, ap11_pts: @recapper.ap11_pts, ap11_reb: @recapper.ap11_reb, ap11_starter: @recapper.ap11_starter, ap11_stl: @recapper.ap11_stl, ap11_to: @recapper.ap11_to, ap12_3pma: @recapper.ap12_3pma, ap12_ast: @recapper.ap12_ast, ap12_blk: @recapper.ap12_blk, ap12_dreb: @recapper.ap12_dreb, ap12_fgma: @recapper.ap12_fgma, ap12_ftma: @recapper.ap12_ftma, ap12_min: @recapper.ap12_min, ap12_name: @recapper.ap12_name, ap12_oreb: @recapper.ap12_oreb, ap12_pf: @recapper.ap12_pf, ap12_pts: @recapper.ap12_pts, ap12_reb: @recapper.ap12_reb, ap12_starter: @recapper.ap12_starter, ap12_stl: @recapper.ap12_stl, ap12_to: @recapper.ap12_to, ap13_3pma: @recapper.ap13_3pma, ap13_ast: @recapper.ap13_ast, ap13_blk: @recapper.ap13_blk, ap13_dreb: @recapper.ap13_dreb, ap13_fgma: @recapper.ap13_fgma, ap13_ftma: @recapper.ap13_ftma, ap13_min: @recapper.ap13_min, ap13_name: @recapper.ap13_name, ap13_oreb: @recapper.ap13_oreb, ap13_pf: @recapper.ap13_pf, ap13_pts: @recapper.ap13_pts, ap13_reb: @recapper.ap13_reb, ap13_starter: @recapper.ap13_starter, ap13_stl: @recapper.ap13_stl, ap13_to: @recapper.ap13_to, ap1_3pma: @recapper.ap1_3pma, ap1_ast: @recapper.ap1_ast, ap1_blk: @recapper.ap1_blk, ap1_dreb: @recapper.ap1_dreb, ap1_fgma: @recapper.ap1_fgma, ap1_ftma: @recapper.ap1_ftma, ap1_min: @recapper.ap1_min, ap1_name: @recapper.ap1_name, ap1_oreb: @recapper.ap1_oreb, ap1_pf: @recapper.ap1_pf, ap1_pts: @recapper.ap1_pts, ap1_reb: @recapper.ap1_reb, ap1_starter: @recapper.ap1_starter, ap1_stl: @recapper.ap1_stl, ap1_to: @recapper.ap1_to, ap2_3pma: @recapper.ap2_3pma, ap2_ast: @recapper.ap2_ast, ap2_blk: @recapper.ap2_blk, ap2_dreb: @recapper.ap2_dreb, ap2_fgma: @recapper.ap2_fgma, ap2_ftma: @recapper.ap2_ftma, ap2_min: @recapper.ap2_min, ap2_name: @recapper.ap2_name, ap2_oreb: @recapper.ap2_oreb, ap2_pf: @recapper.ap2_pf, ap2_pts: @recapper.ap2_pts, ap2_reb: @recapper.ap2_reb, ap2_starter: @recapper.ap2_starter, ap2_stl: @recapper.ap2_stl, ap2_to: @recapper.ap2_to, ap3_3pma: @recapper.ap3_3pma, ap3_ast: @recapper.ap3_ast, ap3_blk: @recapper.ap3_blk, ap3_dreb: @recapper.ap3_dreb, ap3_fgma: @recapper.ap3_fgma, ap3_ftma: @recapper.ap3_ftma, ap3_min: @recapper.ap3_min, ap3_name: @recapper.ap3_name, ap3_oreb: @recapper.ap3_oreb, ap3_pf: @recapper.ap3_pf, ap3_pts: @recapper.ap3_pts, ap3_reb: @recapper.ap3_reb, ap3_starter: @recapper.ap3_starter, ap3_stl: @recapper.ap3_stl, ap3_to: @recapper.ap3_to, ap4_3pma: @recapper.ap4_3pma, ap4_ast: @recapper.ap4_ast, ap4_blk: @recapper.ap4_blk, ap4_dreb: @recapper.ap4_dreb, ap4_fgma: @recapper.ap4_fgma, ap4_ftma: @recapper.ap4_ftma, ap4_min: @recapper.ap4_min, ap4_name: @recapper.ap4_name, ap4_oreb: @recapper.ap4_oreb, ap4_pf: @recapper.ap4_pf, ap4_pts: @recapper.ap4_pts, ap4_reb: @recapper.ap4_reb, ap4_starter: @recapper.ap4_starter, ap4_stl: @recapper.ap4_stl, ap4_to: @recapper.ap4_to, ap5_3pma: @recapper.ap5_3pma, ap5_ast: @recapper.ap5_ast, ap5_blk: @recapper.ap5_blk, ap5_dreb: @recapper.ap5_dreb, ap5_fgma: @recapper.ap5_fgma, ap5_ftma: @recapper.ap5_ftma, ap5_min: @recapper.ap5_min, ap5_name: @recapper.ap5_name, ap5_oreb: @recapper.ap5_oreb, ap5_pf: @recapper.ap5_pf, ap5_pts: @recapper.ap5_pts, ap5_reb: @recapper.ap5_reb, ap5_starter: @recapper.ap5_starter, ap5_stl: @recapper.ap5_stl, ap5_to: @recapper.ap5_to, ap6_3pma: @recapper.ap6_3pma, ap6_ast: @recapper.ap6_ast, ap6_blk: @recapper.ap6_blk, ap6_dreb: @recapper.ap6_dreb, ap6_fgma: @recapper.ap6_fgma, ap6_ftma: @recapper.ap6_ftma, ap6_min: @recapper.ap6_min, ap6_name: @recapper.ap6_name, ap6_oreb: @recapper.ap6_oreb, ap6_pf: @recapper.ap6_pf, ap6_pts: @recapper.ap6_pts, ap6_reb: @recapper.ap6_reb, ap6_starter: @recapper.ap6_starter, ap6_stl: @recapper.ap6_stl, ap6_to: @recapper.ap6_to, ap7_3pma: @recapper.ap7_3pma, ap7_ast: @recapper.ap7_ast, ap7_blk: @recapper.ap7_blk, ap7_dreb: @recapper.ap7_dreb, ap7_fgma: @recapper.ap7_fgma, ap7_ftma: @recapper.ap7_ftma, ap7_min: @recapper.ap7_min, ap7_name: @recapper.ap7_name, ap7_oreb: @recapper.ap7_oreb, ap7_pf: @recapper.ap7_pf, ap7_pts: @recapper.ap7_pts, ap7_reb: @recapper.ap7_reb, ap7_starter: @recapper.ap7_starter, ap7_stl: @recapper.ap7_stl, ap7_to: @recapper.ap7_to, ap8_3pma: @recapper.ap8_3pma, ap8_ast: @recapper.ap8_ast, ap8_blk: @recapper.ap8_blk, ap8_dreb: @recapper.ap8_dreb, ap8_fgma: @recapper.ap8_fgma, ap8_ftma: @recapper.ap8_ftma, ap8_min: @recapper.ap8_min, ap8_name: @recapper.ap8_name, ap8_oreb: @recapper.ap8_oreb, ap8_pf: @recapper.ap8_pf, ap8_pts: @recapper.ap8_pts, ap8_reb: @recapper.ap8_reb, ap8_starter: @recapper.ap8_starter, ap8_stl: @recapper.ap8_stl, ap8_to: @recapper.ap8_to, ap9_3pma: @recapper.ap9_3pma, ap9_ast: @recapper.ap9_ast, ap9_blk: @recapper.ap9_blk, ap9_dreb: @recapper.ap9_dreb, ap9_fgma: @recapper.ap9_fgma, ap9_ftma: @recapper.ap9_ftma, ap9_min: @recapper.ap9_min, ap9_name: @recapper.ap9_name, ap9_oreb: @recapper.ap9_oreb, ap9_pf: @recapper.ap9_pf, ap9_pts: @recapper.ap9_pts, ap9_reb: @recapper.ap9_reb, ap9_starter: @recapper.ap9_starter, ap9_stl: @recapper.ap9_stl, ap9_to: @recapper.ap9_to, aq1: @recapper.aq1, aq2: @recapper.aq2, aq3: @recapper.aq3, aq4: @recapper.aq4, arebt: @recapper.arebt, arena: @recapper.arena, astlt: @recapper.astlt, atotal: @recapper.atotal, attendance: @recapper.attendance, awayt3fgma: @recapper.awayt3fgma, awaytdreb: @recapper.awaytdreb, awaytfgma: @recapper.awaytfgma, awaytftma: @recapper.awaytftma, awaytoreb: @recapper.awaytoreb, awaytpf: @recapper.awaytpf, awaytto: @recapper.awaytto, capacity: @recapper.capacity, dashy_date: @recapper.dashy_date, datey: @recapper.datey, game_string: @recapper.game_string, h3ptp: @recapper.h3ptp, h_initials: @recapper.h_initials, h_nick: @recapper.h_nick, hastt: @recapper.hastt, hblkt: @recapper.hblkt, hfgp: @recapper.hfgp, hfname: @recapper.hfname, hftp: @recapper.hftp, homet3fgma: @recapper.homet3fgma, hometdreb: @recapper.hometdreb, hometfgma: @recapper.hometfgma, hometftma: @recapper.hometftma, hometoreb: @recapper.hometoreb, hometpf: @recapper.hometpf, hometto: @recapper.hometto, hp10_3pma: @recapper.hp10_3pma, hp10_ast: @recapper.hp10_ast, hp10_blk: @recapper.hp10_blk, hp10_dreb: @recapper.hp10_dreb, hp10_fgma: @recapper.hp10_fgma, hp10_ftma: @recapper.hp10_ftma, hp10_min: @recapper.hp10_min, hp10_name: @recapper.hp10_name, hp10_oreb: @recapper.hp10_oreb, hp10_pf: @recapper.hp10_pf, hp10_pts: @recapper.hp10_pts, hp10_reb: @recapper.hp10_reb, hp10_starter: @recapper.hp10_starter, hp10_stl: @recapper.hp10_stl, hp10_to: @recapper.hp10_to, hp11_3pma: @recapper.hp11_3pma, hp11_ast: @recapper.hp11_ast, hp11_blk: @recapper.hp11_blk, hp11_dreb: @recapper.hp11_dreb, hp11_fgma: @recapper.hp11_fgma, hp11_ftma: @recapper.hp11_ftma, hp11_min: @recapper.hp11_min, hp11_name: @recapper.hp11_name, hp11_oreb: @recapper.hp11_oreb, hp11_pf: @recapper.hp11_pf, hp11_pts: @recapper.hp11_pts, hp11_reb: @recapper.hp11_reb, hp11_starter: @recapper.hp11_starter, hp11_stl: @recapper.hp11_stl, hp11_to: @recapper.hp11_to, hp12_3pma: @recapper.hp12_3pma, hp12_ast: @recapper.hp12_ast, hp12_blk: @recapper.hp12_blk, hp12_dreb: @recapper.hp12_dreb, hp12_fgma: @recapper.hp12_fgma, hp12_ftma: @recapper.hp12_ftma, hp12_min: @recapper.hp12_min, hp12_name: @recapper.hp12_name, hp12_oreb: @recapper.hp12_oreb, hp12_pf: @recapper.hp12_pf, hp12_pts: @recapper.hp12_pts, hp12_reb: @recapper.hp12_reb, hp12_starter: @recapper.hp12_starter, hp12_stl: @recapper.hp12_stl, hp12_to: @recapper.hp12_to, hp13_3pma: @recapper.hp13_3pma, hp13_ast: @recapper.hp13_ast, hp13_blk: @recapper.hp13_blk, hp13_dreb: @recapper.hp13_dreb, hp13_fgma: @recapper.hp13_fgma, hp13_ftma: @recapper.hp13_ftma, hp13_min: @recapper.hp13_min, hp13_name: @recapper.hp13_name, hp13_oreb: @recapper.hp13_oreb, hp13_pf: @recapper.hp13_pf, hp13_pts: @recapper.hp13_pts, hp13_reb: @recapper.hp13_reb, hp13_starter: @recapper.hp13_starter, hp13_stl: @recapper.hp13_stl, hp13_to: @recapper.hp13_to, hp1_3pma: @recapper.hp1_3pma, hp1_ast: @recapper.hp1_ast, hp1_blk: @recapper.hp1_blk, hp1_dreb: @recapper.hp1_dreb, hp1_fgma: @recapper.hp1_fgma, hp1_ftma: @recapper.hp1_ftma, hp1_min: @recapper.hp1_min, hp1_name: @recapper.hp1_name, hp1_oreb: @recapper.hp1_oreb, hp1_pf: @recapper.hp1_pf, hp1_pts: @recapper.hp1_pts, hp1_reb: @recapper.hp1_reb, hp1_starter: @recapper.hp1_starter, hp1_stl: @recapper.hp1_stl, hp1_to: @recapper.hp1_to, hp2_3pma: @recapper.hp2_3pma, hp2_ast: @recapper.hp2_ast, hp2_blk: @recapper.hp2_blk, hp2_dreb: @recapper.hp2_dreb, hp2_fgma: @recapper.hp2_fgma, hp2_ftma: @recapper.hp2_ftma, hp2_min: @recapper.hp2_min, hp2_name: @recapper.hp2_name, hp2_oreb: @recapper.hp2_oreb, hp2_pf: @recapper.hp2_pf, hp2_pts: @recapper.hp2_pts, hp2_reb: @recapper.hp2_reb, hp2_starter: @recapper.hp2_starter, hp2_stl: @recapper.hp2_stl, hp2_to: @recapper.hp2_to, hp3_3pma: @recapper.hp3_3pma, hp3_ast: @recapper.hp3_ast, hp3_blk: @recapper.hp3_blk, hp3_dreb: @recapper.hp3_dreb, hp3_fgma: @recapper.hp3_fgma, hp3_ftma: @recapper.hp3_ftma, hp3_min: @recapper.hp3_min, hp3_name: @recapper.hp3_name, hp3_oreb: @recapper.hp3_oreb, hp3_pf: @recapper.hp3_pf, hp3_pts: @recapper.hp3_pts, hp3_reb: @recapper.hp3_reb, hp3_starter: @recapper.hp3_starter, hp3_stl: @recapper.hp3_stl, hp3_to: @recapper.hp3_to, hp4_3pma: @recapper.hp4_3pma, hp4_ast: @recapper.hp4_ast, hp4_blk: @recapper.hp4_blk, hp4_dreb: @recapper.hp4_dreb, hp4_fgma: @recapper.hp4_fgma, hp4_ftma: @recapper.hp4_ftma, hp4_min: @recapper.hp4_min, hp4_name: @recapper.hp4_name, hp4_oreb: @recapper.hp4_oreb, hp4_pf: @recapper.hp4_pf, hp4_pts: @recapper.hp4_pts, hp4_reb: @recapper.hp4_reb, hp4_starter: @recapper.hp4_starter, hp4_stl: @recapper.hp4_stl, hp4_to: @recapper.hp4_to, hp5_3pma: @recapper.hp5_3pma, hp5_ast: @recapper.hp5_ast, hp5_blk: @recapper.hp5_blk, hp5_dreb: @recapper.hp5_dreb, hp5_fgma: @recapper.hp5_fgma, hp5_ftma: @recapper.hp5_ftma, hp5_min: @recapper.hp5_min, hp5_name: @recapper.hp5_name, hp5_oreb: @recapper.hp5_oreb, hp5_pf: @recapper.hp5_pf, hp5_pts: @recapper.hp5_pts, hp5_reb: @recapper.hp5_reb, hp5_starter: @recapper.hp5_starter, hp5_stl: @recapper.hp5_stl, hp5_to: @recapper.hp5_to, hp6_3pma: @recapper.hp6_3pma, hp6_ast: @recapper.hp6_ast, hp6_blk: @recapper.hp6_blk, hp6_dreb: @recapper.hp6_dreb, hp6_fgma: @recapper.hp6_fgma, hp6_ftma: @recapper.hp6_ftma, hp6_min: @recapper.hp6_min, hp6_name: @recapper.hp6_name, hp6_oreb: @recapper.hp6_oreb, hp6_pf: @recapper.hp6_pf, hp6_pts: @recapper.hp6_pts, hp6_reb: @recapper.hp6_reb, hp6_starter: @recapper.hp6_starter, hp6_stl: @recapper.hp6_stl, hp6_to: @recapper.hp6_to, hp7_3pma: @recapper.hp7_3pma, hp7_ast: @recapper.hp7_ast, hp7_blk: @recapper.hp7_blk, hp7_dreb: @recapper.hp7_dreb, hp7_fgma: @recapper.hp7_fgma, hp7_ftma: @recapper.hp7_ftma, hp7_min: @recapper.hp7_min, hp7_name: @recapper.hp7_name, hp7_oreb: @recapper.hp7_oreb, hp7_pf: @recapper.hp7_pf, hp7_pts: @recapper.hp7_pts, hp7_reb: @recapper.hp7_reb, hp7_starter: @recapper.hp7_starter, hp7_stl: @recapper.hp7_stl, hp7_to: @recapper.hp7_to, hp8_3pma: @recapper.hp8_3pma, hp8_ast: @recapper.hp8_ast, hp8_blk: @recapper.hp8_blk, hp8_dreb: @recapper.hp8_dreb, hp8_fgma: @recapper.hp8_fgma, hp8_ftma: @recapper.hp8_ftma, hp8_min: @recapper.hp8_min, hp8_name: @recapper.hp8_name, hp8_oreb: @recapper.hp8_oreb, hp8_pf: @recapper.hp8_pf, hp8_pts: @recapper.hp8_pts, hp8_reb: @recapper.hp8_reb, hp8_starter: @recapper.hp8_starter, hp8_stl: @recapper.hp8_stl, hp8_to: @recapper.hp8_to, hp9_3pma: @recapper.hp9_3pma, hp9_ast: @recapper.hp9_ast, hp9_blk: @recapper.hp9_blk, hp9_dreb: @recapper.hp9_dreb, hp9_fgma: @recapper.hp9_fgma, hp9_ftma: @recapper.hp9_ftma, hp9_min: @recapper.hp9_min, hp9_name: @recapper.hp9_name, hp9_oreb: @recapper.hp9_oreb, hp9_pf: @recapper.hp9_pf, hp9_pts: @recapper.hp9_pts, hp9_reb: @recapper.hp9_reb, hp9_starter: @recapper.hp9_starter, hp9_stl: @recapper.hp9_stl, hp9_to: @recapper.hp9_to, hq1: @recapper.hq1, hq2: @recapper.hq2, hq3: @recapper.hq3, hq4: @recapper.hq4, hrebt: @recapper.hrebt, hstlt: @recapper.hstlt, htotal: @recapper.htotal, id: @recapper.id, ref1: @recapper.ref1, ref2: @recapper.ref2, ref3: @recapper.ref3 }
    assert_redirected_to recapper_path(assigns(:recapper))
  end

  test "should destroy recapper" do
    assert_difference('Recapper.count', -1) do
      delete :destroy, id: @recapper
    end

    assert_redirected_to recappers_path
  end
end