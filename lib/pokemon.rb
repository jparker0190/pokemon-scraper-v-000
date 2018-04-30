class Pokemon
  attr_accessor :name, :type, :db

  def initialize(id:, name:, type:, db:)
    @name = name
    @type = type
    @db = db
    @id = id
  end

end
