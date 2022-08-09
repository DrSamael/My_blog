ActiveAdmin.register Article do

  permit_params :title, :text, :status, :published, :mixed

  show do
    attributes_table do
      row :id
      row :title do |article|
        article.title&.html_safe
      end
      row :text do |article|
        article.text&.html_safe
      end
      row :status
      row :published
      row :mixed
      # row :image do |post|
      #   image_tag post.image.middle.url if post.image.present?
      # end
      row :created_at
      row :updated_at
      end
    active_admin_comments
  end

  form do |f|
    f.inputs do
      f.semantic_errors
      f.input :title
      f.input :text, as: :ckeditor
      f.input :status
      f.input :published
      f.input :mixed
    end
    f.actions
  end

end
