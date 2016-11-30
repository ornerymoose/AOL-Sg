task :maildais => :environment do
  objEmail = CustomersController.new
  objEmail.dais
end