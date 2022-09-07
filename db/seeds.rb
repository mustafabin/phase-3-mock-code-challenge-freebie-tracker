puts "Creating companies..."
google = Company.create(name: "Google", founding_year: 1998)
facebook = Company.create(name: "Facebook", founding_year: 2004)
mifflin = Company.create(name: "Dunder Mifflin", founding_year: 2002)
enron = Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
rick = Dev.create(name: "Rick")
morty = Dev.create(name: "Morty")
Dev.create(name: "Mr. Meseeks")
Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here

Freebie.create(item_name: "spinny hat", value:99, dev_id: rick.id, company_id: google.id)
Freebie.create(item_name: "spinny hat", value:99, dev_id: morty.id, company_id: google.id)
Freebie.create(item_name: "spinny hat", value:99, dev_id: morty.id, company_id: google.id)
Freebie.create(item_name: "pants", value:35, dev_id: morty.id, company_id: facebook.id)
Freebie.create(item_name: "shirt", value:19, dev_id: morty.id, company_id: enron.id)
Freebie.create(item_name: "shoes", value:250, dev_id: morty.id, company_id: mifflin.id)

puts "Seeding done!"
