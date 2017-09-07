module CustomersHelper
  #pelican bay
  def send_pb_email(csv_file)
    CSV.foreach("#{Rails.root}/public/#{csv_file}") do |customer|
      UserNotifier.send_pb_email(customer).deliver_now
      puts "#{$.}, sent to #{customer}"
    end
  end

  #summit
  def send_summit_email(csv_file)
    CSV.foreach("#{Rails.root}/public/#{csv_file}") do |customer|
      UserNotifier.send_non_pb_email(customer).deliver_now
      puts "#{$.}, sent to #{customer}"
    end
  end

  #dais
  def send_dais_email(csv_file)
    CSV.foreach("#{Rails.root}/public/#{csv_file}") do |customer|
      UserNotifier.send_dais_email(customer).deliver_now
      puts "#{$.}, sent to #{customer}"
    end
  end

  #irmaupdate
  def send_irma_email(csv_file)
    CSV.foreach("#{Rails.root}/public/#{csv_file}") do |customer|
      UserNotifier.send_irma_email(customer).deliver_now
      puts "#{$.}, sent to #{customer}"
    end
  end
end
