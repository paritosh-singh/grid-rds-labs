class User

  @@user_session_hash = {}

  attr_reader :session_id, :current_color

  def initialize session_id
    @session_id = session_id
    @current_color = Pallete::DEFAULT_COLOR
  end

  def self.find_user_by_session session_id
    return @@user_session_hash[session_id]
  end


  def self.create_new_user_session 
    session_id = SecureRandom.hex
    @@user_session_hash[session_id] = User.new(session_id)
    return @@user_session_hash[session_id]
  end


  def update_board row, column

    Board.set_value row, column, @current_color, @session_id
  end

end