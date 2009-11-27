Factory.define(:user) do |f|
  f.username "sam"
  f.email "sam@example.com"
  f.password "password"
  f.password_confirmation { |u| u.password}
end
