## This class has responsibility for controlling all
## elements of an account
class Account
  attr_reader :name

  def initialize(name)
    @name = name
  end
end
