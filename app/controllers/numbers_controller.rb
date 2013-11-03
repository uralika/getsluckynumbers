class NumbersController < ApplicationController

def index

        if current_user
                @numbers = current_user.unumbers
        else
                redirect_to authentications_url
        end

end

def new

        @number = Number.new
        
end

def megan

        @number = Number.new
        
end

def supern

        @number = Number.new
        
end

def fantasyn

        @number = Number.new
        
end

def dailyfourn

        @number = Number.new
        
end

def dailythreen

        @number = Number.new
        
end


def show

        @number = Number.find(params[:id])

end

def create
                
        current_user.unumbers.create(params[:number].permit(:number, :time))
                redirect_to numbers_url

end

def edit
        @number = Number.find(params[:id])

end

def update
        @number = Number.find(params[:id])

        if @number.update_attributes(params[:number].permit(:number, :time))
                redirect_to action: 'show', id: @number
        else
                render 'edit'
        end
    end

def destroy
                Number.find(params[:id]).destroy
                redirect_to numbers_url
end

end