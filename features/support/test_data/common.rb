module Common
  def Common.get_url route
    YAML.load_file("#{TEST_DATA_DIR}/data.yml")["urls"][route]
  end

  def Common.resident_user route
 	YAML.load_file("#{TEST_DATA_DIR}/data.yml")["resident_user"] [route] 
  end

end