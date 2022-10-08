class HeroPowersController < ApplicationController
    def index
    @hero_powers = HeroPower.all
    end
end
