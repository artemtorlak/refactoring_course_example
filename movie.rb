class Movie
  attr_accessor :title, :price_code

  CHILDRENS = 2.freeze
  NEW_RELEASE = 1.freeze
  REGULAR = 0.freeze

  def initialize(title, price_code)
    @title = title
    @price_code = price_code
  end
end
