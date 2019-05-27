ActiveAdmin.register Wood do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  menu priority: 3, label: "Woods"
  permit_params :nickname,  :species, :origin, :grade, :density, :speed_of_sound,
                  :modulus_of_elasticity, :radiation_coefficient

end
