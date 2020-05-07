namespace 'generate' do
  desc 'Generate base categories'
  task base_categories: :environment do
    Category::BASE_CATEGORIES.each do |name|
      Category.find_or_create_by(name: name)
    end
  end
end
