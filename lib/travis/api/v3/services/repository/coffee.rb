module Travis::API::V3
  class Services::Repository::Coffee < Service
    def run!
      raise TeaPotError
    end
  end
end
