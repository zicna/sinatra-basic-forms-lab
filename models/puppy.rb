# since we are not using ActiveRecord in this lab, you write a bare Ruby model (like you did in MOD1)
class Puppy
    #attr_reader 
    #attr_accessor :age, :name, :breed

    # def initialize(name:, breed:, age:)
    #     @name = name
    #     @breed = breed
    #     @age = age
    # end

    def initialize(hash)
        hash.each do |key, value|
            self.class.attr_accessor(key)
            self.send(("#{key}="),value)
        end
    end
end