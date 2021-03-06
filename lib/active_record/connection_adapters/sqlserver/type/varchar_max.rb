module ActiveRecord
  module ConnectionAdapters
    module SQLServer
      module Type
        class VarcharMax < Varchar

          def initialize(**args)
            super
            @limit = 2_147_483_647
          end

          def type
            :varchar_max
          end

          def sqlserver_type
            'varchar(max)'.freeze
          end

        end
      end
    end
  end
end
