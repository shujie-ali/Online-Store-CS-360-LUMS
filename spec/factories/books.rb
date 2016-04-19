FactoryGirl.define do
    factory :book do
        courseTitle "Macroeconomics"
        courseCode 'MECO 121'
        instructor 'Daud'
        school 'SDSB'
        ourPrice 300
        canotechPrice 450
        numCopies 1
        bookTitle 'Principles of macroeconomics'
        author 'shahroze'
        edition '2'
        dept 'econ'
        comment 'no'
    end
end
