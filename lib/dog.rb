class Dog
  attr_accessor :id, :name, :breed

  def initialize(attributes)
    attributes.each do |k, v|
      self.send("#{k}=", v)
    end
  end

  def self.create_table
    sql = <<-SQL
      CREATE TABLE IF NOT EXIST dogs VALUES(
        id INTEGER PRIMARY KEY,
        name TEXT,
        breed TEXT
      )
    SQL
    DB[:conn].execute(sql)
  end

end
