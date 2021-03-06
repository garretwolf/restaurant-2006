class Restaurant
attr_reader :opening_time, :name, :dishes

  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end

  def closing_time(time)
    ((opening_time.to_i + time).round(2).to_s) + ':00'
  end

  def add_dish(dish)
    @dishes.push(dish)
  end

  def open_for_lunch?
    if @opening_time.to_i < 12
      return true
    else
      return false
    end
  end

  def menu_dish_names
    @dishes.map(&:upcase)
  end

  # def announce_closing_time
  # end
end
