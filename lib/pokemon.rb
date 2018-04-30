class Pokemon
  attr_accessor :name, :type, :db
  def initialize(id: id, name: name, type: type, db: db)
    self.id = id
    self.name = name
    self.type = type
    self.db = db
  end
end
