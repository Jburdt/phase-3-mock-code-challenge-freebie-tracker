class Company < ActiveRecord::Base
has_many :freebies
has_many :devs, through: :freebies

  def give_freebie(dev, item_name, value)
    self.freebies.create(dev: dev, item_name: item_name, value: value)
  end

  def self.oldest_company
    self.order(founding_year: :asc).limit(1)
  end

end
