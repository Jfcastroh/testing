require "test_helper"

class ItemmodelTest < ActiveSupport::TestCase
  def itemmodel
    @itemmodel ||= Itemmodel.new
  end

  def test_valid
    assert itemmodel.valid?
  end
end
