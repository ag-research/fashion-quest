module Uses_Weapons

  attr_accessor :name, :hp, :strength, :dead

  def determine_best_weapon

    best_weapon          = ''
    best_weapon_strength = 0

    @props.each do |prop_key, prop_data|
      if @props[prop_key].location == name
        if @props[prop_key].attack_strength
          if @props[prop_key].attack_strength > best_weapon_strength
            best_weapon = prop_key
            best_weapon_strength = @props[prop_key].attack_strength
          end
        end
      end
    end

    best_weapon
  end

end