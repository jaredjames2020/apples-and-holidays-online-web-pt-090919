require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  
    holiday_hash[:winter].each do |k, v|
       v << supply
      #binding.pry
    end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  
   holiday_hash[:spring][:memorial_day] << supply
      #binding.pry
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  
  holiday_hash[season][holiday_name] = supply_array
holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].values.flatten

end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  
  
  # season = ""
  # holiday = ""
  # supplies = ""
  # holiday_hash.each do |k, v|
  #   season = "#{k.capitalize.to_s + ":"}"
  #   puts season
  #   v.each do |sub_key, sub_value|
  #     holiday = sub_key.capitalize.to_s + ":"
  #         sub_value.each do |n|
  #           supplies = n
  #           puts holiday + " " + supplies
  #           #binding.pry
  
    holiday_hash.each do |season, holidays|
     puts "#{season.capitalize}:" #capitalize each word plus add :
    holidays.each do |holiday, supplies|
      puts"  #{holiday.to_s.split('_').collect {|w| w.capitalize }.join(' ') }: #{supplies.join(", ")}"
              #capitalize each word use split to capitalize and return joint words use join to join them back
              #join supplies that are individual strings with , 
    end
  end
end
  

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  g = []
  holiday_hash.each do |season, holidays|
    holidays.collect do |holiday, supplies|
      if supplies.include?("BBQ")
         g << holidays.key(supplies)
          #binding.pry
      end
    end
  end
      g
end







