require 'csv'

class MyFirstSelect
  def initialize(filename_db)
    @file = CSV.read(filename_db)
    @column
  end

  def to_s
    return "File: #{@file}"
  end

  def join

  end

  def where(column_name, value)
    @file[0].each_with_index{|data, idx| @column=idx if column_name==data}
    arr = []
    head = @file[0]
    @file[1..-1].map do
      |item|
      new_hash = Hash.new
      if item.include? value
        item.length.times{|num| new_hash[head[num]]=item[num]}
        arr<<new_hash
      end
    end
    print arr
  end
end

# my_csv = MyFirstSelect.new("nba_player_data.csv")
my_csv = MyFirstSelect.new("data.csv")
# puts my_csv
puts my_csv.where("name" , "Alaa Abdelnaby")
