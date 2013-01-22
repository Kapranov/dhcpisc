class H2sController < ApplicationController
  active_scaffold :h2 do |conf|
    active_scaffold_config.list.columns.add [ :id ]
    active_scaffold_config.list.columns = [:blocked, :fio, :adress, :mac, :ip, :vlan, :tp, :sw_port, :def_gw, :netmask, :dns1, :dns2, :homenet]
    active_scaffold_config.columns[:blocked].description = "open/close state customers"
    active_scaffold_config.delete.link.confirm = "Shows that you can change the confirm text  for delete!"
    conf.actions.add :export
    conf.export.columns = [ :id, :fio, :adress, :mac ]
    conf.export.default_deselected_columns = [ :id ]
    conf.export.default_delimiter = ';'
    conf.export.force_quotes = true
  end
end
