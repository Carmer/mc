ActiveAdmin.register Guitar do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  menu priority: 2, label: "Guitars"
  permit_params :serial, :model, :body_wood, :neck_wood, :fingerboard, :neck_shape,
              :scale_length, :nut_width, :nut_material, :frets, :fret_count, :inlays,
              :inlay_description, :hardware, :bridge, :tuners, :controls, :switch, :knobs,
              :pickups, :body_finish, :neck_finish, :strings, :case

end
