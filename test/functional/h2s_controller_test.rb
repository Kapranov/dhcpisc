require 'test_helper'

class H2sControllerTest < ActionController::TestCase
  setup do
    @h2 = h2s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:h2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create h2" do
    assert_difference('H2.count') do
      post :create, h2: { adress: @h2.adress, blocked: @h2.blocked, comment: @h2.comment, def_gw: @h2.def_gw, dns1: @h2.dns1, dns2: @h2.dns2, fio: @h2.fio, homenet: @h2.homenet, ip: @h2.ip, ip_sw: @h2.ip_sw, mac: @h2.mac, netmask: @h2.netmask, oldips: @h2.oldips, sw_port: @h2.sw_port, tp: @h2.tp, vlan: @h2.vlan }
    end

    assert_redirected_to h2_path(assigns(:h2))
  end

  test "should show h2" do
    get :show, id: @h2
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @h2
    assert_response :success
  end

  test "should update h2" do
    put :update, id: @h2, h2: { adress: @h2.adress, blocked: @h2.blocked, comment: @h2.comment, def_gw: @h2.def_gw, dns1: @h2.dns1, dns2: @h2.dns2, fio: @h2.fio, homenet: @h2.homenet, ip: @h2.ip, ip_sw: @h2.ip_sw, mac: @h2.mac, netmask: @h2.netmask, oldips: @h2.oldips, sw_port: @h2.sw_port, tp: @h2.tp, vlan: @h2.vlan }
    assert_redirected_to h2_path(assigns(:h2))
  end

  test "should destroy h2" do
    assert_difference('H2.count', -1) do
      delete :destroy, id: @h2
    end

    assert_redirected_to h2s_path
  end
end
