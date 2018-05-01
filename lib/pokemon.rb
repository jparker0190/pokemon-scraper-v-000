class Pokemon
  @@all = []
  attr_accessor :name, :type, :db, :id
  def initialize(name:, type:, db:, id:)
    @name = name
    @type = type
    @db = db
    @id = id
    @@all << self
  end
  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?,?)", name, type)
  end
  def self.find(id, db)
    pokemon = db.execute("SELECT * FROM pokemon where id = #{id} LIMIT 1")
    return pokemon
  end
end
