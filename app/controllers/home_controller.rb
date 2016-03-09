class HomeController < ApplicationController
def index
    @home = Order.all
end
def new
end

def create
end

def destroy
end
end