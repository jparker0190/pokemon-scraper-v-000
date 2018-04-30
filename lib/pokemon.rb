class Pokemon
  attr_accessor :name, :type, :db

  def initialize(name, type, db, id=nil)
    @name = name
    @type = type
    @db = db
    @id = id
  end
  def save
    sql = <<-SQL 
    INSERT INTO pokemon (name, type, id) VALUES (?,?,?)
    SQL 
  END
end
