module Figure
  module Errors
    class ApplicationRequired < StandardError
    end

    class UnknownApplication < StandardError
    end

    class UnknownFilename < StandardError
    end
  end
end
