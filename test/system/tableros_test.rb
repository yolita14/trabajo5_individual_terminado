require "application_system_test_case"

class TablerosTest < ApplicationSystemTestCase
  setup do
    @tablero = tableros(:one)
  end

  test "visiting the index" do
    visit tableros_url
    assert_selector "h1", text: "Tableros"
  end

  test "should create tablero" do
    visit tableros_url
    click_on "New tablero"

    fill_in "Fecha", with: @tablero.fecha
    fill_in "Publicacion", with: @tablero.publicacion_id
    fill_in "Usuario", with: @tablero.usuario_id
    click_on "Create Tablero"

    assert_text "Tablero was successfully created"
    click_on "Back"
  end

  test "should update Tablero" do
    visit tablero_url(@tablero)
    click_on "Edit this tablero", match: :first

    fill_in "Fecha", with: @tablero.fecha
    fill_in "Publicacion", with: @tablero.publicacion_id
    fill_in "Usuario", with: @tablero.usuario_id
    click_on "Update Tablero"

    assert_text "Tablero was successfully updated"
    click_on "Back"
  end

  test "should destroy Tablero" do
    visit tablero_url(@tablero)
    click_on "Destroy this tablero", match: :first

    assert_text "Tablero was successfully destroyed"
  end
end
