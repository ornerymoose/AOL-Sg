class Summit < ActiveRecord::Base
  include SummitQueries

  def self.generate_csvs
    dais_records  = Summit.execute_sp_dais
    pb_records    = Summit.execute_sp_pb
    sum_records   = Summit.execute_sp_sum

    sum_file      = "#{Rails.root}/public/sum_esp.csv"
    pb_file       = "#{Rails.root}/public/pb_esp.csv"
    dais_file     = "#{Rails.root}/public/dais_esp.csv"

    write_to_csv(sum_file, sum_records)
    write_to_csv(pb_file, pb_records)
    write_to_csv(dais_file, dais_records)

  end

  private

  def self.write_to_csv(file, records)
    CSV.open(file, 'w+') do |csv|
      records.each do |r|
        csv << [r.attributes['Email'].strip] #strip removes unncessary whitespace from each record
      end
    end
  end
 
end