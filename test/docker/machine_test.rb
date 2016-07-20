require 'test_helper'

module Docker
  class MachineTest < Minitest::Test
    def test_that_it_has_a_version_number
      refute_nil ::Docker::Machine::VERSION
    end

    def test_it_does_something_useful
      assert false
    end
  end
end
