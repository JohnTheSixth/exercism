class Robot

  LETTERS = ('A'..'Z').to_a
  @@assigned = []

  def initialize
    @name = create_name
  end

  def name
    @name = @name || create_name
  end

  def reset
    @@assigned.delete(@name)
    @name = nil
  end

private

  def create_name
    new_name = generate

    if @@assigned.include? new_name
      new_name = generate
    end

    @@assigned << new_name
    new_name
  end

  def generate
    random_name = LETTERS.shuffle.first(2) << rand(101..999)
    random_name.join
  end

end

module BookKeeping
  VERSION = 2 # Where the version number matches the one in the test.
end
