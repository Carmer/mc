ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
      span class: "blank_slate" do
        span "Welcome to the the MidCoast Build Steps Dashboard"
        small "hopefully this page can be utilized to provide a pulse of the build process"
        small "highly customizable so we can change this all around"
      end
    end

    # Here is an example of a simple dashboard with columns and panels.
    #
    columns do
      column do
        panel "Builds In Progress" do
          table_for Guitar.in_progress.first(5) do
            column(:model) { |guitar| link_to(guitar.model, admin_guitar_path(guitar)) }
            column "Start Date", :created_at
            column "Days in progress", :days_in_progress
            column "Current Stage",:current_stage
          end
        end
      end

      column do
        panel "Build Stats / Summary" do
          para "Builds in progress: 1"
          para "Builds in completed (30 days): 1"
          para "Builds in completed (60 days): 1"
          para "Builds in completed (90 days): 1"
          para "Tonewood supply: LOW"
          para "Builds in Step 1: 0"
          para "Builds in Step 2: 0"
          para "Builds in Step 3: 0"
          para "Builds in Step 4: 0"
          para "Builds in Step 5: 0"
          para "Builds in Step 6: 1"
          para "Builds in Step 7: 0"
        end
      end
    end
  end # content
end
