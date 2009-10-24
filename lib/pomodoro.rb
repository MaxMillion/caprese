class Pomodoro
  def self.config
    YAML.load_file(CONFIG_PATH + "actions.yml")
  end
  
  def self.engage
    config.each do |action|
      Object.const_get(action).engage
    end
  end
  
  def self.disengage
    config.each do |action|
      Object.const_get(action).disengage
    end
  end
end