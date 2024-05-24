module Hello
  class Component < ViewComponent::Base
    def initialize(name:)
      @name = name
    end
  end
end
