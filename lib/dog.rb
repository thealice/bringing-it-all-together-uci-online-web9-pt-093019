class Dog
  attr_accessor :id, :name, :breed

  def initialize(attributes)
    binding.pry
    attributes.each do |k, v|
      self.send("k=", v)
    end
  end
  
  def attributes
    
  end

end
