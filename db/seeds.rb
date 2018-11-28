unless Rails.env.production?
  Spree::User.find_or_initialize_by(email: 'admin@example.com') do |user|
    user.password = 'securepassword'
    user.save
    user.spree_roles.create(name: 'admin')
  end
end
