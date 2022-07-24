class Computer
    @@users = Hash.new
    def initialize(username, password)
      @username = username
      @password = password
      @@users[username] = password
      @files = Hash.new
    end
  
    def create(filename)
      time = Time.now
      @files[filename] = time
      puts "Your new file was been created"
    end
  
    def self.get_users
      return @@users
    end
  end
  
  my_computer = Computer.new("Esteban", "12345678")