require "sequel"
require "sequel/adapters/oracle"

Sequel::Database::ADAPTERS += [:oracle_enhanced]

module Sequel
  module OracleEnhanced
    class Database < ::Sequel::Oracle::Database
      set_adapter_scheme :oracle_enhanced
    end
  end
end

Sequel.__send__(:def_adapter_method, *Sequel::Database::ADAPTERS)
