describe 'POST /api/comments', type: :request do
  describe 'successfully' do
    before do
      post '/api/comments', params: {
        comment: {
          body: 'I am the comments body.'
        }
      }
    end

    it { is_expected.to have_http_status 201 }

    it 'is expected to return success message' do
      expect(response_json['message']).to eq 'Comment has been created'
    end
  end
end
