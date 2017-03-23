class User < ActiveRecord::Base

  def say_name
    "my name is #{self.name}2"
  end
end
