Dynamoid.configure do |config|
  settings = YAML.load_file(Rails.root.join('config', 'dynamodb.yml'))[Rails.env]
  settings.each {|k, v| config.send("#{k}=".to_sym, v) }
end
