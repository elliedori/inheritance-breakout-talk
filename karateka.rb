require_relative 'athlete'

class Karateka < Athlete
  attr_accessor :name, :flexibility
  attr_reader :experience, :belt

  POSSIBLE_BELTS = ["white", "yellow", "green", "blue", "purple", "brown", "black"]
  STRETCH_FACTOR = 3

  def initialize(args)
    # @name = args.fetch(:name)
    # @flexibility = args.fetch(:flexibility, 0)
    # @experience = args.fetch(:experience, 0)
    super
    @belt = args.fetch(:belt, "white")
  end

  #  def stretch
  #   puts "Stretching..."
  #   @flexibility += 3
  # end

  def rank_up
    current_belt_idx = POSSIBLE_BELTS.find_index(@belt)
    @belt = POSSIBLE_BELTS[current_belt_idx + 1]
  end

  # def pass_year
  #   @experience += 1
  # end

end

Karateka.new(name: "Tim", flexibility: 6, experience: 10)
