def index
  @responses = ::Git::Repository.new(current_user.git_token).run
rescue StandardError => e
    flash[:danger] = 'Git API Error: #{e.message}'
end
