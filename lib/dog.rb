class Dog
  attr_accessor :id, :name, :breed

  def initialize(attributes)
    attributes.each do |k, v|
      self.send("#{k}=", v)
    end
  end

  def self.create_table
    sql = <<-SQL
      CREATE TABLE IF NOT EXISTS dogs (
        id INTEGER PRIMARY KEY,
        name TEXT,
        breed TEXT
      )
    SQL
    DB[:conn].execute(sql)
  end

  def self.drop_table
    sql = "DROP TABLE IF EXISTS dogs"
    DB[:conn].execute(sql)
  end

  def save
    if self.id
      self.update
    else
      
    end
  end

end
