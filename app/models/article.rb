class Article < ActiveRecord::Base

  ORIGIN_VALUES = [["Eigener Artikel",0],["Fremder Artikel",1],["Unbekannte Herkunft",2]]

  validates_presence_of :fromdate
  validates_presence_of :origin, :in => ORIGIN_VALUES.map {|value, key| key}

  def getOriginValue(origin)
    ORIGIN_VALUES.each do | value, key |
      if origin == key
        return value
      end
      return ""
    end
  end
end
