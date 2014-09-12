module Api
  module V1
    class RegistriesController < ApplicationController
      def index
        registries = Registry.all
        render json: registries.to_json
      end

      def show
        render json: { message: "Pick it up" }
      end

      def edit
        render json: { message: "Pick it up" }
      end

      def update
        render json: { message: "Pick it up" }
      end

      def destroy
        render json: { message: "Pick it up" }
      end
    end
  end
end
