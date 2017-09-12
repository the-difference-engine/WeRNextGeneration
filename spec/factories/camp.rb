FactoryGirl.define do 
  factory :camp do
    title 'Creativity Camp'
    description 'Beginning coding camp for kids'
    max_students '10'
    min_students '5'
    address '215 W. Main Street'
    city 'Washington'
    state 'D.C.'
    zip '20003'
    phone '123-456-7890'
    employee_id '2'
    start_time '9:00'
    end_time '11:00'
    start_date 'November 8'
    end_date 'November 8'
    price '0.00'
  end
end