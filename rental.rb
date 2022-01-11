class Rental
  attr_reader :movie, :days_rented

  def initialize(movie, days_rented)
    @movie = movie
    @days_rented = days_rented
  end

  def getCharge
    result = 0

    case movie.price_code
    when Movie::CHILDRENS
      result += 1.5
      if(days_rented > 3)
        result += (days_rented - 3) * 1.5
      end
    when Movie::NEW_RELEASE
      result += days_rented * 3
    when Movie::REGULAR
      result += 2
      if(days_rented > 2)
        result += (days_rented - 2) * 1.5
      end
    end

    return result
  end
end
