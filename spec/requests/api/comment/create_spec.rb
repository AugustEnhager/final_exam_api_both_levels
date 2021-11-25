describe 'POST /api/articles/:article_id/comments', type: :request do
  let(:article) { create(:article) }

  describe 'successfully' do
    before do
      post '/api/articles/:article_id/comments', params: {
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
