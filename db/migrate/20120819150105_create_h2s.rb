class CreateH2s < ActiveRecord::Migration
  def change
    create_table :h2s do |t|
      t.string :mac, :limit => 17, :null => false
      t.string :ip, :limit => 15, :null => false
      t.string :fio, :limit => 128
      t.string :adress, :limit => 128
      t.string :tp, :limit => 128
      t.column :ip_sw, "BIGINT(6)"
      t.string :def_gw, :limit => 13
      t.column :vlan, "INT(6)"
      t.string :netmask, :limit => 13
      t.string :dns1, :limit => 14
      t.string :dns2, :limit => 14
      t.column :sw_port, "INT(6)"
      t.boolean :blocked, :limit => 1
      t.text :comment, :limit => nil
      t.text :oldips, :limit => nil
      t.integer :homenet, :limit => 1, :null => false

      t.timestamps
    end
  end
end
