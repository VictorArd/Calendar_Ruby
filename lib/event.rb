require "pry"
require "rb-readline"
require 'time'


class Event
  attr_accessor :start_date, :length, :title, :guest
  @@array_event = []

  def initialize(start_date, length, title, guest)
    @start_date = "Date de début : #{start_date}"
    start_date = Time.parse("#{@start_date}")

    @length = "Durée : #{length} minutes"

    @title = "Titre : #{title}"

    @guest = "Invités : #{guest.join(', ')}"

    @time_now = Time.now

    @@array_event << @start_date << @length << @title << @guest
  end

  def postpone_24h(start_date)
    @new_date = start_date + 60 * 60 * 24
    return @new_date
  end

  def end_date(start_date, length)
    @date_end = start_date + length
    return @date_end
  end

  def is_past
    if start_date < time_now
      return false
    else
      return true
    end
  end

  def is_future
    !self.is_past
  end

  def is_soon
    if start_date < 30
      return false
    else
      return true
    end
  end


  def self.to_s
    puts @@array_event.join(', ').to_s
  end  

end

#
binding.pry
#Time.parse("2010-10-31 12:00")