class CustomersController < ApplicationController
  include CustomersHelper

  def home
  end

  def pb
    send_pb_email("pb_esp.csv")
  end

  def non_pb
    send_summit_email("sum_esp.csv")
  end

  def dais
    send_dais_email("dais_esp.csv")
  end

  def irma
     send_irma_email("irma_list.csv") 
  end
  
end
