require "application_system_test_case"

class WoodsTest < ApplicationSystemTestCase
  setup do
    @wood = woods(:one)
  end

  test "visiting the index" do
    visit woods_url
    assert_selector "h1", text: "Woods"
  end

  test "creating a Wood" do
    visit woods_url
    click_on "New Wood"

    fill_in "Desity", with: @wood.desity
    fill_in "Grade", with: @wood.grade
    fill_in "Modulus of elasticity", with: @wood.modulus_of_elasticity
    fill_in "Nickname", with: @wood.nickname
    fill_in "Origin", with: @wood.origin
    fill_in "Radiation coefficient", with: @wood.radiation_coefficient
    fill_in "Speed of sound", with: @wood.speed_of_sound
    click_on "Create Wood"

    assert_text "Wood was successfully created"
    click_on "Back"
  end

  test "updating a Wood" do
    visit woods_url
    click_on "Edit", match: :first

    fill_in "Desity", with: @wood.desity
    fill_in "Grade", with: @wood.grade
    fill_in "Modulus of elasticity", with: @wood.modulus_of_elasticity
    fill_in "Nickname", with: @wood.nickname
    fill_in "Origin", with: @wood.origin
    fill_in "Radiation coefficient", with: @wood.radiation_coefficient
    fill_in "Speed of sound", with: @wood.speed_of_sound
    click_on "Update Wood"

    assert_text "Wood was successfully updated"
    click_on "Back"
  end

  test "destroying a Wood" do
    visit woods_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Wood was successfully destroyed"
  end
end
