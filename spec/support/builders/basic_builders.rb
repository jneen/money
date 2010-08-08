Fixjour do
  define_builder LineItem do |klass, overrides|
    klass.new(
      :description => Faker::Lorem.sentence,
      :receipt => new_receipt,
      :amount => Random.rand * 1000
    )
  end

  define_builder Pool do |klass, overrides|
    klass.new(
      :slug => Faker::Lorem.sentence.split(' ').first.downcase,
      :name => Faker::Lorem.sentence.split(' ').first.capitalize
    )
  end

  define_builder PoolMembership do |klass, overrides|
    klass.new(
      :pool => new_pool,
      :member => new_user,
      :stake => 1 + rand(30)
    )
  end

  define_builder Receipt do |klass, overrides|
    klass.new(
      :spent_at => 3.days.ago.to_date,
      :pool => new_pool,
      :spender => new_user
    )
  end

  define_builder User do |klass, overrides|
    klass.new(
      :name => Faker::Name.name,
      :email => Faker::Internet.email,
      :fbuid => 10**5 + rand(10**6)
    )
  end
end
