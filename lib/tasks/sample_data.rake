namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "Karthik", email: "mail2karthyk@gmail.com",
                        password: "foobar", password_confirmation: "foobar", address: "Lorem ipsum", qualification: "Lorem ipsum",
                        religion: "Lorem ipsum", marital_status: "Lorem ipsum", occupation: "Lorem ipsum",
                        income: "10,000", disability: "Lorem ipsum", dother: "Lorem ipsum", willing: "Lorem ipsum", wother: "Lorem ipsum",
                        own: "Lorem ipsum", disabled: "Lorem ipsum", divorce: "Lorem ipsum", reasons: "Lorem ipsum", father_name: "Lorem ipsum",
                        father_age: "56", father_status: "Lorem ipsum", mother_name: "Lorem ipsum",mother_age: "Lorem ipsum", mother_status: "Lorem ipsum",
                        parent_address: "Lorem ipsum",parent_phone: "211133 213124213", dob: "Date of Birth", age: "12", subcaste: "Subcaste",
                        passport_date: "Date of Passport", passport_place: "Place of Issue")
    admin.toggle!(:admin)
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password  = "password"
      address = "-#{n+1}, Avenue, -#{n+1} Street"
      qualification = "Graduate"
      religion = "Hindu"
      dob = "12-06-1985"
      age = "25"
      marital_status = "Lorem ipsum"
      occupation = "Lorem ipsum"
      income = "10,000"
      disability = "Lorem ipsum"
      dother = "Lorem ipsum"
      willing = "Lorem ipsum"
      wother = "Lorem ipsum"
      own = "Lorem ipsum"
      disabled = "Lorem ipsum"
      divorce = "Lorem ipsum"
      reasons = "Lorem ipsum"
      father_name = "Lorem ipsum"
      father_age = "56"
      father_status = "Lorem ipsum"
      mother_name = "Lorem ipsum"
      mother_age = "45"
      mother_status = "Lorem ipsum"
      parent_address = "Lorem ipsum"
      parent_phone = "211133 213124213"
      passport_date = "12-12-2012"
      passport_place = "Thanjavur"
      subcaste = "SubCaste"

      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password,
                   address: address,
                   qualification: qualification,
                   religion: religion,
                   marital_status: marital_status,
                   occupation: occupation,
                   income: income,
                   disability: disability,
                   dother: dother,
                   willing: willing,
                   wother: wother,
                   own: own,
                   disabled: disabled,
                   divorce: divorce,
                   reasons: reasons,
                   father_name: father_name,
                   father_age: father_age,
                   father_status: father_status,
                   mother_name: mother_name,
                   mother_age: mother_age,
                   mother_status: mother_status,
                   parent_address: parent_address,
                   parent_phone: parent_phone,
                   age: age,
                   dob: dob,
                   subcaste: subcaste,
                   passport_date: passport_date,
                   passport_place: passport_place
                   )
    end
  end
end