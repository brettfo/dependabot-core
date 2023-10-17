# typed: true
# frozen_string_literal: true

module Dependabot
  module EmptyReturn
    class UpdateChecker < Dependabot::UpdateCheckers::Base
      def can_update?(_requirements_to_unlock)
        false
      end
    end
  end
end

Dependabot::UpdateCheckers.register("emptyreturn", Dependabot::EmptyReturn::UpdateChecker)

module Dependabot
  module EmptyReturn
    class FileParser < Dependabot::FileParsers::Base
    end
  end
end

Dependabot::FileParsers.register("emptyreturm", Dependabot::EmptyReturn::FileParser)
