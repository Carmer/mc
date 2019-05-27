require "application_system_test_case"

class GuitarsTest < ApplicationSystemTestCase
  setup do
    @guitar = guitars(:one)
  end

  test "visiting the index" do
    visit guitars_url
    assert_selector "h1", text: "Guitars"
  end

  test "creating a Guitar" do
    visit guitars_url
    click_on "New Guitar"

    fill_in "Body finish", with: @guitar.body_finish
    fill_in "Body wood", with: @guitar.body_wood
    fill_in "Bridge", with: @guitar.bridge
    fill_in "Case", with: @guitar.case
    fill_in "Controls", with: @guitar.controls
    fill_in "Fingerboard", with: @guitar.fingerboard
    fill_in "Fret count", with: @guitar.fret_count
    fill_in "Frets", with: @guitar.frets
    fill_in "Hardware", with: @guitar.hardware
    fill_in "Inlay description", with: @guitar.inlay_description
    fill_in "Inlays", with: @guitar.inlays
    fill_in "Knobs", with: @guitar.knobs
    fill_in "Model", with: @guitar.model
    fill_in "Neck finish", with: @guitar.neck_finish
    fill_in "Neck shape", with: @guitar.neck_shape
    fill_in "Neck wood", with: @guitar.neck_wood
    fill_in "Nut material", with: @guitar.nut_material
    fill_in "Nut width", with: @guitar.nut_width
    fill_in "Pickups", with: @guitar.pickups
    fill_in "Scale length", with: @guitar.scale_length
    fill_in "Serial", with: @guitar.serial
    fill_in "Strings", with: @guitar.strings
    fill_in "Switch", with: @guitar.switch
    fill_in "Tuners", with: @guitar.tuners
    click_on "Create Guitar"

    assert_text "Guitar was successfully created"
    click_on "Back"
  end

  test "updating a Guitar" do
    visit guitars_url
    click_on "Edit", match: :first

    fill_in "Body finish", with: @guitar.body_finish
    fill_in "Body wood", with: @guitar.body_wood
    fill_in "Bridge", with: @guitar.bridge
    fill_in "Case", with: @guitar.case
    fill_in "Controls", with: @guitar.controls
    fill_in "Fingerboard", with: @guitar.fingerboard
    fill_in "Fret count", with: @guitar.fret_count
    fill_in "Frets", with: @guitar.frets
    fill_in "Hardware", with: @guitar.hardware
    fill_in "Inlay description", with: @guitar.inlay_description
    fill_in "Inlays", with: @guitar.inlays
    fill_in "Knobs", with: @guitar.knobs
    fill_in "Model", with: @guitar.model
    fill_in "Neck finish", with: @guitar.neck_finish
    fill_in "Neck shape", with: @guitar.neck_shape
    fill_in "Neck wood", with: @guitar.neck_wood
    fill_in "Nut material", with: @guitar.nut_material
    fill_in "Nut width", with: @guitar.nut_width
    fill_in "Pickups", with: @guitar.pickups
    fill_in "Scale length", with: @guitar.scale_length
    fill_in "Serial", with: @guitar.serial
    fill_in "Strings", with: @guitar.strings
    fill_in "Switch", with: @guitar.switch
    fill_in "Tuners", with: @guitar.tuners
    click_on "Update Guitar"

    assert_text "Guitar was successfully updated"
    click_on "Back"
  end

  test "destroying a Guitar" do
    visit guitars_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Guitar was successfully destroyed"
  end
end
