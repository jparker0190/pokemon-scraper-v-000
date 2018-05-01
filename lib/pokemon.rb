class Pokemon
  attr_accessor :name, :type, :db, :id
  def initialize(name:, type:, db:, id:)
    @name = name
    @type = type
    @db = db
    @id = id
  end
  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?,?)", name, type)
  end
  def self.new_from_db(row)
    new_pi = self.new
    new_pi.id = row[0]
    new_pi.name = row[1]
    new_pi.type = row[2]
    new_pi
  end
  def self.find(id,db)
    sql = <<-SQL
    SELECT * FROM pokemon where id = ? LIMIT 1
    SQL
    db.execute(sql,id).map do |row|
      self.new_from_db(row)
    end.first
  end
end
