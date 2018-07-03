class FiguresController < ApplicationController

    # Read get: Index page
    get '/figures' do
      @figures = Figure.all

      erb :'/figures/index'
    end

    # Read get: New figure page
    get '/figures/new' do
      @titles = Title.all.sort_by do |title|
        title.name
      end
      @landmarks = Landmark.all.sort_by do |landmark|
        landmark.name
      end

      erb :'/figures/new'
    end

  end
