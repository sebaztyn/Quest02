  class MyRedis
    def initialize
      @my_hash={
        'first_name'=>"Chima",
        'last_name'=>"Ekeneme",
      }
    end

    def my_get(key)
      return @my_hash[key]
    end

    def my_set(key, value)
      return @my_hash[key]=value
    end

    def to_s
      "Hash: #{@my_hash}"
    end

    def my_mset(*arr)
      arr.each do
        |item|
        @my_hash[item[0]]=item[1]
      end
    end

    def my_mget(arr)
      inner_arr=[]
      arr.each do
        |item|
        inner_arr<<@my_hash[item]
      end
      print inner_arr
    end

    def my_exists(key)
      puts @my_hash.has_key?(key)
    end

    def my_del(arr)
      arr.each{|item| @my_hash.delete(item)}
    end

    def my_rename(key, new_key)
      @my_hash[new_key]=@my_hash.delete(key)
    end

    def backup
      file=File
      unless file.file?("my_dump.rdb")
        my_dump_file = file.new("my_dump.rdb", "w")
        my_dump_file.write(@my_hash.to_a)
      end
    end

    def restore
      file = File
      if file.file?("my_dump.rdb")
        my_dump_file = file.read("my_dump.rdb")
        my_dump_file=eval(my_dump_file)
        # print my_dump_file.instance_of? Hash
      else
        puts "File does not exist"
      end
    end
  end


  my_redis_instance= MyRedis.new
  my_redis_instance.my_set('a', 3)
  p my_redis_instance.my_get('a')
  my_redis_instance.my_mset(['a', 3], ['b', 8], [3, 'i'])
  my_redis_instance.my_rename('a', 'z')
  my_redis_instance.my_exists('z')
  puts my_redis_instance
  my_redis_instance.my_mget(['z', 'b', 3])
  my_redis_instance.my_del(['a', 3])
  my_redis_instance.my_get('a')
  my_redis_instance.my_exists(8)
  my_redis_instance.my_exists('a')
  my_redis_instance.backup()
  my_redis_instance.restore()
