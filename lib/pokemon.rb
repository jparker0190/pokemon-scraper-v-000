class Pokemon
  attr_accessor :name, :type, :db

  def initialize(id=nil, name, type, db)
    @name = name
    @type = type
    @db = db
    @id = id
  end
  def save
    sql = <<-SQL 
    INSERT INTO pokemon (name, type) VALUES (?,?)
    SQL
    
  end
  def self.create(name:, type:)
    song = Song.new(name, type)
    song.save
    song
  end
end
