#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#id: integer, reg_date: datetime, total_value: float, reg_type: string, description: string, created_at: datetime, updated_at: datetime
Registry.create([
  {reg_date: "2014-09-01", total_value: 120.2, reg_type: "outcome", description: "geylang"},
  {reg_date: "2014-09-02", total_value: 130.4, reg_type: "outcome", description: "orchard towers"},
  {reg_date: "2014-08-01", total_value:  21.2, reg_type: "outcome", description: "underground"},
  {reg_date: "2014-09-14", total_value: 120.2, reg_type: "outcome", description: "geylang"}
])
