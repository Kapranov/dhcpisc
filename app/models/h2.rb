# coding: utf-8

class H2 < ActiveRecord::Base
  attr_accessible :id, :adress, :blocked, :comment, :def_gw, :dns1, :dns2, :fio, :homenet, :ip, :ip_sw, :mac, :netmask, :oldips, :sw_port, :tp, :vlan

  def to_label
    "ID client # #{id} #{fio} #{adress} MAC:#{mac} IP:#{ip} Port:#{sw_port} Vlan:#{vlan} #{tp}"
  end

  validates_format_of :adress, :with => %r{^.+$}
  validates_format_of :def_gw, :with => %r{^\d+\.\d+\.\d+\.\d+$}
  validates_format_of :dns1, :with => %r{^\d+\.\d+\.\d+\.\d+$}
  validates_format_of :dns2, :with => %r{^\d+\.\d+\.\d+\.\d+$}
  validates_format_of :fio, :with => %r{^([А-Я][а-я]{2,7})(\s{1})([А-Я])\.([А-Я])\.$}
  validates_format_of :homenet, :with => %r{0|1}
  validates_format_of :ip, :with => %r{^\d+\.\d+\.\d+\.\d+$}
  validates_format_of :mac, :with => %r{^[a-f0-9][a-f0-9]:[a-f0-9][a-f0-9]:[a-f0-9][a-f0-9]:[a-f0-9][a-f0-9]:[a-f0-9][a-f0-9]:[a-f0-9][a-f0-9]$}
  validates_format_of :netmask, :with => %r{^[2][5][5]\.[2][5][5]\.[2][5][4]\.[0]$}
  validates_format_of :sw_port, :with => %r{^\d{1,52}$}
  validates_format_of :tp, :with => %r{^.+$}
  validates_format_of :vlan, :with => %r{^25|69|24|23|843$}
end
