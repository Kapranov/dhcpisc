ActiveScaffold.set_defaults do |config|
  config.list.per_page = 17
  config.ignore_columns.add [:ip_sw, :oldips, :comment, :created_at, :updated_at, :lock_version]
  @@empty_field_text = '-'
end
