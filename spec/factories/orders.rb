
FactoryGirl.define do
    factory :order do
        bookIDs 1
        customerID 12
        status 'pending'
        dateOrdered Date.today.to_s
        quantities 1
    end
end
