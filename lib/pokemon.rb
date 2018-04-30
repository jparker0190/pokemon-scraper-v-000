class Pokemon
  attr_accessor :name, :type, :db
  
  def initialize(name, type, db)
    @name = name
    @type = type
    @db = db
  end
  def self.all
    @@all
  end
end
