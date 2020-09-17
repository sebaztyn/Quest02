require 'json'
require 'CSV'

class User
  def initialize
    @csv_data = CSV.read("db.raw", headers: true)
  end
  def all
    result = @csv_data.map{|row| row.to_h}
    return result
  end

  def get(user_id)
    data = nil
    CSV.open("db.raw", headers: true).read.map{|row| data = row.to_h if row[0].to_i == user_id }
    return data
  end

  def create(user_info)
    last_id=1
    last_id = all().last["id"].to_i+1 if all().size > 0
    user_info.insert(0, last_id)
    CSV.open("db.raw", "a+"){|row| row<<user_info}
    puts last_id
  end

  def update(user_id, attribute, value)
    user_data  = get(user_id)
    retrieved = user_data[attribute] if user_data.class.to_s=="Hash"
    user_data[attribute] = value if user_data.class.to_s=="Hash"
    header=[]
    data = CSV.read("db.raw").each_with_index{|row, idx| header=row if idx == 0}
    print header, ">>>>>>>>>header<<<<<<<<<<<<<<<<<<<"
    print data, ">>>>>>>>>data<<<<<<<<<<<<<<<<<<<"
    CSV.open("db.raw", "w"){|csv| data.map{|row|csv<<row.to_csv}}
  end

  def destroy(user_id)

  end
end

newuser = User.new;
# puts newuser.get_user
# puts newuser.all

chima = ["Chima","Ekeneme",31,"test@gmail.com","password"]
doe = "1, Samuel, Doe, 22, sam@doe.com, password"
newuser.create(chima)
newuser.update(5, "first_name", "Sebby")
# print newuser.get(5)
# newuser.all()
# newuser.create(chima)
# newuser.create("chima")
# puts newuser
