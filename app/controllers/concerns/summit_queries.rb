module SummitQueries
  extend ActiveSupport::Concern

  included do
    establish_connection(
      :adapter  => ENV["SQL_SERVER"],
      :host     => ENV["IP"],
      :username => ENV["UN"],
      :password => ENV["PW"],
      :timeout => 90000
    )
  end

    module ClassMethods

      #this executes a stored procedure to return all ESP customers for Summit. About 20k records
      def execute_sp_sum
        return find_by_sql ["EXEC [OMNIA_ESUM_P_SUM_CM].[dbo].[zTony_SUM_SummitEBillNotification]"]
      end

      #this executes a stored procedure to return all ESP customers for Pelican Bay. About 4k records
      def execute_sp_pb
        find_by_sql ["EXEC [OMNIA_ESUM_P_SUM_CM].[dbo].[zTony_SUM_SummitEBillNotificationPelicanBay]"] 
      end

      #this executes a stored procedure to return all ESP customers for DAIS. About 1.3k records
      def execute_sp_dais
        find_by_sql ["EXEC [OMNIA_ESUM_P_SUMd_CM].[dbo].[zTony_SUM_DaisEBillNotification]"] 
      end

    end
end