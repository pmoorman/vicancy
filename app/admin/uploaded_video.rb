ActiveAdmin.register UploadedVideo do     


  form do |f|
    f.inputs 'Uploaded Video' do
      f.input :provider_id, label: "Provider ID"
      f.input :aasm_state, label: "State"
      f.input :provider,  
              as: :select,      
              collection: { 
                "YouTube" => "youtube", 
                "Vimeo" => "vimeo",
                "Wistia" => "wistia"
              }
    end
    f.actions
  end

end                                   
