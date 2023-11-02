require "test_helper"

class LesMeilleuresVillesDeGeeksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get les_meilleures_villes_de_geeks_index_url
    assert_response :success
  end
end
