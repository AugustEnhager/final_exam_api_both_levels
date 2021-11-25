require 'rails_helper'

RSpec.describe 'Comments', type: :request do
  describe 'GET /create' do
    it 'is expected to return http status success' do
      get '/api/comments/create'
      expect(response).to have_http_status(:success)
    end
  end
end
