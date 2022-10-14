require "application_system_test_case"

class EtiquetaTest < ApplicationSystemTestCase
  setup do
    @etiquetum = etiqueta(:one)
  end

  test "visiting the index" do
    visit etiqueta_url
    assert_selector "h1", text: "Etiqueta"
  end

  test "should create etiquetum" do
    visit etiqueta_url
    click_on "New etiquetum"

    fill_in "Nombre", with: @etiquetum.nombre
    fill_in "Publicacion", with: @etiquetum.publicacion_id
    click_on "Create Etiquetum"

    assert_text "Etiquetum was successfully created"
    click_on "Back"
  end

  test "should update Etiquetum" do
    visit etiquetum_url(@etiquetum)
    click_on "Edit this etiquetum", match: :first

    fill_in "Nombre", with: @etiquetum.nombre
    fill_in "Publicacion", with: @etiquetum.publicacion_id
    click_on "Update Etiquetum"

    assert_text "Etiquetum was successfully updated"
    click_on "Back"
  end

  test "should destroy Etiquetum" do
    visit etiquetum_url(@etiquetum)
    click_on "Destroy this etiquetum", match: :first

    assert_text "Etiquetum was successfully destroyed"
  end
end
