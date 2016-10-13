require_relative 'athlete'

class Yogi < Athlete
  attr_accessor :name, :superpower, :flexibility
  attr_reader :experience
  @@num_of_yogi = 0
  STRETCH_FACTOR = 5

  def initialize(args)
    # @name = args.fetch(:name)
    # @flexibility = args.fetch(:flexibility, 0)
    # @experience = args.fetch(:experience, 0)
    super
    @@num_of_yogi += 1
    @superpower = args.fetch(:superpower, "mind-reading")
  end

  # def stretch
  #   puts "Stretching..."
  #   @flexibility += 5
  # end

  def self.count_yogis
    puts "#{@@num_of_yogi} yogis currently exist."
  end

  def levitate(height)
    puts "#{@name} levitated to a height of #{height} feet!"
  end

  # def pass_year
  #   @experience += 1
  # end

end

Yogi.new(name: "Tim", flexibility: 6, experience: 10)
Yogi.new(name: "Bob", flexibility: 6, experience: 10)
Yogi.new(name: "Katie", flexibility: 6, experience: 10)
Yogi.new(name: "Julia", flexibility: 6, experience: 10)
Yogi.count_yogis
