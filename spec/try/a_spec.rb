class A
end

class B
  @data = {}
  class << self
    def create(the_name)
      a = the_name
      @data[the_name] = Class.new(A) do
        @name = the_name
        def self.name
          @name
        end
      end
    end

    def data
      @data
    end
  end
end

describe 'class name in class' do
  specify do
    defined?(B).should be_true
    defined?(B::A).should be_true
    B.create('B1')
    B.data['B1'].name.should == 'B1'
    
    B.create('B2')
    B.data['B2'].name.should == 'B2'
    
    B.data['B1'].name.should == 'B1'
  end
end
