class FiguresController < ApplicationController

    # Read get: Index page
    get '/figures' do
      @figures = Figure.all

      erb :'/figures/index'
    end


    get '/figures/new' do

      erb :'/figures/new'
    end

    post '/figures' do
        @figure = Figure.create(params[:figure])
        @figure.titles  << Title.create(params[:title]) if !params[:title][:name].empty?
        @figure.landmarks << Landmark.create(params[:landmark]) if !params[:landmark][:name].empty? && params[:landmark][:year_completed].empty?
        @figure.save
      redirect to "/figures/#{@figure.id}"
    end

    get '/figures/:id' do
      @figure = Figure.find(params[:id])
      erb :'/figure/show'
    end

    get '/figures/:id/edit' do
      @figure = Figure.find(params[:id])
      erb :'/figures/edit'
    end

    patch '/figures' do
      
      redirect to "/figures/#{@figure.id}"
    end
  end
