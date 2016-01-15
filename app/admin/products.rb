ActiveAdmin.register Product do
	index do
		column :id
		column :name
		column :model
		column :created_at

		column :comments do |comment|
			link_to 'comments', admin_product_comments_path(comment)
		end


		default_actions
	end
end
