require 'yaml'


class Code
  def data
    @data ||= begin
      YAML.load_file(File.join(File.dirname(__FILE__),"currencies.yml"))
    end
  end

  def [] key
    data[key]
  end

end