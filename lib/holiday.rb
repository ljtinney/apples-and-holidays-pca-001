def second_supply_for_fourth_of_july(holiday_hash)
  holiday_supplies = {
    :winter => {
      :christmas => ["Lights", "Wreath"],
      :new_years => ["Party Hats"]
    },
    :summer => {
      :fourth_of_july => ["Fireworks", "BBQ"]
    },
    :fall => {
      :thanksgiving => ["Turkey"]
    },
    :spring => {
      :memorial_day => ["BBQ"]
    }
  }
end

def second_supply_for_fourth_of_july(holiday_supplies)
      holiday_supplies[:summer][:fourth_of_july][1]
end


def add_supply_to_winter_holidays(holiday_hash, supply)
    holiday_hash[:winter].each {|k, v| holiday_hash[:winter][k] << supply}
end


def add_supply_to_memorial_day(holiday_hash, supply)
    holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
    holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
    holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, data|
    puts "#{season.to_s.capitalize!}:"
    data.each do |holiday, supply|
      array = holiday.to_s.split("_")
      final_holiday = []
        array.each do |x|
          final_holiday << x.capitalize!
        end
      holiday = final_holiday.join(" ")



      supply = supply.join(", ")
      puts "  #{holiday}: #{supply}"

    end
  end

end

def all_holidays_with_bbq(holiday_hash)
    answer = []
  holiday_hash.each do |season, data|
  data.each do |holiday, value|
    value.each do |supply|
     if supply == "BBQ"
        answer.push(holiday)
      end
    end
  end
end	
answer
end







