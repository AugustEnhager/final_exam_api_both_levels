describe 'POST /api/articles/:article_id/comments', type: :request do
  describe 'successfully' do
    before do
      post '/api/articles/:article_id/comments', params: {
        comment: {
          body: 'I am the comments body.'
        }
      }
    end

    it 'is expected to have response status 201' do
      expect(response).to have_http_status 201
    end

    it 'is expected to return success message' do
      expect(response_json['message']).to eq 'Comment has been added'
    end
  end
end
