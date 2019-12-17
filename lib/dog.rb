class Dog
  attr_accessor :id, :name, :breed

  def initialize(attributes)
    attributes.each do |k, v|
      self.send("#{k}=", v)
    end
  end

  def self.create_table

  end

end
