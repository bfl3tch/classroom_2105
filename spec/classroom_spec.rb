require 'rspec'
require './lib/classroom'

describe Classroom do
  context 'Attributes' do
    it 'is a classroom' do
      classroom = Classroom.new('History', 4)
      expect(classroom).to be_an_instance_of(Classroom)
    end

    it 'has a subject' do
      classroom = Classroom.new('History', 4)
      expect(classroom.subject).to eq('History')
    end

    it 'has a capacity' do
      classroom = Classroom.new('History', 4)
      expect(classroom.capacity).to eq 4
    end

    it 'has no students by default' do
      classroom = Classroom.new('History', 4)
      expect(classroom.students).to eq []
    end
  end

  # Iteration 2

  context 'Students' do
    it 'returns a list of students' do
      classroom = Classroom.new('History', 4)
      classroom.add_student('Mike')
      classroom.add_student('Megan')
      classroom.add_student('Bob')

      expect(classroom.students).to eq ['Mike', 'Megan', 'Bob']
    end

    it 'returns a list of uppercased names' do
      classroom = Classroom.new('History', 4)
      classroom.add_student('Mike')
      classroom.add_student('Megan')
      classroom.add_student('Bob')

      expect(classroom.yell_at_students).to eq ['MIKE', 'MEGAN', 'BOB']
    end

    # Iteration 3

    it 'determines if more students than capacity' do
      classroom = Classroom.new('History', 4)
      classroom.add_student('Mike')
      classroom.add_student('Megan')
      classroom.add_student('Bob')
      expect(classroom.over_capacity?).to be false
    end

    it 'determines if more students than capacity' do
      classroom = Classroom.new('History', 4)

      classroom.add_student('Mike')
      classroom.add_student('Megan')
      classroom.add_student('Bob')
      classroom.add_student('Eve')
      classroom.add_student('Alice')

      expect(classroom.over_capacity?).to be true
    end

    #Iteration 4

    it 'determines if students need to be kicked out' do
      classroom = Classroom.new('History', 4)

      classroom.add_student('Mike')
      classroom.add_student('Megan')
      classroom.add_student('Bob')
      classroom.add_student('Eve')
      classroom.add_student('Alice')
      classroom.add_student('James')
      
      expect(classroom.over_capacity?).to be true
    end


end
end
