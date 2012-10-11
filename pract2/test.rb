require "radio"
require "test/unit"

class TestRadio < Test::Unit::TestCase

   def test_simple
   	assert_in_delta(12,Radio.new('75.36'))
   end
    
   def test_typecheck
   	assert_raise( RuntimeError ) { Radio.new('a') }
   end
   def test_igualdad
   	assert_equal(12,75.36)
   end

end
