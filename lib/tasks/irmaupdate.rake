task :irmaupdate => :environment do
  objEmail = CustomersController.new
  objEmail.irma
end