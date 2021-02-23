# frozen_string_literal: true

# controller
class TaskController < ApplicationController
    def input 
    end
    def output 
      n =params[:input].to_i
      del_sum_array = (1..n).to_a.map do |x|
        del_sum = 0
        del = 1
        while del <= x and del*del<=x do
            if x % del == 0
                del_sum = del_sum + del
                if x/del != del 
                    del_sum += x/del
                end
            end
            del+=1
        end
        del_sum-x
    end
    friendly_array = del_sum_array.select.with_index do |x,i|
        if x <= n and x != i+1 and x>3 and i+1 == del_sum_array[x-1]
            [i+1,x]
        end
    end
    @result = friendly_array
      respond_to do |format| 
        format.html 
        format.json do      
              render json:            
               {value: @result}
        end 
      end
    end 
end
