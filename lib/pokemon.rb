class Pokemon
  attr_accessor :name, :type, :db, :id
  def initialize(id:, name:, type:, db:)
    poke = Pokemon.new(id, name, type, db)
    poke
  end
end
