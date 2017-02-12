class User < ActiveRecord::Base

  def say_name
    "my name is #{self.name}"
  end

  def exist?
    !!self
  end
end

#done
