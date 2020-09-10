require 'csv'

class MyFirstSelectWithJoin
  def initialize(filename_db)
    @file_name = filename_db
    @file = CSV.read(filename_db)
    @column
    @table=[]
  end

  def to_s
    return "File: #{@file}"
  end

  def join(column_on_db_a, filename_db_b, column_on_db_b)
    column_on_db_b = column_on_db_b.capitalize()
    column=0
    CSV.read(filename_db_b)[0].each_with_index{|item, idx| column+=idx if item==column_on_db_b}
    @table = CSV.read(filename_db_b)
    joined_table = []
    table_header = @table[0]+CSV.parse(File.read(@file_name))[0]
    @table=@table[1..-1]
    collected_data = []
    @table.each_with_index do
      |row, index|
      @file[1..-1].each do
        |data|
        if data.include? row[column]
          collected_data<<row+data
        end
      end
    end
    collected_data.each_with_index do
      |data, index|
      player_data_hash = Hash.new
      table_header.each_with_index{|item, idx| player_data_hash[item] = data[idx] }
      joined_table<<player_data_hash
    end
    print joined_table
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

# join_obj = MyFirstSelectWithJoin.new("data.csv")
join_obj = MyFirstSelectWithJoin.new("nba_player_data.csv")
join_obj.join("name", "nba_players.csv", "player")
join_obj.where("name", "Fred VanVleet")
# join_obj.join("name", "data_two.csv", "player")
# puts join_obj
