desc "generate data for esp emails"
namespace :esp do
  task :get_emails => :environment  do
    puts "Creating 3 files in the public/ directory: sum_esp.csv, pb_esp.csv, and dais_esp.csv."
    Summit.generate_csvs
    puts "CSV generation completed."
  end
end