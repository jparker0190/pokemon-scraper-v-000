class Pokemon
  attr_accessor :name, :type, :db, :id
  def initialize(name:, type:, db:, id:)
    @name = name
    @type = type
    @db = db
    @id = id
  end
  def save
    sql = <<-SQL
    INSERT INTO pokemon(name, type) VALUES (?,?)
    SQL
  end
end
