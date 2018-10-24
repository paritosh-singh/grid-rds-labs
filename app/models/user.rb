class User

  @@user_session_hash = {}


  def self.find_user_by_session session_id
    return @@user_session_hash[session_id]
  end


  def self.create_new_user_session 
    session_id = SecureRandom.hex
    @@user_session_hash[session_id] = {}
  end

end