require "application_system_test_case"

class PublicacionsTest < ApplicationSystemTestCase
  setup do
    @publicacion = publicacions(:one)
  end

  test "visiting the index" do
    visit publicacions_url
    assert_selector "h1", text: "Publicacions"
  end

  test "should create publicacion" do
    visit publicacions_url
    click_on "New publicacion"

    fill_in "Titulo", with: @publicacion.titulo
    click_on "Create Publicacion"

    assert_text "Publicacion was successfully created"
    click_on "Back"
  end

  test "should update Publicacion" do
    visit publicacion_url(@publicacion)
    click_on "Edit this publicacion", match: :first

    fill_in "Titulo", with: @publicacion.titulo
    click_on "Update Publicacion"

    assert_text "Publicacion was successfully updated"
    click_on "Back"
  end

  test "should destroy Publicacion" do
    visit publicacion_url(@publicacion)
    click_on "Destroy this publicacion", match: :first

    assert_text "Publicacion was successfully destroyed"
  end
end
