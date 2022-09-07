class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies
    def received_one(item_name)
        self.freebies.find_by(item_name: item_name) ? true :  false
    end
    def give_away(dev,freebie)
        if self.id == freebie.dev.id
            freebie.dev_id = dev.id
            freebie.save
            "Gave away my #{freebie.item_name} to #{dev.name}"
        else
            "I cant give away somthing that isnt mine"
        end
    end
end
