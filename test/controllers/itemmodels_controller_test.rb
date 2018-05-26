require "test_helper"

class ItemmodelsControllerTest < ActionDispatch::IntegrationTest
  def itemmodel
    @itemmodel ||= itemmodels :one
  end

  def test_index
    get itemmodels_url
    assert_response :success
  end

  def test_new
    get new_itemmodel_url
    assert_response :success
  end

  def test_create
    assert_difference "Itemmodel.count" do
      post itemmodels_url, params: { itemmodel: { category: itemmodel.category, name: itemmodel.name } }
    end

    assert_redirected_to itemmodel_path(Itemmodel.last)
  end

  def test_show
    get itemmodel_url(itemmodel)
    assert_response :success
  end

  def test_edit
    get edit_itemmodel_url(itemmodel)
    assert_response :success
  end

  def test_update
    patch itemmodel_url(itemmodel), params: { itemmodel: { category: itemmodel.category, name: itemmodel.name } }
    assert_redirected_to itemmodel_path(itemmodel)
  end

  def test_destroy
    assert_difference "Itemmodel.count", -1  do
      delete itemmodel_url(itemmodel)
    end

    assert_redirected_to itemmodels_path
  end
end
