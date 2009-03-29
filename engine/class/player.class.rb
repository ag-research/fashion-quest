class Player

  include Uses_Weapons

  attr_accessor :name, :location, :hp, :strength, :dead

  def initialize(params)

    @name     = params[:name]
    @hp       = params[:hp]
    @strength = params[:strength]
    @dead     = params[:dead]
    @location = params[:location]

    @props = params[:props]

  end

  def items

    items = []

    @props.each do |id, prop_data|
      (items << id) if @props[id].location == 'player'
    end

    items
  end

  def carrying(prop = '')

    inventory ||= []

    items.each do |id, prop_data|

      if id == prop
        return true
      end

      inventory << id

    end

    if prop == ''
      inventory
    else
      false
    end
  end

  def has_prop_with_attribute(attribute, value = nil)

    items.each do |id, prop_data|

      if eval('@props[id].' + attribute)
        if value != nil
          if eval('@props[id].' + attribute) == value
            return true
          end
        else
          return true
        end
      end
    end

    false
  end

  def has_lit_item
    has_prop_with_attribute('lit', true)
  end

end
