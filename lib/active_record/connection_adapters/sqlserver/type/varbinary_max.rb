module ActiveRecord
  module ConnectionAdapters
    module SQLServer
      module Type
        class VarbinaryMax < Varbinary

          def initialize(**args)
            super
            @limit = 2_147_483_647
          end

          def type
            :binary
          end

          def sqlserver_type
            'varbinary(max)'.freeze
          end

        end
      end
    end
  end
end
