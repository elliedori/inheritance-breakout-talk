class Athlete
  attr_accessor :name, :flexibility
  attr_reader :experience

  @@athletes = 0
  def initialize(args)
    @name = args.fetch(:name)
    @flexibility = args.fetch(:flexibility, 0)
    @experience = args.fetch(:experience, 0)
    @@athletes += 1
  end

  def pass_year
    @experience += 1
  end

  def stretch
    puts "Stretching..."
    @flexibility += self.class::STRETCH_FACTOR
  end

  def self.athlete_num
        puts "#{@@athletes} athletes currently exist."
  end

end

Athlete.athlete_num