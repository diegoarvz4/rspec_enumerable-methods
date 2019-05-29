module Enumerable
    def my_each
        return self unless block_given?
        i = 0
        while i < self.length
            yield(self[i])
            i+= 1
        end 
        self
    end

    def my_each_with_index
        return self unless block_given?
        i=0
        while i < self.length
            yield(self[i],i)
            i+= 1
        end 
        self
    end 

    def my_select
        return self unless block_given?
        i=0
        selecion = []
        while i < self.length
            selecion << self[i] if yield(self[i])
            i+= 1
        end 
        selecion
    end

    def my_all?
        return self unless block_given?
        i=0
        while i < self.length
            return false unless yield(self[i])
            i+=1
        end 
        true  
    end 

    def my_any?
        return self unless block_given?
        i=0
        while i < self.length
            return true if yield(self[i])
            i+=1
        end 
        false  
    end

    def my_count
        return self unless block_given?
        i=0
        count = 0
        while i < self.length
            count+=1 if yield(self[i])
            i+=1
        end 
        count  
    end

    def my_map
        return self unless block_given?
        i=0
        count = 0
        while i < self.length
            self[i] = yield(self[i])
            i+=1
        end 
        self  
    end

    def my_inject
        return self unless block_given?
        i=0
        sum = 0
        while i < self.length
            sum = yield(sum, self[i])
            i+=1
        end 
        sum  
    end

end