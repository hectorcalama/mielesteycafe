class String
    def to_bool
      return true if ['True', '1', 'Si', 'On', 'T'].include? self
      return false if ['False', '0', 'No', 'Off', 'F'].include? self
      return nil
    end
  end