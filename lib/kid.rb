require_relative './dance_module'
require_relative './meta_dancing_module'
module FancyDance
  module InstanceMethods
    def shake_body
      puts "Shaking body!"
    end
  end

  module ClassMethods
    def metadata
      puts "This module provides metadata about dancing."
    end
  end
end

class Kid
  include FancyDance::InstanceMethods
  extend FancyDance::ClassMethods

  attr_reader :name

  def initialize(name)
    @name = name
  end
end

